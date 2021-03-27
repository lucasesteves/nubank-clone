import 'package:NuClone/pages/Pannel/Dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import './Header/header.dart';
import './Dashboard/dashboard.dart';
import './Menu/menu.dart';

class PannelWidget extends StatefulWidget {
  @override
  _PannelWidgetState createState() => _PannelWidgetState();
}

class _PannelWidgetState extends State<PannelWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [HeaderWidget(), DashboardWidget(), MenuWidget()],
          ),
        ),
      ),
    );
  }
}
