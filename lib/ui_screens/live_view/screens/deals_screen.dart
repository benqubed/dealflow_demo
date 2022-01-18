import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:dealflow_demo/icons/custom_icons_icons.dart';
import 'package:dealflow_demo/ui_screens/live_view/screens/tabs/bank.dart';
import 'package:dealflow_demo/ui_screens/live_view/screens/tabs/customer.dart';
import 'package:dealflow_demo/ui_screens/live_view/screens/tabs/dealership.dart';
import 'package:dealflow_demo/constants.dart' as constants;

class DealsScreen extends StatefulWidget {
  const DealsScreen({Key? key}) : super(key: key);

  @override
  _DealsScreenState createState() => _DealsScreenState();
}

class _DealsScreenState extends State<DealsScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: const Text(
            'Deal Jacket: John Daniels',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CustomIcons.search,
              ),
            )
          ],
          bottom: TabBar(
            labelStyle: theme.textTheme.bodyText2!.copyWith(),
            labelColor: constants.whiteColor,
            tabs: const [
              Tab(
                text: "Customer",
              ),
              Tab(
                text: "Dealership",
              ),
              Tab(
                text: "Bank",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          physics: BouncingScrollPhysics(),
          dragStartBehavior: DragStartBehavior.down,
          children: [
            CustomerTab(),
            DealershipTab(),
            BankTab(),
          ],
        ),
      ),
    );
  }
}
