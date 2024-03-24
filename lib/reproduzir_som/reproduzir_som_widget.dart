import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reproduzir_som_model.dart';
export 'reproduzir_som_model.dart';

class ReproduzirSomWidget extends StatefulWidget {
  const ReproduzirSomWidget({super.key});

  @override
  State<ReproduzirSomWidget> createState() => _ReproduzirSomWidgetState();
}

class _ReproduzirSomWidgetState extends State<ReproduzirSomWidget> {
  late ReproduzirSomModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReproduzirSomModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  'https://filesamples.com/samples/audio/mp3/sample3.mp3',
                  metas: Metas(
                    id: 'sample3.mp3-a62657b4',
                    title: 'audio',
                  ),
                ),
                titleTextStyle: FlutterFlowTheme.of(context).titleLarge,
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledRestoreOnForeground,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
