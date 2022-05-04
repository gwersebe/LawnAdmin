import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../create_profile_page_details/create_profile_page_details_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../profile_page/profile_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllProfilesPageWidget extends StatefulWidget {
  const AllProfilesPageWidget({Key key}) : super(key: key);

  @override
  _AllProfilesPageWidgetState createState() => _AllProfilesPageWidgetState();
}

class _AllProfilesPageWidgetState extends State<AllProfilesPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ProfilesRecord>>(
      stream: queryProfilesRecord(
        queryBuilder: (profilesRecord) => profilesRecord.orderBy('firstName'),
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
        List<ProfilesRecord> allProfilesPageProfilesRecordList = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            title: Text(
              'Profiles',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Open Sans',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 30,
                  ),
            ),
            actions: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30,
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      duration: Duration(milliseconds: 300),
                      reverseDuration: Duration(milliseconds: 300),
                      child: CreateProfilePageDetailsWidget(),
                    ),
                  );
                },
              ),
            ],
            centerTitle: false,
            elevation: 1,
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: StreamBuilder<List<ProfilesRecord>>(
                    stream: queryProfilesRecord(
                      queryBuilder: (profilesRecord) => profilesRecord
                          .where('Owner', isEqualTo: currentUserUid)
                          .where('active', isEqualTo: true)
                          .orderBy('firstName'),
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
                      List<ProfilesRecord> columnProfilesRecordList =
                          snapshot.data;
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              columnProfilesRecordList.length, (columnIndex) {
                            final columnProfilesRecord =
                                columnProfilesRecordList[columnIndex];
                            return Align(
                              alignment: AlignmentDirectional(0, -0.2),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.95,
                                  height: 50,
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
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0.55),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProfilePageWidget(
                                              pREF: columnProfilesRecord
                                                  .reference,
                                              prof: columnProfilesRecord,
                                            ),
                                          ),
                                        );
                                      },
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.person,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 23,
                                        ),
                                        title: Text(
                                          '${columnProfilesRecord.firstName} ${columnProfilesRecord.lastName}',
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20,
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        dense: false,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                10, 0, 10, 0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                      ),
                                    ),
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
