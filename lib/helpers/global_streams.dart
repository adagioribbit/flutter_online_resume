import 'package:rxdart/rxdart.dart';

class GlobalStreams {
  final BehaviorSubject<String> _streamBubbleCarousel =
      BehaviorSubject<String>();
  final BehaviorSubject<List<double>> _streamSkillGauge =
      BehaviorSubject<List<double>>();

  // Retrieve event from streams
  ValueStream<String> get eventBubbleCarousel => _streamBubbleCarousel.stream;
  ValueStream<List<double>> get eventSkillGauge => _streamSkillGauge.stream;

  // Add event to streams
  Function(String) get triggerBubbleCarousel => _streamBubbleCarousel.sink.add;
  Function(List<double>) get triggerSkillGauge => _streamSkillGauge.sink.add;

  void dispose() {
    _streamBubbleCarousel.close();
    _streamSkillGauge.close();
  }
}

// Create an instance of the Controller
final globalStreams = GlobalStreams();
