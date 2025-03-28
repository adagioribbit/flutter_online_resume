import 'dart:async';
import 'dart:math' show max;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dossier_de_competences_web/widgets/draft_presentation.dart'
    show DraftPresentation;
import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../../helpers/global_streams.dart';
import '../../helpers/utils.dart' show Utils;
import '../../helpers/globals.dart'
    show
        GlobalKeyRing,
        ToolbarMenu,
        carouselController,
        carouselIndex,
        educationContentScrollController,
        workExperienceContentScrollController;
import '../../helpers/colorchart.dart'
    show
        ToolbarButtonPalette,
        educationButtonPalette,
        skillsSetButtonPalette,
        workExperienceButtonPalette;
import 'bubble_hailer.dart';
import 'content/education/data/bubble_content_education.dart'
    show buildEducationBubbleContent;
import 'content/work_experience/data/bubble_content_workexperience.dart'
    show buildWorkExperienceBubbleContent;
import 'content/skills/skill_sets_content.dart';

class BubbleCarousel extends StatefulWidget {
  static const Duration animationDuration = Duration(milliseconds: 300);
  static const double bubbleMaxWidth = 700.0;

  const BubbleCarousel({super.key});

  @override
  State<BubbleCarousel> createState() => _BubbleCarouselState();
}

