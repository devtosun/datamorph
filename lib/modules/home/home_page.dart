import 'package:datamorph/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: const Text("HOME PAGE")),
      body: Center(
        child: Obx(() => Text("${controller.count}")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ));
}
