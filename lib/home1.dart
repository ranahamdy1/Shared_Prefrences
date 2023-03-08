import 'package:flutter/material.dart';
import 'package:shared_prefrences/shared_prefrence.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FirstScreenState();
  }
}

class FirstScreenState extends State<FirstScreen> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: const Icon(Icons.star),
        title: const Text("My app"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your username',
                ),
                controller: textController,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                CacheData.setData(
                  key: 'userName',
                  value: textController.text,
                );
              },
              child: const Text("save"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                CacheData.deleteData(key: 'userName');
                debugPrint(CacheData.getData(key: 'userName'));
              },
              child: const Text("delete"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                debugPrint("userName is ${CacheData.getData(key: 'userName')}");
              },
              child: const Text("get"),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
