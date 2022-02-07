import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseAddItemWidget extends StatefulWidget {
  const ChooseAddItemWidget({Key key}) : super(key: key);

  @override
  _ChooseAddItemWidgetState createState() => _ChooseAddItemWidgetState();
}

class _ChooseAddItemWidgetState extends State<ChooseAddItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Spacer(),
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'Button',
            options: FFButtonOptions(
              width: 130,
              height: 40,
              color: FlutterFlowTheme.primaryColor,
              textStyle: FlutterFlowTheme.subtitle2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: 12,
            ),
          ),
          Spacer(),
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'Button',
            options: FFButtonOptions(
              width: 130,
              height: 40,
              color: FlutterFlowTheme.primaryColor,
              textStyle: FlutterFlowTheme.subtitle2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: 12,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
