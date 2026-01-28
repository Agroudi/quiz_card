import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? subtitle;
  final VoidCallback? onBack;
  final VoidCallback? onMenu;
  final VoidCallback? onAvatarTap;
  final ImageProvider? avatarImage;

  const DefaultAppBar({
    super.key,
    required this.title,
    this.subtitle,
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
      excludeHeaderSemantics: true,
      actionsPadding: EdgeInsets.symmetric(horizontal: 5),
      backgroundColor: primaryPurple,
      elevation: 0,
      centerTitle: true,

      leading: onBack != null
          ? IconButton(
        icon: Image.asset('assets/appBar_icons/back.png'),
        color: Colors.white,
        onPressed: onBack,
      )
          : null,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (subtitle != null)
            Text(
              subtitle!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFFD1C4E9),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
        ],
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: GestureDetector(
            onTap: onAvatarTap,
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Color(0xFFF1BFFF),
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
            icon: Image.asset('assets/appBar_icons/menu.png'),
            color: Colors.white,
            onPressed: onMenu,
          ),
      ],
    );
  }
}