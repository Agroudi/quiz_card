import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final VoidCallback? onMenu;
  final VoidCallback? onAvatarTap;
  final ImageProvider? avatarImage;

  const DefaultAppBar({
    super.key,
    required this.title,
    this.onBack,
    this.onMenu,
    this.onAvatarTap,
    this.avatarImage,
  });

  static const Color primaryPurple = Color(0xFF7A1FA0);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryPurple,
      elevation: 0,
      centerTitle: true,

      leading: onBack != null
          ? IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        color: Colors.white,
        onPressed: onBack,
      )
          : null,

      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: GestureDetector(
            onTap: onAvatarTap,
            child: CircleAvatar(
              radius: 18, // matches design
              backgroundColor: Colors.white,
              backgroundImage: avatarImage,
              child: avatarImage == null
                  ? const Icon(
                Icons.person,
                color: primaryPurple,
              )
                  : null,
            ),
          ),
        ),

        if (onMenu != null)
          IconButton(
            icon: const Icon(Icons.menu, size: 32),
            color: Colors.white,
            onPressed: onMenu,
          ),
      ],
    );
  }
}