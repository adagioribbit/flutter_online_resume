import 'dart:async';
import 'dart:math' show max;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dossier_de_competences_web/widgets/content/education/greta.dart';
import 'package:dossier_de_competences_web/widgets/content/education/lecnam.dart';
import 'package:dossier_de_competences_web/widgets/content/education/lewagon.dart';
import 'package:dossier_de_competences_web/widgets/content/education/upec.dart';
import 'package:flutter/material.dart';
import '../helpers/constants.dart';
import '../helpers/global_streams.dart';
import '../helpers/globals.dart' show GlobalKeyRing;
import '../helpers/utils.dart' show Utils;
import 'bubble_hailer.dart';

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
  CarouselSliderController carouselController = CarouselSliderController();
  CustomPaint bubbleHailer = CustomPaint(
    painter: BubbleHailerPainter(),
  );
  AnimationStatus _prevStatus = AnimationStatus.dismissed;

  late List<Widget> carouselContent;
  late String prevButtonKeyString, originButtonKeyString;
  late EdgeInsets marginBubble;
  late double animatedBubbleMargin, bubbleHeight, bubbleWidth, hailerSize;
  late int _currentIndex;
  late Offset bubbleOffset, bubbleOrigin, hailerOffset;
  late bool isPortrait;
  late Size screenSize, containerSize;
  late StreamSubscription subscription;
  late AnimationController _animationController;
  late Animation _animationInflate;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;

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
          _currentIndex = 0;
        }
        if (_prevStatus == AnimationStatus.forward) {
          if (originButtonKeyString == "btnEducation") {
            carouselContent = [
              content_lewagon,
              content_lecnam,
              content_greta,
              content_upec
            ];
            if (_currentIndex != 0) {
              var idx = _currentIndex;
              carouselController.jumpToPage(_currentIndex);
              _currentIndex = idx;
            }
          } else if (originButtonKeyString == "btnWorkExperience") {
          } else if (originButtonKeyString == "btnEducation") {}
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
    prevButtonKeyString = originButtonKeyString = "";
    bubbleOrigin = Offset.zero;

    subscription = globalStreams.eventBubbleCarousel.listen((value) async {
      carouselContent = [];
      toggleInflation(value);
    });
  }

  @override
  void didChangeDependencies() {
    isPortrait = Utils.isPortraitOrientation();

    if (originButtonKeyString.isNotEmpty) {
      bubbleOrigin = (GlobalKeyRing.key[originButtonKeyString]?.currentContext
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

  Future<void> toggleInflation(String value) async {
    originButtonKeyString = value;
    Offset newOrigin = (GlobalKeyRing.key[originButtonKeyString]?.currentContext
            ?.findRenderObject() as RenderBox)
        .localToGlobal(Offset(
            Constants.TOOLBAR_HEIGHT * 0.3, Constants.TOOLBAR_HEIGHT * 0.8));

    if (_prevStatus == AnimationStatus.completed) {
      await _animationController.reverse().then((value) async {
        if (originButtonKeyString != prevButtonKeyString) {
          prevButtonKeyString = originButtonKeyString;
          bubbleOrigin = newOrigin;
          _currentIndex = 0;
          await _animationController.forward();
        }
      }).then((value) => setState(() {}));
    } else {
      if (originButtonKeyString != prevButtonKeyString) {
        prevButtonKeyString = originButtonKeyString;
        bubbleOrigin = newOrigin;
        _currentIndex = 0;
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
      if (originButtonKeyString != prevButtonKeyString &&
          _prevStatus == AnimationStatus.reverse) {
        if (prevButtonKeyString == "btnSkillsSet") {
          bubbleOffsetX = (bubbleOrigin.dx - bubbleWidth / 2);
        } else if (prevButtonKeyString == "btnWorkExperience") {
          bubbleOffsetX =
              screenSize.width - bubbleWidth - marginBubble.horizontal;
        } else if (prevButtonKeyString == "btnEducation") {
          bubbleOffsetX = max(0, (bubbleOrigin.dx - bubbleWidth / 3));
        }
      } else {
        if (originButtonKeyString == "btnSkillsSet") {
          bubbleOffsetX = (bubbleOrigin.dx - bubbleWidth / 2);
        } else if (originButtonKeyString == "btnWorkExperience") {
          bubbleOffsetX =
              screenSize.width - bubbleWidth - marginBubble.horizontal;
        } else if (originButtonKeyString == "btnEducation") {
          bubbleOffsetX = max(0, (bubbleOrigin.dx - bubbleWidth / 3));
        }
      }
    }
    bubbleOffset = Offset(bubbleOffsetX, hailerOffset.dy - bubbleHeight);

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
            child: AnimatedOpacity(
                duration: BubbleCarousel.animationDuration,
                opacity: 1.0 * _animationInflate.value,
                child: Stack(children: [
                  LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return CarouselSlider(
                        carouselController: carouselController,
                        options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              _currentIndex = index;
                              setState(() {});
                            },
                            enableInfiniteScroll: false,
                            aspectRatio:
                                constraints.maxWidth / constraints.maxHeight,
                            enlargeCenterPage: true),
                        items: carouselContent);
                  }),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: _currentIndex == 0
                          ? null
                          : carouselController.previousPage,
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: (carouselContent.isEmpty ||
                              _currentIndex == carouselContent.length - 1)
                          ? null
                          : carouselController.nextPage,
                      icon: Icon(Icons.arrow_forward),
                    ),
                  )
                ]))));

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
