import 'package:bloc_flutter_extension_example/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(AppColors.colorf4ece1) {
    // В конструкторе мы можем задекларировать события при помощи метода on
    // В дженерик on мы прописывам Ивент на который мы хотим реагировать
    // Внутрь передаём CallBack функцию
    on<EventYellow>(_onEventYellow);
    on<EventBlue>(_onEventBlue);
    on<EventRed>(_onEventRed);
    on<EventGreen>(_onEventGreen);
  }

  //emit - функция, для изменения состояния, в него передаём новое состояние
  _onEventYellow(EventYellow event, Emitter<Color> emit) {
    emit(AppColors.colorffe185);
  }

  _onEventBlue(EventBlue event, Emitter<Color> emit) {
    emit(AppColors.color6ebaff);
  }

  _onEventRed(EventRed event, Emitter<Color> emit) {
    emit(AppColors.colorc90076);
  }

  _onEventGreen(EventGreen event, Emitter<Color> emit) {
    emit(AppColors.color82ef51);
  }
}

// Абстрактный класс, который объединяет нижеперечисленные Ивенты
abstract class ColorEvent {}

// Ивент на желтый цвет
class EventYellow extends ColorEvent {}

// Ивент на голубой цвет
class EventBlue extends ColorEvent {}

// Ивент на красный цвет
class EventRed extends ColorEvent {}

// Ивент на зелёный цвет
class EventGreen extends ColorEvent {}
