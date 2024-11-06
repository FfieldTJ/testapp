import 'package:flutter/material.dart';
import 'package:testapps/homepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Login'),
          ),
          backgroundColor: const Color.fromARGB(255, 89, 186, 234),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: Image.asset(
                'assets/images/E.jpg',
              ),
            ),

            SizedBox(
              height: 50,
            ),

            //username
            const SizedBox(
              height: 40,
              width: 200,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //password
            const SizedBox(
              height: 40,
              width: 200,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            //Buttom
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage()));
                    },
                    child: Text('OK')),
                ElevatedButton(onPressed: null, child: Text('CANCLE')),
              ],
            ),
          ],
        )));
  }
}
