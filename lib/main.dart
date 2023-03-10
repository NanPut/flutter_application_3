import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'cardwidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 2 PPB',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/card': (context) => CardWidget()
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Tugas 2'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              child: Text('Klik Disini'),
              onPressed: () {
                Navigator.pushNamed(context, '/page1');
              },
            ),
          ],
        ),
      ),
    );
  }
}
