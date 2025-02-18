import 'package:flutter/material.dart';

import '../widgets/bubble_slider.dart';

ValueNotifier<String> appLanguage = ValueNotifier<String>('fr');
ValueNotifier<bool> isDarkMode = ValueNotifier<bool>(false);
ValueNotifier<bool> isFoldable = ValueNotifier<bool>(false);

GlobalKey<State<BubbleSlider>> bubbleSliderKey =
    GlobalKey<State<BubbleSlider>>();
