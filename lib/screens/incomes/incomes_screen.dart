import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:admin/screens/dashboard/components/transaction_categories_widget.dart';
import 'package:admin/screens/dashboard/components/recent_transactions.dart';
import 'package:admin/screens/dashboard/components/storage_details.dart';
import 'package:admin/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class IncomesScreen extends StatefulWidget {
  @override
  _IncomesScreen createState() => _IncomesScreen();
}

class _IncomesScreen extends State<IncomesScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: SideMenu(),
        body: SafeArea(
          child: SingleChildScrollView(
            primary: false,
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                Header(
                  pageName: 'Incomes',
                ),
                SizedBox(height: defaultPadding),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          //TransactionCategoriesWidget(),
                          SizedBox(height: defaultPadding),
                          RecentTransactions(
                            transactionType: INCOME,
                          ),
                          if (Responsive.isMobile(context))
                            SizedBox(height: defaultPadding),
                        ],
                      ),
                    ),
                    if (!Responsive.isMobile(context))
                      SizedBox(width: defaultPadding),
                    // On Mobile means if the screen is less than 850 we dont want to show it
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
