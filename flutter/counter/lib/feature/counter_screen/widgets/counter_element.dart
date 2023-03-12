part of '../counter_screen.dart';

class CounterElement extends StatelessWidget {
  const CounterElement({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc bloc = BlocProvider.of<CounterBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IncDecButton(
          bloc: bloc,
          tooltipText: 'Минус 1',
          evnt: DecrimentEvent(),
          buttonIcon: Icon(
            Icons.remove_outlined,
            color: AppColors.colore6e4ec,
          ),
          radiusLR: const BorderRadius.horizontal(
            left: Radius.circular(15),
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
            child: BlocBuilder<CounterBloc, int>(
              builder: (context, state) {
                return Text(
                  state.toString(),
                  style: AppTextStyles.shantellSans28w600,
                );
              },
            ),
          ),
        ),
        VerticalDivider(
          color: AppColors.color9f98c8,
          width: 1,
        ),
        IncDecButton(
          bloc: bloc,
          tooltipText: 'Плюс 1',
          evnt: IncrementEvent(),
          buttonIcon: Icon(
            Icons.add_rounded,
            color: AppColors.colore6e4ec,
          ),
          radiusLR: const BorderRadius.horizontal(
            right: Radius.circular(15),
          ),
        ),
      ],
    );
  }
}
