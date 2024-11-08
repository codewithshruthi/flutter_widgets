import 'package:flutter/material.dart';
import 'package:widgets/widgets/action_button.dart';
import 'package:widgets/widgets/expanded_divider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Create an account',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.black),
              ),
              const Row(
                children: [
                  Text('Already have an account?'),
                  Text(
                    ' Login',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Recovery Password',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 33, 142, 243),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Row(
                children: [
                  ExpandedDivider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text('or sign up with'),
                  ),
                  ExpandedDivider(),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(),
                  ActionButton(
                    child: Image.asset(
                      'assets/images/google.png',
                      width: 32,
                      height: 32,
                    ),
                    onPressed: () {},
                  ),
                  ActionButton(
                    child: const Icon(
                      Icons.apple,
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                  ActionButton(
                    child: Image.asset(
                      'assets/images/facebook_logo.jpg',
                      height: 32,
                      width: 32,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('By clicking Create account you agree to Recognotes'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Terms of use',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                Text(' and '),
                Text(
                  'Privacy Policy',
                  style: TextStyle(color: Colors.blueAccent),
                )
              ],
            ),
          ],
        ),
      ),
      // child: RichText(
      //   textAlign: TextAlign.center,
      //   text: const TextSpan(
      //     text: 'By clicking Create account you agree to Recognotes\n',
      //     children: [
      //       TextSpan(
      //         text: 'Terms of use',
      //         style: TextStyle(color: Colors.blueAccent),
      //       ),
      //       TextSpan(
      //         text: ' and',
      //       ),
      //       TextSpan(
      //         text: ' Privacy Policy',
      //         style: TextStyle(color: Colors.blueAccent),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
