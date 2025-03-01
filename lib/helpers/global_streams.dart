import 'package:dossier_de_competences_web/helpers/globals.dart'
    show ToolbarMenu;
import 'package:rxdart/rxdart.dart';

class GlobalStreams {
  final BehaviorSubject<ToolbarMenu> _streamBubbleCarousel =
      BehaviorSubject<ToolbarMenu>();
  final BehaviorSubject<List<double>> _streamSkillListItem =
      BehaviorSubject<List<double>>();

  // Retrieve event from streams
  ValueStream<ToolbarMenu> get eventBubbleCarousel =>
      _streamBubbleCarousel.stream;
  ValueStream<List<double>> get eventSkillListItem =>
      _streamSkillListItem.stream;

  // Add event to streams
  Function(ToolbarMenu) get triggerBubbleCarousel =>
      _streamBubbleCarousel.sink.add;
  Function(List<double>) get triggerSkillListItem =>
      _streamSkillListItem.sink.add;

  void dispose() {
    _streamBubbleCarousel.close();
    _streamSkillListItem.close();
  }
}

// Create an instance of the Controller
final globalStreams = GlobalStreams();
