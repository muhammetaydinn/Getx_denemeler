import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_state_management/pages/home/controllers/sayac_controller.dart';

import 'ceviri.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(), // your translations
      locale: const Locale(
          'tr', 'TR'), // translations will be displayed in that locale
      fallbackLocale: const Locale('en',
          'UK'), // specify the fallback locale in case an invalid locale is selected.

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final SayacController _controller = Get.put(SayacController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: newMethod(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: 1,
              onPressed: () {
                _controller.artir();
                print(_controller.sayac);
              },
              child: const Icon(Icons.add)),
          FloatingActionButton(
              heroTag: 2,
              onPressed: () {
                _controller.azalt();
                print(_controller.sayac);
              },
              child: const Icon(Icons.remove)),
          FloatingActionButton(
              heroTag: 3,
              onPressed: () {
                if (Get.isDarkMode) {
                  Get.changeTheme(ThemeData.light());
                } else {
                  Get.changeTheme(ThemeData.dark());
                }
              },
              child: const Icon(Icons.swap_calls)),
          FloatingActionButton(
              heroTag: 4,
              onPressed: () {
                _controller.snack();
              },
              child: const Icon(Icons.add)),
          FloatingActionButton(
              heroTag: 5,
              onPressed: () {
                Get.to(const NewPage());
              },
              child: const Icon(Icons.arrow_back)),
        ],
      ),
    );
  }

  Center newMethod() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "button_text".tr,
            style: const TextStyle(fontSize: 25),
          ),
          Obx(
            () => Text(
              _controller.sayac.toString(),
              style: const TextStyle(fontSize: 31),
            ),
          )
        ],
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "hello".tr,
              style: const TextStyle(fontSize: 31),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("adasdas"))
          ],
        ),
      ),
    );
  }
}
