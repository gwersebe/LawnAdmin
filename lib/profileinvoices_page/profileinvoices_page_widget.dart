import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../view_invoice_page/view_invoice_page_widget.dart';
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
        queryBuilder: (invoicesRecord) => invoicesRecord
            .where('Owner', isEqualTo: currentUserUid)
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
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<InvoicesRecord> profileinvoicesPageInvoicesRecordList =
            snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: true,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Invoices',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Open Sans',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 1,
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: StreamBuilder<List<InvoicesRecord>>(
                    stream: queryInvoicesRecord(
                      queryBuilder: (invoicesRecord) => invoicesRecord
                          .where('profileUID', isEqualTo: widget.uid.uid)
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
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }
                      List<InvoicesRecord> columnInvoicesRecordList =
                          snapshot.data;
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: List.generate(
                              columnInvoicesRecordList.length, (columnIndex) {
                            final columnInvoicesRecord =
                                columnInvoicesRecordList[columnIndex];
                            return Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.95,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 1,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: StreamBuilder<List<CompaniesRecord>>(
                                    stream: queryCompaniesRecord(
                                      queryBuilder: (companiesRecord) =>
                                          companiesRecord.where('email',
                                              isEqualTo: currentUserEmail),
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<CompaniesRecord>
                                          listTileCompaniesRecordList =
                                          snapshot.data;
                                      // Return an empty Container when the document does not exist.
                                      if (snapshot.data.isEmpty) {
                                        return Container();
                                      }
                                      final listTileCompaniesRecord =
                                          listTileCompaniesRecordList.isNotEmpty
                                              ? listTileCompaniesRecordList
                                                  .first
                                              : null;
                                      return InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ViewInvoicePageWidget(
                                                companyRecord:
                                                    listTileCompaniesRecord,
                                                invoiceUID: columnInvoicesRecord
                                                    .invoiceUID,
                                              ),
                                            ),
                                          );
                                        },
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.attach_money_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 25,
                                          ),
                                          title: Text(
                                            columnInvoicesRecord.fullName,
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          subtitle: Text(
                                            '\$ ${columnInvoicesRecord.invoiceTotal.toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
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
                                      );
                                    },
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      );
                    },
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
