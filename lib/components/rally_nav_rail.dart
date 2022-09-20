import 'package:flutter/material.dart';
import 'package:rally_app/styles/text_styles.dart';

class RallyNavRail extends StatefulWidget {
  const RallyNavRail({Key? key}) : super(key: key);

  @override
  State<RallyNavRail> createState() => _RallyNavRailState();
}

class _RallyNavRailState extends State<RallyNavRail> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAligment = -1.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) => ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: NavigationRail(
                backgroundColor: const Color(0Xff33333e),
                leading: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.network(
                    'https://play-lh.googleusercontent.com/ZaGzaQC0aHnAgAcTIKu3t8q44OIlhiSH7m4ML2iJ4Yd-F6qnD3bDU8nMutQzPo7-AOn6=w240-h480-rw',
                    height: 100,
                    width: 100,
                  ),
                ),
                selectedIndex: _selectedIndex,
                groupAlignment: groupAligment,
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                  switch (index) {
                    case 0:
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/home');
                      break;
                    case 1:
                      Navigator.popUntil(
                        context,
                        ModalRoute.withName('/home'),
                      );
                      Navigator.pushNamed(context, '/menuItem');

                      break;
                    case 2:
                      Navigator.popUntil(
                        context,
                        ModalRoute.withName('/home'),
                      );
                      Navigator.pushNamed(context, '/menuItem');

                      break;
                    case 3:
                      Navigator.popUntil(
                        context,
                        ModalRoute.withName('/home'),
                      );
                      Navigator.pushNamed(context, '/menuItem');
                      break;
                    case 4:
                      Navigator.popUntil(
                        context,
                        ModalRoute.withName('/home'),
                      );
                      Navigator.pushNamed(context, '/settings');
                      break;
                    default:
                      Navigator.popUntil(
                        context,
                        ModalRoute.withName('/home'),
                      );
                  }
                },
                destinations: <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: const Icon(
                      Icons.bookmark_border,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Overview',
                      style: primaryTextStyle,
                    ),
                  ),
                  NavigationRailDestination(
                    icon: const Icon(
                      Icons.attach_money,
                      color: Colors.white,
                    ),
                    selectedIcon: const Icon(Icons.attach_money),
                    label: Text(
                      'Accounts',
                      style: primaryTextStyle,
                    ),
                  ),
                  NavigationRailDestination(
                    icon: const Icon(
                      Icons.money_off,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Bills',
                      style: primaryTextStyle,
                    ),
                  ),
                  NavigationRailDestination(
                    icon: const Icon(
                      Icons.account_balance,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Budgets',
                      style: primaryTextStyle,
                    ),
                  ),
                  NavigationRailDestination(
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Settings',
                      style: primaryTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
