import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/send_money_controller.dart';

class SendMoneyView extends GetView<SendMoneyController> {
  const SendMoneyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Send Money Screen')),
    );
  }
}
