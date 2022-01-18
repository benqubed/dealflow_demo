import 'package:dealflow_demo/ui_screens/trade_in/home.dart';
import 'package:flutter/material.dart';
import 'package:dealflow_demo/constants.dart' as constants;
import 'package:dealflow_demo/icons/custom_icons_icons.dart';
import 'package:dealflow_demo/ui_screens/live_view/screens/deals_screen.dart';
import 'package:dealflow_demo/ui_screens/live_view/screens/live_view.dart';
import 'package:dealflow_demo/ui_screens/live_view/screens/next_up_queue.dart';
import 'package:dealflow_demo/ui_screens/live_view/screens/tasks.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    List<OptionMenu> optionMenus = [
      OptionMenu(
        iconPath: Icon(CustomIcons.vehicle_alt, color: theme.primaryColor),
        name: 'Add Purchase Vehicle',
        optionFunction: () {},
      ),
      OptionMenu(
        iconPath: Icon(CustomIcons.bus, color: theme.primaryColor),
        name: 'Trade In Vehicle',
        optionFunction: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const TradeInScreen()));
        },
      ),
      OptionMenu(
        iconPath: Icon(CustomIcons.notes, color: theme.primaryColor),
        name: 'Credit Inquiry',
        optionFunction: () {},
      ),
      OptionMenu(
        iconPath: Icon(CustomIcons.search, color: theme.primaryColor),
        name: 'Compliance & Fraud',
        optionFunction: () {},
      ),
      OptionMenu(
        iconPath: Icon(CustomIcons.warning, color: theme.primaryColor),
        name: 'Update CRM',
        optionFunction: () {},
      ),
      OptionMenu(
        iconPath: Icon(CustomIcons.warning, color: theme.primaryColor),
        name: 'Application',
        optionFunction: () {},
      ),
      OptionMenu(
        iconPath: Icon(CustomIcons.warning, color: theme.primaryColor),
        name: 'Update DMS',
        optionFunction: () {},
      ),
      OptionMenu(
        iconPath: Icon(CustomIcons.contact, color: theme.primaryColor),
        name: 'Deal Flow',
        optionFunction: () {},
      ),
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("John Daniels"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CustomIcons.query,
                  color: constants.whiteColor,
                )),
          ],
          toolbarHeight: 200,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/user.jpeg"),
                        maxRadius: 40,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Icon(
                                    Icons.location_pin,
                                    size: 20.0,
                                    color: theme.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Flexible(
                                  child: RichText(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: "432 Green Road, Binghamton NY, 13901",
                                          style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                                        )
                                      ])),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.cake,
                                  size: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Flexible(
                                  child: RichText(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: "May 19, 1983",
                                          style: theme.textTheme.bodyText2!.copyWith(color: constants.greyColor),
                                        )
                                      ])),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.phone,
                                  size: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Flexible(
                                  child: RichText(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: "(+11) 421-453634",
                                          style: theme.textTheme.bodyText2!.copyWith(color: constants.greyColor),
                                        )
                                      ])),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.email,
                                  size: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Flexible(
                                  child: RichText(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: "Harvey@gmail.com",
                                          style: theme.textTheme.bodyText2!.copyWith(color: constants.greyColor),
                                        )
                                      ])),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.group_add,
                            color: constants.goldColor,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CustomIcons.info,
                            color: constants.goldColor,
                            size: 30,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: optionMenus.length,
              itemBuilder: (BuildContext context, int index) {
                return optionMenus[index];
              }),
        ));
  }
}

class OptionMenu extends StatelessWidget {
  final String name;
  final Widget iconPath;
  final VoidCallback optionFunction;
  const OptionMenu({Key? key, required this.iconPath, required this.name, required this.optionFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: optionFunction,
            child: iconPath,
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0.0),
              shape: MaterialStateProperty.all(const CircleBorder()),
              padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
              backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
            ),
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: theme.textTheme.caption!.copyWith(),
          )
        ],
      ),
    );
  }
}
