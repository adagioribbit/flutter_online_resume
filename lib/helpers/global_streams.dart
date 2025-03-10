import 'package:rxdart/rxdart.dart';

import 'globals.dart' show ToolbarMenu;

class GlobalStreams {
  final BehaviorSubject<bool> _streamStackSocialMediaButtons =
      BehaviorSubject<bool>();
  final BehaviorSubject<bool> _streamIsAppBarVisible = BehaviorSubject<bool>();
  final BehaviorSubject<ToolbarMenu> _streamBubbleCarousel =
      BehaviorSubject<ToolbarMenu>();
  final BehaviorSubject<List<double>> _streamSkillListItem =
      BehaviorSubject<List<double>>();

  // Retrieve event from streams
  ValueStream<bool> get eventStackSocialMediaButtons =>
      _streamStackSocialMediaButtons.stream;
  ValueStream<bool> get eventToggleAppBar => _streamIsAppBarVisible.stream;
  ValueStream<ToolbarMenu> get eventBubbleCarousel =>
      _streamBubbleCarousel.stream;
  ValueStream<List<double>> get eventSkillListItem =>
      _streamSkillListItem.stream;

  // Add event to streams
  Function(bool) get triggerStackSocialMediaButtons =>
      _streamStackSocialMediaButtons.sink.add;
  Function(bool) get triggerToggleAppBar => _streamIsAppBarVisible.sink.add;
  Function(ToolbarMenu) get triggerBubbleCarousel =>
      _streamBubbleCarousel.sink.add;
  Function(List<double>) get triggerSkillListItem =>
      _streamSkillListItem.sink.add;

  void dispose() {
    _streamStackSocialMediaButtons.close();
    _streamIsAppBarVisible.close();
    _streamBubbleCarousel.close();
    _streamSkillListItem.close();
  }
}

// Create an instance of the Controller
final globalStreams = GlobalStreams();
