import 'package:flutter/material.dart';

class DashboardModel {
  final String title;
  final IconData icon;
  final String subtitle;
  final bool button;
  final String buttonText;
  final double currentBill;
  final String limitText;
  final double moneyAvaible;

  const DashboardModel(this.title, this.icon, this.subtitle, this.button,
      [this.buttonText, this.currentBill, this.limitText, this.moneyAvaible]);
}
