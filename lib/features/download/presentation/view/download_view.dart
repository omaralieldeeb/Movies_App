import 'package:flutter/material.dart';
import 'package:movies_app/features/download/presentation/view/widget/download_body.dart';

class DownloadView extends StatelessWidget {
  const DownloadView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DownloadBody(),
    );
  }
}
