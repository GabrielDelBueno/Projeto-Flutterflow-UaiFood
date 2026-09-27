import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'splash_page_model.dart';
export 'splash_page_model.dart';

/// Splash animado
class SplashPageWidget extends StatefulWidget {
  const SplashPageWidget({super.key});

  static String routeName = 'SplashPage';
  static String routePath = '/splashPage';

  @override
  State<SplashPageWidget> createState() => _SplashPageWidgetState();
}

class _SplashPageWidgetState extends State<SplashPageWidget> {
  late SplashPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 11000,
        ),
      );

      context.goNamed(HomePageWidget.routeName);
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: (FFMainAxisAlignment.center).flutterValue,
            crossAxisAlignment: (FFCrossAxisAlignment.center).flutterValue,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Lottie.asset(
                  'assets/jsons/QUERO_O_FORMATO_PARA_CELULAR.json',
                  width: 500.0,
                  height: 1000.0,
                  fit: BoxFit.fill,
                  frameRate: FrameRate(60.0),
                  animate: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
