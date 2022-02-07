import '../backend/backend.dart';
import '../create_invoice_page/create_invoice_page_widget.dart';
import '../edit_invoice_page/edit_invoice_page_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileinvoicesPageWidget extends StatefulWidget {
  const ProfileinvoicesPageWidget({
    Key key,
    this.uid,
  }) : super(key: key);

  final ProfilesRecord uid;

  @override
  _ProfileinvoicesPageWidgetState createState() =>
      _ProfileinvoicesPageWidgetState();
}

class _ProfileinvoicesPageWidgetState extends State<ProfileinvoicesPageWidget> {
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
                color: FlutterFlowTheme.primaryColor,
              ),
            ),
          );
        }
        List<InvoicesRecord> profileinvoicesPageInvoicesRecordList =
            snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.tertiaryColor,
            automaticallyImplyLeading: true,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.chevron_left_rounded,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Hello World',
              style: FlutterFlowTheme.bodyText1,
            ),
            actions: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () async {
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateInvoicePageWidget(
                        profile: widget.uid,
                      ),
                    ),
                    (r) => false,
                  );
                },
              ),
            ],
            centerTitle: true,
            elevation: 4,
          ),
          backgroundColor: Color(0xFFF5F5F5),
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: StreamBuilder<List<InvoicesRecord>>(
                            stream: queryInvoicesRecord(
                              queryBuilder: (invoicesRecord) => invoicesRecord
                                  .where('profileUID',
                                      isEqualTo: widget.uid.uid)
                                  .orderBy('created_time'),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<InvoicesRecord> columnInvoicesRecordList =
                                  snapshot.data;
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    columnInvoicesRecordList.length,
                                    (columnIndex) {
                                  final columnInvoicesRecord =
                                      columnInvoicesRecordList[columnIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.95,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBCD9B1),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 5,
                                            color: Color(0x39000000),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  EditInvoicePageWidget(
                                                item: columnInvoicesRecord,
                                              ),
                                            ),
                                          );
                                        },
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.attach_money_sharp,
                                            color: Color(0xE9000000),
                                            size: 25,
                                          ),
                                          title: Text(
                                            columnInvoicesRecord.fullName,
                                            style: FlutterFlowTheme.title3
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xE9000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Add price ',
                                            style: FlutterFlowTheme.subtitle2
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
