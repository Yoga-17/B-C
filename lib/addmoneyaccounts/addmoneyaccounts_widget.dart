import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddmoneyaccountsWidget extends StatefulWidget {
  const AddmoneyaccountsWidget({Key? key}) : super(key: key);

  @override
  _AddmoneyaccountsWidgetState createState() => _AddmoneyaccountsWidgetState();
}

class _AddmoneyaccountsWidgetState extends State<AddmoneyaccountsWidget> {
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
                              alignment: AlignmentDirectional(-0.25, -0.17),
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed(
                                    'ADDMONEYPIN',
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
                                  'assets/images/kisspng-logo-brand-font-pink-m-line-about-letsignite-5b72112e214733_1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.18, 0.3),
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed('ADDMONEYPIN');
                                },
                                child: Image.asset(
                                  'assets/images/kisspng-citibank-citigroup-online-banking-loan-citi-5b387fccb76a86_2.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.83),
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed(
                                    'ADDMONEYPIN',
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
                                  'assets/images/kisspng-logo-brand-font-line-bank-of-baroda-nomura-upgrades-bank-of-baroda-stock-up-4-5be2127a0c14b9_1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.06, -0.48),
                              child: Text(
                                'SELECT THE BANK ACCOUNT',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
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
                      'WALLET',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 600),
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
