import 'package:bloc_stream_example/feauture/change_color_screen/bloc/color_bloc.dart';
import 'package:bloc_stream_example/theme/colors.dart';
import 'package:bloc_stream_example/theme/text_styles.dart';
import 'package:flutter/material.dart';

part './widgets/floating_button_element.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ColorBloc _bloc = ColorBloc();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color118ab2,
      appBar: AppBar(
        backgroundColor: AppColors.color073b4c,
        title: Text(
          'BLoC with Stream',
          style: AppTextStyles.text28w600,
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
        child: Align(
          alignment: Alignment.topCenter,
          child: Material(
            color: AppColors.color118ab2,
            elevation: 10,
            borderRadius: BorderRadius.circular(20),
            child: StreamBuilder(
              stream: _bloc.outputStateStream,
              initialData: Colors.transparent,
              builder: (context, snapshot) {
                return AnimatedContainer(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    color: snapshot.data,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  duration: const Duration(milliseconds: 500),
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingButton(
            elementColor: AppColors.coloref476f,
            bloc: _bloc,
            eventBlocColor: ColorEvent.event_red,
          ),
          FloatingButton(
            elementColor: AppColors.colorffd166,
            bloc: _bloc,
            eventBlocColor: ColorEvent.event_yellow,
          ),
          FloatingButton(
            elementColor: AppColors.color06d6a0,
            bloc: _bloc,
            eventBlocColor: ColorEvent.event_green,
          ),
        ],
      ),
    );
  }
}
