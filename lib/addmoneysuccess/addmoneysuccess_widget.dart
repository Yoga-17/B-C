import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddmoneysuccessWidget extends StatefulWidget {
  const AddmoneysuccessWidget({
    Key? key,
    this.message,
  }) : super(key: key);

  final String? message;

  @override
  _AddmoneysuccessWidgetState createState() => _AddmoneysuccessWidgetState();
}

class _AddmoneysuccessWidgetState extends State<AddmoneysuccessWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Container(
                  width: 1000,
                  height: 1000,
                  decoration: BoxDecoration(
                    color: Color(0xFF352641),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.14, 0.75),
                              child: Container(
                                width: 338,
                                height: 562,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, -1),
                              child: Image.asset(
                                'assets/images/bg.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.15, -0.88),
                              child: Text(
                                'ADD MONEY TO WALLET',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 25,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.07, 0.54),
                              child: Text(
                                'YOUR MONEY HAS BEEN SUCCESSFULLY \nADDED TO YOUR WALLET',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF0B0000),
                                      fontSize: 17,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.02, -0.29),
                child: Image.asset(
                  'assets/images/wallet-png-25148.png',
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.95, -0.96),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed('WALLET');
                  },
                  child: Image.asset(
                    'assets/images/image_5.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, -0.08),
                child: Text(
                  widget.message!,
                  style: FlutterFlowTheme.of(context).title1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
