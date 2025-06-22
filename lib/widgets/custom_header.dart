import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final bool showDrawerIcon;
  final bool noIcon;
  final VoidCallback? onBackPressed;

  const CustomHeader({
    super.key,
    this.navigatorKey,
    this.showDrawerIcon = false,
    this.noIcon = false,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: SafeArea(
          child: Row(
            children: [
              // 🔙 Back or Drawer or nothing
              noIcon
                  ? SizedBox(width: 48)
                  : IconButton(
                    icon: Icon(
                      showDrawerIcon ? Icons.menu : Icons.arrow_back_ios_new,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      if (showDrawerIcon) {
                        Scaffold.of(context).openDrawer();
                      } else if (onBackPressed != null) {
                        onBackPressed!(); // 🔁 delegate to outer logic
                      } else {
                        final nav = navigatorKey?.currentState;
                        if (nav != null && nav.canPop()) {
                          nav.pop();
                        } else {
                          Navigator.of(context).maybePop();
                        }
                      }
                    },
                  ),

              Spacer(),

              // 🏠 Logo - go to first screen in tab
              GestureDetector(
                onTap: () {
                  navigatorKey?.currentState?.popUntil(
                    (route) => route.isFirst,
                  );
                },
                child: Image.asset("projectimages/stylish.png", height: 30),
              ),

              Spacer(),

              // 👤 Profile icon (optional: make it switch tab)
              IconButton(
                icon: Icon(Icons.account_circle_outlined, color: Colors.black),
                onPressed: () {
                  navigatorKey?.currentState?.pushNamed('/profile');
                  // Or call a passed-in `onTabChange!(3)` to switch to profile tab
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
