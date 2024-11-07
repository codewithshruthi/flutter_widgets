import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: const BackButton(),
          title: const Text(
            'Hello',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: const [
            CircleAvatar(
              backgroundColor: Colors.black,
            ),
            SizedBox(width: 8),
            CircleAvatar(
              backgroundColor: Colors.red,
            ),
            SizedBox(width: 8),
          ],
        ),
        body: Container(
          width: double.infinity,
          color: Colors.purple,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Abhijith'),
              CircularProgressIndicator(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ));
  }
}
