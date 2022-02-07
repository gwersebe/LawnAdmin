import '../backend/backend.dart';
import '../create_profile_page/create_profile_page_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../profile_page/profile_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilesPageWidget extends StatefulWidget {
  const ProfilesPageWidget({Key key}) : super(key: key);

  @override
  _ProfilesPageWidgetState createState() => _ProfilesPageWidgetState();
}

class _ProfilesPageWidgetState extends State<ProfilesPageWidget> {
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
                color: FlutterFlowTheme.primaryColor,
              ),
            ),
          );
        }
        List<ProfilesRecord> profilesPageProfilesRecordList = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFF5F5F5),
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          'Profiles',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(0.15, 0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 65,
                            icon: Icon(
                              Icons.person_add,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: CreateProfilePageWidget(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: StreamBuilder<List<ProfilesRecord>>(
                          stream: queryProfilesRecord(
                            queryBuilder: (profilesRecord) =>
                                profilesRecord.orderBy('firstName'),
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
                            List<ProfilesRecord> columnProfilesRecordList =
                                snapshot.data;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children:
                                  List.generate(columnProfilesRecordList.length,
                                      (columnIndex) {
                                final columnProfilesRecord =
                                    columnProfilesRecordList[columnIndex];
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
                                          color: Color(0xE9000000),
                                        ),
                                        title: Text(
                                          '${columnProfilesRecord.firstName} ${columnProfilesRecord.lastName}',
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xE9000000),
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
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
