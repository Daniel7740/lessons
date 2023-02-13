part of '../cubes.dart';

class CubesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CubesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.view_in_ar_rounded,
            size: 35,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Cube',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
