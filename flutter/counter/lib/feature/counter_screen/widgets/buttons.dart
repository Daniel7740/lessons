part of '../counter_screen.dart';

class IncDecButton extends StatelessWidget {
  const IncDecButton({
    required this.bloc,
    required this.tooltipText,
    required this.evnt,
    required this.buttonIcon,
    required this.radiusLR,
    super.key,
  });

  final CounterBloc bloc;
  final String tooltipText;
  final CounterEvent evnt;
  final Icon buttonIcon;
  final BorderRadius radiusLR;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.color4e4175,
        borderRadius: radiusLR,
      ),
      child: IconButton(
        onPressed: () {
          bloc.add(evnt);
        },
        tooltip: tooltipText,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon: buttonIcon,
      ),
    );
  }
}
