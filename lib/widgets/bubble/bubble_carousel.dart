import 'dart:async';
import 'dart:math' show max;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dossier_de_competences_web/helpers/colorchart.dart'
    show
        ToolbarButtonPalette,
        educationButtonPalette,
        skillsSetButtonPalette,
        workExperienceButtonPalette;
import 'package:flutter/material.dart';
import '../../helpers/constants.dart';
import '../../helpers/global_streams.dart';
import '../../helpers/globals.dart'
    show
        GlobalKeyRing,
        ToolbarMenu,
        bubbleContentScrollController,
        carouselController,
        carouselIndex;
import '../../helpers/utils.dart' show Utils;
import 'bubble_hailer.dart';
import 'content/education/data/greta.dart';
import 'content/education/data/lecnam.dart';
import 'content/education/data/lewagon.dart';
import 'content/education/data/upec.dart';
import 'content/work_experience/data/content_amiltone.dart';
import 'content/work_experience/data/content_evolucare.dart';
import 'content/work_experience/data/content_prastel.dart';

class BubbleCarousel extends StatefulWidget implements PreferredSizeWidget {
  static const Duration animationDuration = Duration(milliseconds: 300);
  static const double bubbleMaxWidth = 1000.0;

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
  AnimationStatus _prevStatus = AnimationStatus.dismissed;

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
        if (_prevStatus == AnimationStatus.reverse) carouselContent = [];
        if (_prevStatus == AnimationStatus.reverse &&
            currStatus == AnimationStatus.dismissed) {
          carouselIndex.value = 0;
        }
        if (_prevStatus == AnimationStatus.forward) {
          if (originButton == ToolbarMenu.btnEducation) {
            navigationButtonPalette = educationButtonPalette;
            carouselContent = [
              content_lewagon,
              content_lecnam,
              content_greta,
              content_upec
            ];
            if (carouselIndex.value != 0) {
              var idx = carouselIndex.value;
              carouselController.jumpToPage(carouselIndex.value);
              bubbleContentScrollController.jumpTo(0.0);
              carouselIndex.value = idx;
            }
          } else if (originButton == ToolbarMenu.btnWorkExperience) {
            navigationButtonPalette = workExperienceButtonPalette;
            carouselContent = [
              content_prastel_mobile,
              content_prastel_CR15NM,
              content_prastel_site_interne,
              content_amiltone_migration,
              content_amiltone_iot,
              content_amiltone_powerbi,
              content_amiltone_wso2,
              content_amiltone_android,
              content_evolucare_imaging,
              content_evolucare_mobile
            ];
          } else if (originButton == ToolbarMenu.btnSkillsSet) {
            navigationButtonPalette = skillsSetButtonPalette;
          }
        }
        _prevStatus = currStatus;
      });

    screenSize = Utils.getScreenSize();
    isPortrait = Utils.isPortraitOrientation();
    //containerSize = isPortrait
    //    ? Size(
    //        screenSize.width,
    //        (screenSize.height -
    //            Constants.TOOLBAR_HEIGHT -
    //            Constants.APPBAR_HEIGHT))
    //    : Size((screenSize.width - Constants.TOOLBAR_HEIGHT),
    //        (screenSize.height - Constants.APPBAR_HEIGHT));
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
      carouselContent = [];
      toggleInflation(value);
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

      //containerSize = isPortrait
      //    ? Size(
      //        screenSize.width,
      //        (screenSize.height -
      //            Constants.TOOLBAR_HEIGHT -
      //            Constants.APPBAR_HEIGHT))
      //    : Size((screenSize.width - Constants.TOOLBAR_HEIGHT),
      //        (screenSize.height - Constants.APPBAR_HEIGHT));
    });
    super.didChangeDependencies();
  }

  Future<void> toggleInflation(ToolbarMenu value) async {
    originButton = value;
    Offset newOrigin = (GlobalKeyRing.toolbar[originButton]?.currentContext
            ?.findRenderObject() as RenderBox)
        .localToGlobal(Offset(
            Constants.TOOLBAR_HEIGHT * 0.3, Constants.TOOLBAR_HEIGHT * 0.8));

    if (_prevStatus == AnimationStatus.completed) {
      await _animationController.reverse().then((value) async {
        if (originButton != preButton) {
          preButton = originButton;
          bubbleOrigin = newOrigin;
          carouselIndex.value = 0;
          await _animationController.forward();
        }
      }).then((value) => setState(() {}));
    } else {
      if (originButton != preButton) {
        preButton = originButton;
        bubbleOrigin = newOrigin;
        carouselIndex.value = 0;
      }
      await _animationController.forward().then((value) => setState(() {}));
    }
  }

  @override
  Widget build(BuildContext context) {
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
      if (originButton != preButton && _prevStatus == AnimationStatus.reverse) {
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
              return AnimatedOpacity(
                  duration: BubbleCarousel.animationDuration,
                  opacity: 1.0 * _animationInflate.value,
                  child: Stack(children: [
                    CarouselSlider(
                        carouselController: carouselController,
                        options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              carouselIndex.value = index;
                              bubbleContentScrollController.jumpTo(0.0);
                              setState(() {});
                            },
                            enableInfiniteScroll: false,
                            viewportFraction: 0.85,
                            aspectRatio: bubbleWidth / bubbleHeight,
                            enlargeCenterPage: true),
                        items: carouselContent),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              navigationButtonMargin, 0, 0, 0),
                          decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  Colors.white,
                                  const Color.fromARGB(0, 255, 255, 255),
                                ],
                                stops: [0.25, 1],
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  25.0 * _animationInflate.value))),
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
                            icon: Icon(Icons.arrow_circle_left_sharp),
                          ),
                        )),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0, 0, navigationButtonMargin, 0),
                          decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  Colors.white,
                                  const Color.fromARGB(0, 255, 255, 255),
                                ],
                                stops: [0.25, 1],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(
                                  25.0 * _animationInflate.value))),
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
                            icon: Icon(Icons.arrow_circle_right_sharp),
                          ),
                        ))
                  ]));
            })));

    Container stackContainer = Container(
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
        child: Stack(children: [portraitHailer, portraitBubble]));

    return isPortrait ? stackContainer : stackContainer;
  }
}
