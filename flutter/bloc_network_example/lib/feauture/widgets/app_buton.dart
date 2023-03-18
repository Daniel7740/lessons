part of '../main_screen.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.nameOfButton,
    required this.onButtonTap,
    super.key,
  });

  final String nameOfButton;
  final Function() onButtonTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onButtonTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.colorBF3012,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          child: Text(
            nameOfButton,
            style: AppTextStyles.lobster18w400,
          ),
        ),
      ),
    );
  }
}
