import 'package:counter/feature/counter_screen/bloc/couner_bloc.dart';
import 'package:counter/theme/colors.dart';
import 'package:counter/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part './widgets/appbar.dart';
part './widgets/buttons.dart';
part './widgets/counter_element.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color5f5c8c,
      appBar: const CounrerAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Нажмите кнопку "-" \n для уменьшения числа на 1',
              textAlign: TextAlign.center,
              style: AppTextStyles.shantellSans18w600,
            ),
            const SizedBox(
              height: 15,
            ),
            const CounterElement(),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Нажмите кнопку "+" \n для увеличения числа на 1',
              textAlign: TextAlign.center,
              style: AppTextStyles.shantellSans18w600,
            ),
          ],
        ),
      ),
    );
  }
}
