import 'package:flutter/material.dart';
import '../helpers/constants.dart';
import '../helpers/globals.dart' as globals;

class LanguageSwitchButton extends StatefulWidget {
  final VoidCallback? onPressedClbk;
  bool isFlipped;
  LanguageSwitchButton({this.isFlipped = false, this.onPressedClbk, super.key});

  @override
  State<LanguageSwitchButton> createState() => _LanguageSwitchButtonState();
}

class _LanguageSwitchButtonState extends State<LanguageSwitchButton>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: globals.appLanguage,
      builder: (context, value, widget) {
        return Container(
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                color: Colors.grey[400]!,
                blurRadius: 10.0,
              ),
            ]),
            child: IconButton(
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              icon: Image(
                image:
                    AssetImage(AppStrings.LANGUAGE_SWITCH_IMAGE_PATH[value]!),
                fit: BoxFit.fill,
              ),
              tooltip: AppStrings.LANGUAGE_SWITCH_TOOLTIP[value],
              onPressed: () {
                if (value == 'fr') {
                  globals.appLanguage.value = 'en';
                } else {
                  globals.appLanguage.value = 'fr';
                }
              },
            ));
      },
    );
  }
}
