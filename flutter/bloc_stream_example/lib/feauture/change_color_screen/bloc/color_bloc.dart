import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bloc_stream_example/theme/colors.dart';

enum ColorEvent { event_red, event_yellow, event_green }

class ColorBloc {
  Color _color = AppColors.coloref476f;

  final _inputEventController = StreamController<ColorEvent>();
  StreamSink<ColorEvent> get inputEventSink => _inputEventController.sink;

  final _outputStateController = StreamController<Color>();
  Stream<Color> get outputStateStream => _outputStateController.stream;

  void _mapEventToState(ColorEvent event) {
    if (event == ColorEvent.event_red) {
      _color = AppColors.coloref476f;
    } else if (event == ColorEvent.event_yellow) {
      _color = AppColors.colorffd166;
    } else if (event == ColorEvent.event_green) {
      _color = AppColors.color06d6a0;
    } else {
      throw Exception('Wrong Event Type');
    }

    _outputStateController.sink.add(_color);
  }

  ColorBloc() {
    _inputEventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    _inputEventController.close();
    _outputStateController.close();
  }
}
