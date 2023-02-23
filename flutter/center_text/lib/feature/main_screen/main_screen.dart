import 'package:center_text/core/theme/colors.dart';
import 'package:center_text/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  const TextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color1e2124,
      body: Center(
        child: Text(
          'Hello Flutter',
          style:
              AppTextStyles.roboto40w400.copyWith(color: AppColors.color7289da),
        ),
      ),
    );
  }
}
