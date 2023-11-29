import 'package:auto_size_text/auto_size_text.dart';
import 'package:fitness_app/feature/presentation/controllers/excercise_details_page_controller.dart';
import 'package:fitness_app/feature/presentation/widget/WaveClipWidget/wave_clip_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ExcerciseDetailsPage extends GetView<ExcerciseDetailsPageController> {
  const ExcerciseDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: const Color(0xff42BEA5),
        automaticallyImplyLeading: false,
        title: Text(
          'alternate lateral pulldown',
          style: FlutterFlowTheme.of(context).displaySmall.override(
              fontFamily: 'Outfit', color: Colors.white, fontSize: 25),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 56,
                  child: PreferredSize(
                    preferredSize: const Size.fromHeight(kToolbarHeight + 100),
                    child: ClipPath(
                      clipper: WaveClip(),
                      child: Container(
                        color: const Color(0xff42BEA5),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Equipment: ',
                          ),
                          Text(
                            'cable',
                          ),
                        ],
                      ),
                    ),
                    Image.network(
                      'https://v2.exercisedb.io/image/0W-PMlUnx3wDD5',
                      width: MediaQuery.sizeOf(context).width,
                      height: 240,
                      fit: BoxFit.cover,
                    ).animateOnPageLoad(
                        controller.animationsMap['imageOnPageLoadAnimation']!),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Instructions',
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 0, 0, 8),
                                        child: Text(
                                          'Adipisicing qui occaecat tempor sit elit incididunt adipisicing dolore ea incididunt ea officia exercitation. Enim occaecat sint pariatur cupidatat anim amet anim Lorem incididunt minim reprehenderit incididunt. Nulla deserunt consequat laborum irure do pariatur ullamco incididunt proident reprehenderit adipisicing pariatur deserunt ullamco. Laboris enim nostrud ullamco laborum occaecat ut commodo laboris dolore voluptate eiusmod. Aliqua fugiat aliquip fugiat in eiusmod culpa aliquip reprehenderit ullamco amet amet aliqua. Tempor id veniam reprehenderit sit. Labore nulla aliqua anim amet laboris consectetur id. ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                          overflow: TextOverflow
                                              .clip, // or TextOverflow.ellipsis
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: 180,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x37000000),
                                  offset: Offset(0, 1),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {},
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                    child: Image.asset(
                                      'assets/images/40167b4b2f4992f5d26a5ed9f4314256_preview_rev_1.png',
                                      width: MediaQuery.sizeOf(context).width *
                                          0.3,
                                      height: 60,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                    child: AutoSizeText(
                                      'Target',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              8, 4, 8, 0),
                                      child: Text(
                                        'lats',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.getFont(
                                          'Lexend Deca',
                                          color: const Color(0xB3FFFFFF),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: 180,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x39000000),
                                  offset: Offset(0, 1),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 0),
                                  child: Image.asset(
                                    'assets/images/Screenshot 2023-11-29 003423_preview_rev_1.png',
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: AutoSizeText(
                                    'Secondary Muscle',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            8, 4, 8, 0),
                                    child: Text(
                                      'biceps\nrhomboids',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.getFont(
                                        'Lexend Deca',
                                        color: const Color(0xB3FFFFFF),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
