part of '../main_screen.dart';

class ApplicationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ApplicationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.color4B493D,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'BLoC Network',
        style: AppTextStyles.lobster28w600,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
