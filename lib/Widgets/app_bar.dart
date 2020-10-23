import 'package:flutter/material.dart';

// class AppBar extends StatelessWidget {
//   AppBar({this.leading, this.title, this.centerTitle, this.actions});

//   final Widget leading;
//   final Widget title;
//   final bool centerTitle;
//   final List actions;
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       leading: Builder(
//         builder: (BuildContext context) {
//           return IconButton(
//             icon: const Icon(Icons.menu),
//             onPressed: () {
//               Scaffold.of(context).openDrawer();
//             },
//             tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//           );
//         },
//       ),
//       title: const Text('AppBar Demo'),
//       centerTitle: true,
//       actions: <Widget>[
//         Padding(
//           padding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 20.0),
//           child: Text(
//             'Clear',
//             style: TextStyle(
//               fontSize: 18.0,
//               fontWeight: FontWeight.w600,
//               color: Colors.white70,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class SliverMultilineAppBar extends StatelessWidget {
  final String title;
  final Widget leading;
  final List<Widget> actions;

  SliverMultilineAppBar({this.title, this.leading, this.actions});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    double availableWidth = mediaQuery.size.width - 160;
    if (actions != null) {
      availableWidth -= 32 * actions.length;
    }
    if (leading != null) {
      availableWidth -= 32;
    }
    return SliverAppBar(
      expandedHeight: 120.0,
      forceElevated: true,
      leading: leading,
      actions: actions,
      flexibleSpace: FlexibleSpaceBar(
        title: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: availableWidth,
          ),
          child: Text(
            title,
            textScaleFactor: .8,
          ),
        ),
      ),
    );
  }
}
