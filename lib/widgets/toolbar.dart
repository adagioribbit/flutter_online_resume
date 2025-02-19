import 'package:flutter/material.dart';
import '../helpers/colorchart.dart';
import '../helpers/constants.dart';
import '../helpers/global_streams.dart';
import '../helpers/globals.dart' as globals;

class Toolbar extends StatefulWidget implements PreferredSizeWidget {
  const Toolbar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<Toolbar> createState() => _ToolbarState();
}

class _ToolbarState extends State<Toolbar> with TickerProviderStateMixin {
  final GlobalKey<FormState> _educationBtnKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _skillsSetBtnKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _workExpBtnKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO : Make the whole widget responsive to window resize
    //        especially switching from portrait to landscape

    return Positioned(
        bottom: 0,
        width: MediaQuery.of(context).size.width,
        child: ValueListenableBuilder(
            valueListenable: globals.appLanguage,
            builder: (context, value, widget) {
              return Container(
                height: Constants.TOOLBAR_HEIGHT,
                decoration: BoxDecoration(
                  color: ColorChart.appBarBackground,
                  border: Border(
                      top: BorderSide(
                          color: const Color.fromARGB(143, 202, 202, 202),
                          width: 1.0),
                      left: BorderSide(
                          color: Color.fromARGB(143, 202, 202, 202),
                          width: 0.5),
                      right: BorderSide(
                          color: Color.fromARGB(143, 202, 202, 202),
                          width: 0.5)),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(151, 196, 196, 196),
                      spreadRadius: 5,
                      blurRadius: 30,
                      offset: Offset(10, -15),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            gradient: RadialGradient(
                              center: Alignment(-0.035, -0.035),
                              colors: [
                                const Color.fromARGB(255, 255, 255, 255),
                                const Color.fromARGB(171, 194, 236, 139),
                                const Color.fromARGB(99, 194, 236, 139),
                                const Color.fromARGB(184, 194, 236, 139),
                              ],
                              stops: [0.7, 0.95, 0.99, 1],
                            ),
                            border: Border.all(
                                color: Color.fromARGB(255, 194, 236, 139),
                                width: 3.0),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(
                                    Constants.TOOLBAR_HEIGHT / 2.0)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(151, 196, 196, 196),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(-2, 5),
                              ),
                              BoxShadow(
                                color: const Color.fromARGB(151, 196, 196, 196),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(2, 5),
                              ),
                            ]),
                        child: IconButton(
                          focusColor: Color.fromARGB(216, 204, 226, 175),
                          hoverColor: Color.fromARGB(184, 204, 226, 175),
                          highlightColor: Color.fromARGB(255, 167, 236, 75),
                          constraints: BoxConstraints(
                            minHeight: Constants.TOOLBAR_HEIGHT * 0.8,
                            maxHeight: Constants.TOOLBAR_HEIGHT * 0.8,
                            minWidth: Constants.TOOLBAR_HEIGHT * 0.8,
                            maxWidth: Constants.TOOLBAR_HEIGHT * 0.8,
                          ),
                          icon: Image(
                              key: _educationBtnKey,
                              color: Color.fromARGB(255, 98, 173, 0),
                              image: AssetImage("lib/assets/bachelor_hat.png")),
                          tooltip: AppStrings.EDUCATION_TOOLTIP[value],
                          onPressed: () {
                            Offset positionCenter = (_educationBtnKey
                                    .currentContext
                                    ?.findRenderObject() as RenderBox)
                                .localToGlobal(Offset(
                                    Constants.TOOLBAR_HEIGHT * 0.3,
                                    Constants.TOOLBAR_HEIGHT * 0.8));
                            globalStreams.triggerBubbleSlider(
                                [positionCenter.dx, positionCenter.dy]);
                          },
                        )),
                    Container(
                        decoration: BoxDecoration(
                            gradient: RadialGradient(
                              center: Alignment(-0.035, -0.035),
                              colors: [
                                const Color.fromARGB(255, 255, 255, 255),
                                const Color.fromARGB(171, 233, 190, 134),
                                const Color.fromARGB(99, 233, 190, 134),
                                const Color.fromARGB(184, 233, 190, 134),
                              ],
                              stops: [0.7, 0.95, 0.99, 1],
                            ),
                            border: Border.all(
                                color: Color.fromARGB(255, 233, 190, 134),
                                width: 3.0),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(
                                    Constants.TOOLBAR_HEIGHT / 2.0)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(151, 196, 196, 196),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(-2, 5),
                              ),
                              BoxShadow(
                                color: const Color.fromARGB(151, 196, 196, 196),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(2, 5),
                              ),
                            ]),
                        child: IconButton(
                          focusColor: Color.fromARGB(215, 226, 204, 175),
                          hoverColor: Color.fromARGB(184, 226, 204, 175),
                          highlightColor: Color.fromARGB(255, 233, 169, 85),
                          constraints: BoxConstraints(
                            minHeight: Constants.TOOLBAR_HEIGHT * 0.8,
                            maxHeight: Constants.TOOLBAR_HEIGHT * 0.8,
                            minWidth: Constants.TOOLBAR_HEIGHT * 0.8,
                            maxWidth: Constants.TOOLBAR_HEIGHT * 0.8,
                          ),
                          icon: Image(
                              key: _skillsSetBtnKey,
                              color: Color.fromARGB(255, 185, 105, 0),
                              image: AssetImage("lib/assets/skills_set.png")),
                          tooltip: AppStrings.SKILL_SETS_TOOLTIP[value],
                          onPressed: () {
                            Offset positionCenter = (_skillsSetBtnKey
                                    .currentContext
                                    ?.findRenderObject() as RenderBox)
                                .localToGlobal(Offset(
                                    Constants.TOOLBAR_HEIGHT * 0.3,
                                    Constants.TOOLBAR_HEIGHT * 0.8));
                            globalStreams.triggerBubbleSlider(
                                [positionCenter.dx, positionCenter.dy]);
                          },
                        )),
                    Container(
                        decoration: BoxDecoration(
                            gradient: RadialGradient(
                              center: Alignment(-0.035, -0.035),
                              colors: [
                                const Color.fromARGB(255, 255, 255, 255),
                                const Color.fromARGB(171, 201, 201, 201),
                                const Color.fromARGB(99, 120, 208, 235),
                                const Color.fromARGB(184, 120, 208, 235),
                              ],
                              stops: [0.7, 0.95, 0.99, 1],
                            ),
                            border: Border.all(
                                color: Color.fromARGB(242, 120, 208, 235),
                                width: 3.0),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(
                                    Constants.TOOLBAR_HEIGHT / 2.0)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(151, 196, 196, 196),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(-2, 5),
                              ),
                              BoxShadow(
                                color: const Color.fromARGB(151, 196, 196, 196),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(2, 5),
                              ),
                            ]),
                        child: IconButton(
                          focusColor: Color.fromARGB(214, 175, 214, 226),
                          hoverColor: Color.fromARGB(184, 175, 214, 226),
                          highlightColor: Color.fromARGB(241, 74, 193, 230),
                          constraints: BoxConstraints(
                            minHeight: Constants.TOOLBAR_HEIGHT * 0.8,
                            maxHeight: Constants.TOOLBAR_HEIGHT * 0.8,
                            minWidth: Constants.TOOLBAR_HEIGHT * 0.8,
                            maxWidth: Constants.TOOLBAR_HEIGHT * 0.8,
                          ),
                          icon: Image(
                              key: _workExpBtnKey,
                              color: Color.fromARGB(255, 0, 137, 179),
                              image:
                                  AssetImage("lib/assets/work_experience.png")),
                          tooltip: AppStrings.WORK_EXPERIENCE_TOOLTIP[value],
                          onPressed: () {
                            Offset positionCenter = (_workExpBtnKey
                                    .currentContext
                                    ?.findRenderObject() as RenderBox)
                                .localToGlobal(Offset(
                                    Constants.TOOLBAR_HEIGHT * 0.3,
                                    Constants.TOOLBAR_HEIGHT * 0.8));
                            globalStreams.triggerBubbleSlider(
                                [positionCenter.dx, positionCenter.dy]);
                          },
                        ))
                  ],
                ),
              );
            }));
  }
}
