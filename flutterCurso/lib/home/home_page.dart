import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela inicial'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(32),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              height: 450,
              width: 400,
              child: Column(
                children: [
                  Text(
                    'login',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  Container(
                    height: 40,
                  ),
                  TextField(
                    decoration: InputDecoration(label: Text('Email')),
                  ),
                  Container(
                    height: 50,
                  ),
                  TextField(
                    decoration: InputDecoration(label: Text('Senha')),
                  ),
                  Container(
                    height: 50,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/tela2');
                      },
                      
                      child: Text('Entrar'),
                      )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
