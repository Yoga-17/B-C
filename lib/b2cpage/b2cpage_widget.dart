import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class B2cpageWidget extends StatefulWidget {
  const B2cpageWidget({Key? key}) : super(key: key);

  @override
  _B2cpageWidgetState createState() => _B2cpageWidgetState();
}

class _B2cpageWidgetState extends State<B2cpageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));

      context.pushNamed(
        'HomePage1',
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 1000),
          ),
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            child: Stack(
              alignment: AlignmentDirectional(0, 0),
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0.09),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.scaleDown,
                        image: Image.asset(
                          'assets/images/Group_2_(1).png',
                        ).image,
                      ),
                    ),
                    alignment: AlignmentDirectional(0, 0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
