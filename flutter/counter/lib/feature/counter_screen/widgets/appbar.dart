part of '../counter_screen.dart';

class CounrerAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CounrerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColors.color201539,
      title: Text(
        'Счётчик',
        style: AppTextStyles.shantellSans28w600,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