class _BubbleCarouselState extends State<BubbleCarousel>
    with TickerProviderStateMixin {
  CustomPaint bubbleHailer = CustomPaint(
    painter: BubbleHailerPainter(),
  );

  late List<Widget> carouselContent;
  late ToolbarMenu preButton, originButton;
  late EdgeInsets marginBubble;
  late double animatedBubbleMargin,
      bubbleOffsetX,
      bubbleHeight,
      bubbleWidth,
      hailerSize;
  late Offset bubbleOffset, bubbleOrigin, hailerOffset;
  late bool isPortrait;
  late Size screenSize, containerSize;
  late StreamSubscription subscription;
  late AnimationController _animationController;
  late Animation _animationInflate;
  late ToolbarButtonPalette navigationButtonPalette;

  @override
  void initState() {
    super.initState();
    carouselIndex.value = 0;
    bubbleOffsetX = 0.0;

    _animationController = AnimationController(
        vsync: this, duration: BubbleCarousel.animationDuration);
    _animationInflate = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((currStatus) {
        if (_animationController.isCompleted) carouselContent = [];

        if (_animationController.isForwardOrCompleted) {
          globalStreams.triggerToggleAppBar(true);
          if (originButton == ToolbarMenu.btnEducation) {
            navigationButtonPalette = educationButtonPalette;
            carouselContent = buildEducationBubbleContent(context);
          } else if (originButton == ToolbarMenu.btnWorkExperience) {
            navigationButtonPalette = workExperienceButtonPalette;
            carouselContent = buildWorkExperienceBubbleContent(context);
          } else if (originButton == ToolbarMenu.btnSkillsSet) {
            navigationButtonPalette = skillsSetButtonPalette;
            carouselContent = [contentSkillSets];
          }
        } else if (_animationController.isDismissed) {
          globalStreams.triggerToggleAppBar(false);
        }
      });

    screenSize = Utils.getScreenSize();
    isPortrait = Utils.isPortraitOrientation();

    containerSize = Size(
        screenSize.width,
        (screenSize.height -
            Constants.TOOLBAR_HEIGHT -
            Constants.APPBAR_HEIGHT));

    carouselContent = [];

    hailerSize = (Utils.isPhoneView() || Utils.isFoldableView() ? 20.0 : 50.0) *
        _animationInflate.value;
    hailerOffset = Offset((containerSize.width / 2.0) - (hailerSize / 2.0),
        containerSize.height - hailerSize);
    preButton = originButton = ToolbarMenu.none;
    bubbleOrigin = Offset.zero;
    navigationButtonPalette = educationButtonPalette;

    subscription = globalStreams.eventBubbleCarousel.listen((value) async {
      if (value != null) {
        toggleInflation(value).then((v) {
          if (value != ToolbarMenu.btnSkillsSet) {
            carouselController.jumpToPage(carouselIndex.value);
          }
        });
      } else {
        setState(() {
          updateBubbleOrigin();
        });
      }
    });
  }

  @override
  void didChangeDependencies() {
    isPortrait = Utils.isPortraitOrientation();

    setState(() {
      screenSize = Utils.getContextSize(context);

      containerSize = Size(
          screenSize.width,
          (screenSize.height -
              Constants.TOOLBAR_HEIGHT -
              Constants.APPBAR_HEIGHT));
    });
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _animationController.dispose();
    subscription.cancel();
    super.dispose();
  }

  void updateBubbleOrigin() {
    if (originButton != ToolbarMenu.none) {
      bubbleOrigin = (GlobalKeyRing.toolbar[originButton]?.currentContext
              ?.findRenderObject() as RenderBox)
          .localToGlobal(Offset(
              Constants.TOOLBAR_HEIGHT * 0.3, Constants.TOOLBAR_HEIGHT * 0.8));
    }
  }

  Future<void> toggleInflation(ToolbarMenu? value) async {
    originButton = value!;
    // On tap outside
    if (originButton == ToolbarMenu.none) {
      originButton = preButton;
      await _animationController.reverse();
    }
    // On tap toolbarButton
    else {
      originButton = value;
      bool isMenuSwitch = preButton != originButton;

      // Rewind carousel on menu change towards Education or WorkExperience
      if (isMenuSwitch && preButton != ToolbarMenu.btnSkillsSet) {
        carouselIndex.value = 0;
      }

      // If bubble is opened
      if (_animationController.isCompleted) {
        await _animationController.reverse().then((value) async {
          if (isMenuSwitch) {
            updateBubbleOrigin();
            preButton = originButton;
            _animationController.forward();
          }
        });
      } else {
        if (isMenuSwitch) {
          updateBubbleOrigin();
          preButton = originButton;
        }
        await _animationController.forward();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isPortraitPhoneScreen = Utils.isPortraitContext(context) &&
        (Utils.isPhoneScreen(context) || Utils.isFoldable(context));
    double screenRatio = Utils.getWidthOverHeightRatio();
    double animatedOffsetTop =
        Constants.APPBAR_HEIGHT * _animationInflate.value;

    int bubbleShadowOpacity = (76 * _animationInflate.value).round();
    hailerSize = (Utils.isPhoneScreen(context) || Utils.isFoldable(context)
            ? 20.0
            : 50.0) *
        _animationInflate.value;

    hailerOffset = Offset(bubbleOrigin.dx - (hailerSize / 2.0),
        bubbleOrigin.dy - hailerSize - Constants.TOOLBAR_HEIGHT);

    animatedBubbleMargin = 10.0 * _animationInflate.value;
    marginBubble = EdgeInsets.fromLTRB(
        animatedBubbleMargin, animatedBubbleMargin, animatedBubbleMargin, 0);
    bubbleHeight = (containerSize.height * _animationInflate.value) -
        hailerSize +
        animatedOffsetTop -
        marginBubble.vertical;
    bubbleWidth = ((containerSize.width * _animationInflate.value) -
            marginBubble.horizontal)
        .clamp(50, BubbleCarousel.bubbleMaxWidth);

    if (screenSize.width > BubbleCarousel.bubbleMaxWidth) {
      if (originButton != preButton &&
          !_animationController.isForwardOrCompleted) {
        if (preButton == ToolbarMenu.btnSkillsSet) {
          bubbleOffsetX = (bubbleOrigin.dx - bubbleWidth / 2);
        } else if (preButton == ToolbarMenu.btnWorkExperience) {
          bubbleOffsetX =
              screenSize.width - bubbleWidth - marginBubble.horizontal;
        } else if (preButton == ToolbarMenu.btnEducation) {
          bubbleOffsetX = max(0, (bubbleOrigin.dx - bubbleWidth / 3));
        }
      } else {
        if (originButton == ToolbarMenu.btnSkillsSet) {
          bubbleOffsetX = (bubbleOrigin.dx - bubbleWidth / 2);
        } else if (originButton == ToolbarMenu.btnWorkExperience) {
          bubbleOffsetX =
              screenSize.width - bubbleWidth - marginBubble.horizontal;
        } else if (originButton == ToolbarMenu.btnEducation) {
          bubbleOffsetX = max(0, (bubbleOrigin.dx - bubbleWidth / 3));
        }
      }
    } else {
      bubbleOffsetX =
          bubbleOrigin.dx - (bubbleOrigin.dx * _animationInflate.value);
    }
    bubbleOffset = Offset(bubbleOffsetX, hailerOffset.dy - bubbleHeight);

    double navigationButtonMargin = screenSize.width * 0.0125;

    Positioned portraitHailer = Positioned(
        top: hailerOffset.dy,
        left: hailerOffset.dx,
        child: SizedBox(
            height: hailerSize, width: hailerSize, child: bubbleHailer));

    Positioned portraitBubble = Positioned(
        top: bubbleOffset.dy,
        left: bubbleOffset.dx,
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(25.0 * _animationInflate.value)),
                color: Colors.white),
            margin: marginBubble,
            height: bubbleHeight,
            width: bubbleWidth,
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              bool isSkillsSetContent =
                  originButton == ToolbarMenu.btnSkillsSet;

              List<Widget> stackChildren = isSkillsSetContent
                  ? carouselContent
                  : [
                      CarouselSlider(
                          carouselController: carouselController,
                          options: CarouselOptions(
                              enlargeFactor: 0.3,
                              pageSnapping: !isSkillsSetContent,
                              height: isSkillsSetContent
                                  ? bubbleHeight * 0.9
                                  : bubbleHeight,
                              padEnds: !isSkillsSetContent,
                              scrollDirection: isSkillsSetContent
                                  ? Axis.vertical
                                  : Axis.horizontal,
                              onPageChanged: isSkillsSetContent
                                  ? null
                                  : (index, reason) {
                                      carouselIndex.value = index;
                                      if (originButton ==
                                          ToolbarMenu.btnWorkExperience) {
                                        workExperienceContentScrollController
                                            .jumpTo(0.0);
                                      } else if (originButton ==
                                          ToolbarMenu.btnEducation) {
                                        educationContentScrollController
                                            .jumpTo(0.0);
                                      }
                                      setState(() {});
                                    },
                              enableInfiniteScroll: false,
                              viewportFraction: isSkillsSetContent
                                  ? (isPortraitPhoneScreen && screenRatio > 0.55
                                      ? 0.135
                                      : 0.075)
                                  : 0.85,
                              aspectRatio: isSkillsSetContent
                                  ? 16 / 9
                                  : bubbleWidth / bubbleHeight,
                              enlargeCenterPage: !isSkillsSetContent),
                          items: carouselContent)
                    ];

              if (originButton != ToolbarMenu.btnSkillsSet) {
                stackChildren.add(Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin:
                          EdgeInsets.fromLTRB(navigationButtonMargin, 0, 0, 0),
                      decoration: BoxDecoration(
                          gradient: RadialGradient(
                            colors: [
                              Colors.white,
                              const Color.fromARGB(0, 255, 255, 255),
                            ],
                            stops: [0.25, 1],
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(25.0 * _animationInflate.value))),
                      child: IconButton(
                        color: navigationButtonPalette.iconHighlight,
                        hoverColor: navigationButtonPalette.radientStop2,
                        disabledColor: navigationButtonPalette.iconFocus,
                        iconSize: constraints.maxWidth * 0.08,
                        onPressed: carouselIndex.value == 0
                            ? null
                            : () {
                                carouselController.previousPage(
                                    curve: Curves.fastOutSlowIn,
                                    duration: Duration(milliseconds: 500));
                              },
                        icon: Icon(
                          Icons.arrow_circle_left_sharp,
                          size: constraints.maxWidth * 0.08,
                        ),
                      ),
                    )));

                stackChildren.add(Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin:
                          EdgeInsets.fromLTRB(0, 0, navigationButtonMargin, 0),
                      decoration: BoxDecoration(
                          gradient: RadialGradient(
                            colors: [
                              Colors.white,
                              const Color.fromARGB(0, 255, 255, 255),
                            ],
                            stops: [0.25, 1],
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(25.0 * _animationInflate.value))),
                      child: IconButton(
                        color: navigationButtonPalette.iconHighlight,
                        hoverColor: navigationButtonPalette.radientStop2,
                        disabledColor: navigationButtonPalette.iconFocus,
                        iconSize: constraints.maxWidth * 0.08,
                        onPressed: (carouselContent.isEmpty ||
                                carouselIndex.value ==
                                    carouselContent.length - 1)
                            ? null
                            : () {
                                carouselController.nextPage(
                                    curve: Curves.fastOutSlowIn,
                                    duration: Duration(milliseconds: 500));
                              },
                        icon: Icon(
                          Icons.arrow_circle_right_sharp,
                          size: constraints.maxWidth * 0.08,
                        ),
                      ),
                    )));
              }

              return AnimatedOpacity(
                  duration: BubbleCarousel.animationDuration,
                  opacity: 1.0 * _animationInflate.value,
                  child: Container(
                      margin: EdgeInsets.all(5),
                      child: Stack(children: stackChildren)));
            })));

    GestureDetector stackContainer = GestureDetector(
        onTap: () {
          globalStreams.triggerStackSocialMediaButtons(true);
          globalStreams.triggerBubbleCarousel(ToolbarMenu.none);
          globalStreams.triggerToggleAppBar(false);
        },
        child: Container(
            margin: EdgeInsets.fromLTRB(0,
                max(0, Constants.APPBAR_HEIGHT - animatedOffsetTop - 20), 0, 0),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromARGB(bubbleShadowOpacity, 0, 0, 0),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(-2, 5),
              ),
              BoxShadow(
                color: Color.fromARGB(bubbleShadowOpacity, 0, 0, 0),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(2, 5),
              ),
            ]),
            child: GestureDetector(
                // inhibit tap bubbling to parent
                onTap: () {},
                child: Stack(children: [
                  DraftPresentation(bubbleShadowOpacity: bubbleShadowOpacity),
                  portraitHailer,
                  portraitBubble
                ]))));

    return stackContainer;
  }
}
