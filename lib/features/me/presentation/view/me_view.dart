import 'package:flutter/material.dart';
import 'package:movies_app/features/me/presentation/view/widget/me_body.dart';

class MeView extends StatelessWidget {
  const MeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MeBody(),
    );
  }
}
