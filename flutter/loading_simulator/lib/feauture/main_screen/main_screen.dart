import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_simulator/theme/colors.dart';
import 'package:loading_simulator/theme/text_styles.dart';

class DownloadSimulator extends StatefulWidget {
  const DownloadSimulator({super.key});

  @override
  State<DownloadSimulator> createState() => _DownloadSimulatorState();
}

class _DownloadSimulatorState extends State<DownloadSimulator> {
  late bool _loading;
  late bool _onPressed;
  late double _progressValue;

  @override
  void initState() {
    _onPressed = false;
    _loading = false;
    _progressValue = 0;
    super.initState();
  }

  void _updateProgress() {
    Timer.periodic(
      const Duration(milliseconds: 10),
      (timer) {
        setState(
          () {
            _progressValue += 0.001;

            if (_progressValue.toStringAsFixed(1) == '1.0') {
              _loading = false;
              timer.cancel();
              _progressValue = 0.0;
              _onPressed = false;
              return;
            }
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorefbbff,
      appBar: AppBar(
        backgroundColor: AppColors.color800080,
        title: Text(
          'Симулятор Загрузки',
          style: AppTextStyles.shantellSans24w600.copyWith(
            color: AppColors.colorffffff,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !_loading
                  ? Text(
                      'Нажмите на кнопку, чтобы начать загрузку',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.shantellSans24w600,
                    )
                  : Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(25),
                          ),
                          child: LinearProgressIndicator(
                            value: _progressValue,
                            minHeight: 30,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Загрузка: ${(_progressValue * 100).round()} %',
                          style: AppTextStyles.shantellSans18w400,
                        ),
                      ],
                    ),
              const SizedBox(
                height: 25,
              ),
              !_onPressed
                  ? FloatingActionButton(
                      onPressed: () {
                        setState(
                          () {
                            _onPressed = true;
                            _loading = !_loading;
                            _updateProgress();
                          },
                        );
                      },
                      child: Icon(
                        Icons.download_for_offline_rounded,
                        size: 55,
                        color: AppColors.colorefbbff,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
