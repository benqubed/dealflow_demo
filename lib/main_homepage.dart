import 'package:dealflow_demo/icons/custom_icons_icons.dart';
import 'package:dealflow_demo/ui_screens/clock_in/main.dart';
import 'package:dealflow_demo/ui_screens/guest_history/home.dart';
import 'package:dealflow_demo/ui_screens/inventory/homepage.dart';
import 'package:dealflow_demo/ui_screens/live_view/screens/deals_screen.dart';
import 'package:dealflow_demo/ui_screens/live_view/screens/homepage.dart';
import 'package:dealflow_demo/ui_screens/live_view/screens/live_view.dart';
import 'package:dealflow_demo/ui_screens/live_view/screens/next_up_queue.dart';
import 'package:dealflow_demo/ui_screens/live_view/screens/tasks.dart';
import 'package:flutter/material.dart';
import 'package:dealflow_demo/constants.dart' as constants;

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dealflow Demo"),
      ),
      body: const Center(
        child: Text("Main Demo Home Page"),
      ),
      bottomNavigationBar: _DemoBottomAppBar(),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: 0,
      //   items: <BottomNavigationBarItem>[
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications),
      //       label: 'Notifications',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: InkWell(
      //           radius: 50.0,
      //           onTap: () {
      //             Navigator.push(context, MaterialPageRoute(builder: (context) => MainInventory()));
      //           },
      //           child: const Icon(Icons.directions_car)),
      //       label: 'Inventory',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: Icon(Icons.people),
      //       label: 'Customers',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: InkWell(
      //         radius: 50.0,
      //         onTap: () {
      //           showModalBottomSheet(
      //             // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      //             barrierColor: Colors.black26,
      //             backgroundColor: Colors.transparent,
      //             context: context,
      //             builder: (context) {
      //               return const CustomDialog();
      //             },
      //           );
      //         },
      //         child: const Icon(Icons.more_horiz, size: 30.0),
      //       ),
      //       label: 'More',
      //     )
      //   ],
      // ),
    );
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              child: InkWell(
                highlightColor: Colors.transparent,
                onTap: () {},
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: theme.primaryColor,
                    ),
                    Text(
                      'Home',
                      style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: InkWell(
                highlightColor: Colors.transparent,
                onTap: () {},
                child: Column(
                  children: [
                    const Icon(Icons.notifications),
                    Text(
                      'Notifications',
                      style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: InkWell(
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MainInventory()));
                },
                child: Column(
                  children: [
                    const Icon(Icons.directions_car),
                    Text(
                      'Inventory',
                      style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: InkWell(
                highlightColor: Colors.transparent,
                onTap: () {},
                child: Column(
                  children: [
                    const Icon(Icons.people),
                    Text(
                      'Customers',
                      style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: InkWell(
                highlightColor: Colors.transparent,
                onTap: () {
                  showModalBottomSheet(
                    barrierColor: Colors.black26,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return const CustomDialog();
                    },
                  );
                },
                child: Column(
                  children: [
                    const Icon(Icons.more_horiz),
                    Text(
                      'More',
                      style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 100.0),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 80.0,
                height: 2.0,
                color: theme.primaryColor,
              ),
            ),
            Expanded(
                child: GridView.count(crossAxisCount: 4, crossAxisSpacing: 2.0, mainAxisSpacing: 8.0, children: [
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => GuestHistory()));
                      },
                      icon: Icon(Icons.report)),
                  Text(
                    "Reports",
                    maxLines: 1,
                    style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => DealsScreen()));
                      },
                      icon: Icon(Icons.notes)),
                  Text(
                    "Noticeboard",
                    maxLines: 1,
                    style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()));
                      },
                      icon: Icon(Icons.dashboard)),
                  Text(
                    "Dashboard",
                    maxLines: 1,
                    style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LiveViewScreen()));
                      },
                      icon: Icon(Icons.video_camera_back)),
                  Text(
                    "Live View",
                    maxLines: 1,
                    style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ClockInHomeScreen()));
                      },
                      icon: Icon(Icons.timer)),
                  Text(
                    "Clock-in",
                    maxLines: 1,
                    style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.schedule)),
                  Text(
                    "Scheduling",
                    maxLines: 1,
                    style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DealsScreen()));
                      },
                      icon: Icon(Icons.handyman)),
                  Text(
                    "My Deals",
                    maxLines: 1,
                    style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.splitscreen)),
                  Text(
                    "Split Deals",
                    maxLines: 1,
                    style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyTasks()));
                      },
                      icon: Icon(Icons.task)),
                  Text(
                    "Tasks",
                    maxLines: 1,
                    style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NextUpList()));
                      },
                      icon: Icon(Icons.calendar_today)),
                  Text(
                    "Appointments",
                    maxLines: 1,
                    style: theme.textTheme.caption!.copyWith(overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
