import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddmoneypinWidget extends StatefulWidget {
  const AddmoneypinWidget({Key? key}) : super(key: key);

  @override
  _AddmoneypinWidgetState createState() => _AddmoneypinWidgetState();
}

class _AddmoneypinWidgetState extends State<AddmoneypinWidget> {
  TextEditingController? pinCodeController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
  }

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
                              alignment: AlignmentDirectional(-0.02, -0.9),
                              child: Text(
                                'ADD MONEY',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 25,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, -0.08),
                              child: PinCodeTextField(
                                appContext: context,
                                length: 4,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                enableActiveFill: false,
                                autoFocus: true,
                                showCursor: true,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                obscureText: false,
                                hintCharacter: '●',
                                pinTheme: PinTheme(
                                  fieldHeight: 60,
                                  fieldWidth: 60,
                                  borderWidth: 2,
                                  borderRadius: BorderRadius.circular(12),
                                  shape: PinCodeFieldShape.box,
                                  activeColor: Colors.black,
                                  inactiveColor: Colors.black,
                                  selectedColor: Colors.black,
                                  activeFillColor: Colors.black,
                                  inactiveFillColor: Colors.black,
                                  selectedFillColor: Colors.black,
                                ),
                                controller: pinCodeController,
                                onChanged: (_) => {},
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.11, -0.37),
                              child: Text(
                                'ENTER THE SECURITY PIN',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 23,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.01, 0.52),
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed(
                                    'ADDMONEY',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 1000),
                                      ),
                                    },
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/Rectangle_534.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.04, 0.5),
                              child: Text(
                                'PAY',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 22,
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
                alignment: AlignmentDirectional(-0.95, -0.96),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'ADDMONEYACCOUNTS',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 700),
                        ),
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/images/image_5.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
