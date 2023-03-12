import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_flutter_extension_example/presentation/bloc/color_bloc.dart';
import 'package:bloc_flutter_extension_example/theme/colors.dart';
import 'package:bloc_flutter_extension_example/theme/text_styles.dart';

part './widgets/floatin_button_element.dart';
part './widgets/floating_buttons.dart';
part './widgets/app_bar.dart';
part 'widgets/cube_element.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorf4ece1,
      appBar: const HomePageAppBar(),
      body: const CubeElement(),
      floatingActionButton: FloatingButtons(
        colorBloc: BlocProvider.of<ColorBloc>(context),
      ),
    );
  }
}
