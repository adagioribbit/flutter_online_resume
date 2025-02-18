import 'package:flutter/material.dart';

ValueNotifier<String> appLanguage = ValueNotifier<String>('fr');
ValueNotifier<bool> isDarkMode = ValueNotifier<bool>(false);
ValueNotifier<bool> isFoldable = ValueNotifier<bool>(false);

GlobalKey<FormState> bubbleSliderKey = GlobalKey<FormState>();
