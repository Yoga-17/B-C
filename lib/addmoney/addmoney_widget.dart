import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddmoneyWidget extends StatefulWidget {
  const AddmoneyWidget({Key? key}) : super(key: key);

  @override
  _AddmoneyWidgetState createState() => _AddmoneyWidgetState();
}

class _AddmoneyWidgetState extends State<AddmoneyWidget> {
  TextEditingController? textFieldMessageController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textFieldMessageController = TextEditingController();
  }

  @override
  void dispose() {
    textFieldMessageController?.dispose();
    super.dispose();
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
                              alignment: AlignmentDirectional(0.15, -0.87),
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
                              alignment: AlignmentDirectional(-0.05, 0.02),
                              child: Container(
                                width: 280,
                                child: TextFormField(
                                  controller: textFieldMessageController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textFieldMessageController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Enter the money to be added',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0B0000),
                                        width: 3,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0B0000),
                                        width: 3,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 3,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 3,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    filled: true,
                                    suffixIcon: textFieldMessageController!
                                            .text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              textFieldMessageController
                                                  ?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFF757575),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                  keyboardType: TextInputType.number,
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
              Align(
                alignment: AlignmentDirectional(-0.04, 0.24),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'ADDMONEYSUCCESS',
                      queryParams: {
                        'message': serializeParam(
                          textFieldMessageController!.text,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: 'ADD MONEY',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF352641),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
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
