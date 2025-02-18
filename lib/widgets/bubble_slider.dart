import 'package:flutter/material.dart';
import '../helpers/constants.dart';
import '../helpers/utils.dart' show Utils;

class BubbleSlider extends StatefulWidget {
  const BubbleSlider({required Key bubbleSliderKey})
      : super(key: bubbleSliderKey);

  @override
  State<BubbleSlider> createState() => _BubbleSliderState();
}

class _BubbleSliderState extends State<BubbleSlider>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animationInflate;
  AnimationStatus _status = AnimationStatus.dismissed;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animationInflate = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });

    super.initState();
  }

  void toggleInflation() {
    if (_status == AnimationStatus.dismissed) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    // A titre d'exemple : Offset(145.0, 915.0) pour le positionnement du milieu du bouton "Education"
    bool isPortrait = Utils.isPortraitOrientation();
    Size screenSize = Utils.getScreenSize();
    Size containerSize = isPortrait
        ? Size(
            screenSize.width,
            (screenSize.height -
                Constants.TOOLBAR_HEIGHT -
                Constants.APPBAR_HEIGHT))
        : Size((screenSize.width - Constants.TOOLBAR_HEIGHT),
            (screenSize.height - Constants.APPBAR_HEIGHT));

    CustomPaint bubbleHailer = CustomPaint(
      painter: BubbleHailerPainter(
        strokeColor: Colors.blue,
        paintingStyle: PaintingStyle.fill,
      ),
    );

    print("---------------- screenSize = $screenSize");
    print("---------------- containerSize = $containerSize");

    double hailerSize = 5.0 + 50.0 * _animationInflate.value;
    Offset hailerOffset = Offset(
        (containerSize.width / 2.0) - (hailerSize / 2.0),
        containerSize.height - hailerSize);

    double animatedBubbleMargin = 10.0 * _animationInflate.value;
    EdgeInsets marginBubble = EdgeInsets.fromLTRB(
        animatedBubbleMargin, animatedBubbleMargin, animatedBubbleMargin, 0);
    double bubbleHeight =
        (containerSize.height - hailerSize - marginBubble.vertical) *
            _animationInflate.value;
    double bubbleWidth = (containerSize.width * _animationInflate.value) -
        marginBubble.horizontal;
    Offset bubbleOffset = Offset(
        (hailerOffset.dx + marginBubble.horizontal) - (bubbleWidth / 2.0),
        hailerOffset.dy - (hailerOffset.dy * _animationInflate.value));

    return AnimatedBuilder(
        key: widget.key,
        animation: _animationInflate,
        builder: (context, child) {
          Positioned portraitHailer = Positioned(
              top: hailerOffset.dy,
              left: hailerOffset.dx,
              child: Container(
                  height: hailerSize, width: hailerSize, child: bubbleHailer));

          Positioned portraitBubble = Positioned(
              top: bubbleOffset.dy,
              left: bubbleOffset.dx,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      color: Colors.blue),
                  margin: marginBubble,
                  height: bubbleHeight,
                  width: bubbleWidth));

          //Stack stackContainer = Stack(children: [portraitHailer]);
          GestureDetector stackContainer = GestureDetector(
              onTap: toggleInflation,
              child: Stack(children: [portraitBubble, portraitHailer]));

          return isPortrait ? stackContainer : stackContainer;
        });
  }
}

class BubbleHailerPainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  BubbleHailerPainter(
      {this.strokeColor = Colors.black,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getHailerPath(size.width, size.height), paint);
  }

  Path getHailerPath(double x, double y) {
    bool isPortrait = Utils.isPortraitOrientation();

    //** Successful attempt at a cartoon curved hailer */
    //Path pathPointingDown = Path()
    //  ..moveTo(0, 0)
    //  ..quadraticBezierTo(0, y * 0.7, x * 0.55, y)
    //  ..quadraticBezierTo(x * 0.25, y * 0.4, x * 0.7, 0);
    //return pathPointingDown;

    Path pathPointingLeft = Path()
      ..moveTo(x, 0)
      ..lineTo(x / 2, y)
      ..lineTo(0, 0)
      ..lineTo(x, 0);
    Path pathPointingDown = Path()
      ..moveTo(x, 0)
      ..lineTo(x, y)
      ..lineTo(0, y / 2)
      ..lineTo(x, 0);
    return isPortrait ? pathPointingLeft : pathPointingDown;
  }

  @override
  bool shouldRepaint(BubbleHailerPainter oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
