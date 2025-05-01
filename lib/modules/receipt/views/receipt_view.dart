import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/receipt_controller.dart';

class ReceiptView extends GetView<ReceiptController> {
  const ReceiptView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Transfer Receipt Screen')),
    );
  }
}
