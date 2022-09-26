import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dash_bord_controller.dart';

class DashBordView extends GetView<DashBordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBordView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DashBordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
