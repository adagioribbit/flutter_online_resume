import 'dart:async';

import 'package:flutter/material.dart';
import '../helpers/constants.dart';
import '../helpers/global_streams.dart';
import '../helpers/utils.dart' show Utils;
import 'bubble_hailer.dart';

class BubbleSlider extends StatefulWidget implements PreferredSizeWidget {
  static const Duration animationDuration = Duration(milliseconds: 300);
  const BubbleSlider({required Key bubbleSliderKey})
      : super(key: bubbleSliderKey);

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<BubbleSlider> createState() => _BubbleSliderState();
}

class _BubbleSliderState extends State<BubbleSlider>
    with TickerProviderStateMixin {
  CustomPaint bubbleHailer = CustomPaint(
    painter: BubbleHailerPainter(),
  );
  AnimationStatus _status = AnimationStatus.dismissed;

  late EdgeInsets marginBubble;
  late double animatedBubbleMargin, bubbleHeight, bubbleWidth, hailerSize;
  late Offset bubbleOffset, bubbleOrigin, hailerOffset;
  late bool isPortrait;
  late Size screenSize, containerSize;
  late StreamSubscription subscription;
  late AnimationController _animationController;
  late Animation _animationInflate;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: BubbleSlider.animationDuration);
    _animationInflate = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });

    screenSize = Utils.getScreenSize();
    isPortrait = Utils.isPortraitOrientation();
    containerSize = isPortrait
        ? Size(
            screenSize.width,
            (screenSize.height -
                Constants.TOOLBAR_HEIGHT -
                Constants.APPBAR_HEIGHT))
        : Size((screenSize.width - Constants.TOOLBAR_HEIGHT),
            (screenSize.height - Constants.APPBAR_HEIGHT));

    hailerSize = (Utils.isPhoneView() ? 20.0 : 50.0) * _animationInflate.value;
    hailerOffset = Offset((containerSize.width / 2.0) - (hailerSize / 2.0),
        containerSize.height - hailerSize);
    bubbleOrigin = Offset.zero;

    subscription = globalStreams.eventBubbleSlider.listen((value) async {
      toggleInflation(value);
    });
  }

  @override
  void didChangeDependencies() {
    isPortrait = Utils.isPortraitOrientation();
    setState(() {
      screenSize = Utils.getContextSize(context);
      containerSize = isPortrait
          ? Size(
              screenSize.width,
              (screenSize.height -
                  Constants.TOOLBAR_HEIGHT -
                  Constants.APPBAR_HEIGHT))
          : Size((screenSize.width - Constants.TOOLBAR_HEIGHT),
              (screenSize.height - Constants.APPBAR_HEIGHT));

      hailerSize = (Utils.isPhoneScreen(context) ? 20.0 : 50.0) *
          _animationInflate.value;
      hailerOffset = Offset((containerSize.width / 2.0) - (hailerSize / 2.0),
          containerSize.height - hailerSize);
    });
    super.didChangeDependencies();
  }

  Future<void> toggleInflation(List<double>? value) async {
    Offset newOrigin = Offset(value![0], value[1]);
    if (_status == AnimationStatus.completed) {
      await _animationController.reverse();
      if (bubbleOrigin != newOrigin) {
        bubbleOrigin = newOrigin;
        await _animationController.forward();
      }
    } else {
      if (bubbleOrigin != newOrigin) bubbleOrigin = newOrigin;
      await _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    int bubbleShadowOpacity = (76 * _animationInflate.value).round();
    hailerSize =
        (Utils.isPhoneScreen(context) ? 20.0 : 50.0) * _animationInflate.value;

    hailerOffset = Offset(
        bubbleOrigin.dx - (hailerSize / 2.0),
        bubbleOrigin.dy -
            Constants.TOOLBAR_HEIGHT -
            (Constants.TOOLBAR_HEIGHT * 0.6) -
            hailerSize);

    animatedBubbleMargin = 10.0 * _animationInflate.value;
    marginBubble = EdgeInsets.fromLTRB(
        animatedBubbleMargin, animatedBubbleMargin, animatedBubbleMargin, 0);
    bubbleHeight = (containerSize.height * _animationInflate.value) -
        hailerSize -
        marginBubble.vertical;
    bubbleWidth = (containerSize.width * _animationInflate.value) -
        marginBubble.horizontal;
    bubbleOffset = Offset(
        bubbleOrigin.dx - (bubbleOrigin.dx * _animationInflate.value),
        hailerOffset.dy - bubbleHeight);

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
                duration: BubbleSlider.animationDuration,
                opacity: 1.0 * _animationInflate.value,
                child: Text(
                  "Pouetpouet",
                  textAlign: TextAlign.center,
                ))));

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
