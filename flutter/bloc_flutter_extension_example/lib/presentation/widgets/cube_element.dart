part of '../home_page.dart';

class CubeElement extends StatelessWidget {
  const CubeElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
      child: Align(
        alignment: Alignment.topCenter,
        child: Material(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.colorf4ece1,
          elevation: 10,
          child: BlocBuilder<ColorBloc, Color>(
            builder: (context, state) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: MediaQuery.of(context).size.height / 3,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: state,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
