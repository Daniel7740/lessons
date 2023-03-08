import 'package:counter/theme/colors.dart';
import 'package:counter/theme/text_styles.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 50;

  void _incrimentCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrimentCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color5f5c8c,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.color201539,
        title: Text(
          'Счётчик',
          style: AppTextStyles.shantellSans28w600,
        ),
      ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.color4e4175,
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(15),
                    ),
                  ),
                  child: IconButton(
                    onPressed: _decrimentCounter,
                    tooltip: 'Минус 1',
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: Icon(
                      Icons.remove_outlined,
                      color: AppColors.colore6e4ec,
                    ),
                  ),
                ),
                VerticalDivider(
                  color: AppColors.color9f98c8,
                  width: 1,
                ),
                Container(
                  alignment: Alignment.center,
                  color: AppColors.color4e4175,
                  height: 48,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '$_counter',
                      style: AppTextStyles.shantellSans28w600,
                    ),
                  ),
                ),
                VerticalDivider(
                  color: AppColors.color9f98c8,
                  width: 1,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.color4e4175,
                    borderRadius: const BorderRadius.horizontal(
                      right: Radius.circular(15),
                    ),
                  ),
                  child: IconButton(
                    onPressed: _incrimentCounter,
                    tooltip: 'Плюс 1',
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: Icon(
                      Icons.add_outlined,
                      color: AppColors.colore6e4ec,
                    ),
                  ),
                ),
              ],
            ),
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
