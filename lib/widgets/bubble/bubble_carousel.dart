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
import 'content/education/data/greta.dart';
import 'content/education/data/lecnam.dart';
import 'content/education/data/lewagon.dart';
import 'content/education/data/upec.dart';
import 'content/work_experience/data/content_amiltone.dart';
import 'content/work_experience/data/content_evolucare.dart';
import 'content/work_experience/data/content_prastel.dart';
import 'content/skills/skill_sets_content.dart';

class BubbleCarousel extends StatefulWidget implements PreferredSizeWidget {
  static const Duration animationDuration = Duration(milliseconds: 300);
  static const double bubbleMaxWidth = 700.0;

  const BubbleCarousel({super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

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
  late double animatedBubbleMargin, bubbleHeight, bubbleWidth, hailerSize;
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
          if (originButton == ToolbarMenu.btnEducation) {
            navigationButtonPalette = educationButtonPalette;
            carouselContent = [
              contentLeWagon,
              contentLeCnam,
              contentGreta,
              content_upec
            ];
          } else if (originButton == ToolbarMenu.btnWorkExperience) {
            navigationButtonPalette = workExperienceButtonPalette;
            carouselContent = [
              contentPrastelMobile,
              contentPrastelCR15NM,
              contentPrastelWeb,
              contentAmiltoneMigration,
              contentAmiltoneIot,
              contentAmiltonePowerBI,
              contentAmiltoneWSO2,
              contentAmiltoneAndroid,
              contentEvolucareImaging,
              contentEvolucareMobile,
              contentEvolucareBorne
            ];
          } else if (originButton == ToolbarMenu.btnSkillsSet) {
            navigationButtonPalette = skillsSetButtonPalette;
            carouselContent = [contentSkillSets];
          }
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
    preButton = originButton = ToolbarMenu.None;
    bubbleOrigin = Offset.zero;
    navigationButtonPalette = educationButtonPalette;

    subscription = globalStreams.eventBubbleCarousel.listen((value) async {
      toggleInflation(value).then((v) {
        if (value != ToolbarMenu.btnSkillsSet) {
          Future.delayed(const Duration(milliseconds: 150), () {
            carouselController.animateToPage(carouselIndex.value,
                duration: Duration(milliseconds: 1000),
                curve: Curves.easeInOutExpo);
          });
        }
      });
    });
  }

  @override
  void didChangeDependencies() {
    isPortrait = Utils.isPortraitOrientation();

    if (originButton != ToolbarMenu.None) {
      bubbleOrigin = (GlobalKeyRing.toolbar[originButton]?.currentContext
              ?.findRenderObject() as RenderBox)
          .localToGlobal(Offset(
              Constants.TOOLBAR_HEIGHT * 0.3, Constants.TOOLBAR_HEIGHT * 0.8));
    }

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
    super.dispose();
  }

  Future<void> toggleInflation(ToolbarMenu value) async {
    originButton = value;
    if (originButton == ToolbarMenu.None) {
      originButton = preButton;
      carouselIndex.value = 0;
      await _animationController.reverse();
    } else {
      originButton = value;
      bool isMenuSwitch = preButton != originButton;
      Offset newOrigin = (GlobalKeyRing.toolbar[originButton]?.currentContext
              ?.findRenderObject() as RenderBox)
          .localToGlobal(Offset(
              Constants.TOOLBAR_HEIGHT * 0.3, Constants.TOOLBAR_HEIGHT * 0.8));

      if (isMenuSwitch && preButton != ToolbarMenu.btnSkillsSet) {
        carouselIndex.value = 0;
      }

      if (_animationController.isCompleted) {
        await _animationController.reverse().then((value) async {
          if (isMenuSwitch) {
            preButton = originButton;
            bubbleOrigin = newOrigin;
            await _animationController.forward();
          }
        }).then((value) => setState(() {}));
      } else {
        if (isMenuSwitch) {
          preButton = originButton;
          bubbleOrigin = newOrigin;
        }
        await _animationController.forward().then((value) => setState(() {}));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isPortraitPhoneScreen = Utils.isPortraitContext(context) &&
        (Utils.isPhoneScreen(context) || Utils.isFoldable(context));
    double screenRatio = Utils.getWidthOverHeightRatio();

    int bubbleShadowOpacity = (76 * _animationInflate.value).round();
    hailerSize = (Utils.isPhoneScreen(context) || Utils.isFoldable(context)
            ? 20.0
            : 50.0) *
        _animationInflate.value;

    hailerOffset = Offset(
        bubbleOrigin.dx - (hailerSize / 2.0),
        bubbleOrigin.dy -
            hailerSize -
            Constants.APPBAR_HEIGHT -
            Constants.TOOLBAR_HEIGHT);

    animatedBubbleMargin = 10.0 * _animationInflate.value;
    marginBubble = EdgeInsets.fromLTRB(
        animatedBubbleMargin, animatedBubbleMargin, animatedBubbleMargin, 0);
    bubbleHeight = (containerSize.height * _animationInflate.value) -
        hailerSize -
        marginBubble.vertical;
    bubbleWidth = ((containerSize.width * _animationInflate.value) -
            marginBubble.horizontal)
        .clamp(50, BubbleCarousel.bubbleMaxWidth);

    double bubbleOffsetX =
        bubbleOrigin.dx - (bubbleOrigin.dx * _animationInflate.value);
    if (screenSize.width > BubbleCarousel.bubbleMaxWidth) {
      if (originButton != preButton && _animationController.isDismissed) {
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
          globalStreams.triggerBubbleCarousel(ToolbarMenu.None);
        },
        child: Container(
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
