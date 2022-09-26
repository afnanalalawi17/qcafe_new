import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/history_order_controller.dart';

class HistoryOrderView extends GetView<HistoryOrderController> {
  const HistoryOrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HistoryOrderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HistoryOrderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
