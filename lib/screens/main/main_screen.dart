import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/expenses/expenses_screen.dart';
import 'package:admin/screens/incomes/incomes_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(
        onPageChanged: (int val) {
          context.read<MenuController>().controlMenu();
          setState(() {
            pageCount = val;
          });
        },
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(
                  onPageChanged: (int val) {
                    setState(() {
                      pageCount = val;
                    });
                  },
                ),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: getInnerPage(pageCount),
            ),
          ],
        ),
      ),
    );
  }

  getInnerPage(int pageCount) {
    switch (pageCount) {
      case 0:
        return DashboardScreen();
      case 1:
        return IncomesScreen();
      case 2:
        return ExpensesScreen();
    }
  }
}
