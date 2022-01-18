import 'package:dealflow_demo/ui_screens/clock_in/timer.dart';
import 'package:flutter/material.dart';
import 'package:dealflow_demo/constants.dart' as constants;

class ScanCode extends StatefulWidget {
  const ScanCode({Key? key}) : super(key: key);

  @override
  _ScanCodeState createState() => _ScanCodeState();
}

class _ScanCodeState extends State<ScanCode> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Time Clock",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text(
              'Use this QR code to scan into the time clock',
              style: theme.textTheme.bodyText1!.copyWith(),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShiftTimer()),
                );
              },
              child: Container(
                height: 320,
                width: 320,
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/qr.png'), fit: BoxFit.cover)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
