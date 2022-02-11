import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InvoicesPageWidget extends StatefulWidget {
  const InvoicesPageWidget({Key key}) : super(key: key);

  @override
  _InvoicesPageWidgetState createState() => _InvoicesPageWidgetState();
}

class _InvoicesPageWidgetState extends State<InvoicesPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<InvoicesRecord>>(
      stream: queryInvoicesRecord(
        queryBuilder: (invoicesRecord) =>
            invoicesRecord.orderBy('created_time'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<InvoicesRecord> invoicesPageInvoicesRecordList = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFF5F5F5),
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          'Activity',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 30,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Divider(),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: StreamBuilder<List<InvoicesRecord>>(
                          stream: queryInvoicesRecord(
                            queryBuilder: (invoicesRecord) =>
                                invoicesRecord.orderBy('created_time'),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<InvoicesRecord> columnInvoicesRecordList =
                                snapshot.data;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children:
                                  List.generate(columnInvoicesRecordList.length,
                                      (columnIndex) {
                                final columnInvoicesRecord =
                                    columnInvoicesRecordList[columnIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.95,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF80B641),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x39000000),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.attach_money_sharp,
                                          color: Color(0xE9000000),
                                          size: 25,
                                        ),
                                        title: Text(
                                          columnInvoicesRecord.fullName,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xE9000000),
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        subtitle: Text(
                                          'Add price ',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF040404),
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xFF303030),
                                          size: 20,
                                        ),
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                10, 0, 10, 0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
