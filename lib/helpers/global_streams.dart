import 'package:rxdart/rxdart.dart';

class GlobalStreams {
  final BehaviorSubject<List<double>> _streamBubbleSlider =
      BehaviorSubject<List<double>>();

  // Retrieve event from stream
  ValueStream<List<double>> get eventBubbleSlider => _streamBubbleSlider.stream;

  // Add event to stream
  Function(List<double>) get triggerBubbleSlider =>
      _streamBubbleSlider.sink.add;

  void dispose() => _streamBubbleSlider.close();
}

// Create an instance of the Controller
final globalStreams = GlobalStreams();
