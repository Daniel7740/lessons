part of '../cubes_screen.dart';

class CubesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CubesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.view_in_ar_rounded,
            size: 35,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Cube',
              style: AppTextStyle.roboto30w400,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
