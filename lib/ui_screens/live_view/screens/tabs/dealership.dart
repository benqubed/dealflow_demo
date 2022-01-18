import 'package:flutter/material.dart';
import 'package:dealflow_demo/constants.dart' as constants;
import 'package:dealflow_demo/ui_screens/live_view/widgets/document.dart';

class DealershipTab extends StatefulWidget {
  const DealershipTab({Key? key}) : super(key: key);

  @override
  _DealershipTabState createState() => _DealershipTabState();
}

class _DealershipTabState extends State<DealershipTab> {
  List<DocumentFile> docs = [
    const DocumentFile(name: "Purchase Invoice"),
    const DocumentFile(name: "Buyers Order"),
    const DocumentFile(name: "Finance Contract"),
    const DocumentFile(name: "Title Application"),
    const DocumentFile(name: "Credit Application"),
    const DocumentFile(name: "Service Contracts"),
    const DocumentFile(name: "Vehicle Registration Documents"),
    const DocumentFile(name: "Privacy Notice"),
    const DocumentFile(name: "Credit Score Disclosure"),
    const DocumentFile(name: "Vehicle Quick Start Guide"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: docs.length,
      itemBuilder: (context, index) => docs[index],
    );
  }
}
