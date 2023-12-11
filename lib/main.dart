import 'package:flutter/material.dart';
import "package:flutter_text_box/flutter_text_box.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicaciones ',
      theme: ThemeData(),
      home: const Login (title: 'Desarrollo Movil'),
    );
  }
}
 
class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Text(
              'Bienvenidos al sistema :',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
         TextBoxIcon(
                icon: Icons.email_outlined, 
                inputType: TextInputType.emailAddress,
                label: 'Email',
                hint: 'Please enter your email address here',
                errorText: 'This field is requiered !',
                onSaved: (String value) { }, 
              ),
              SizedBox(height: 16),
              TextBoxIcon(
                icon: Icons.lock_outlined, 
                inputType: TextInputType.number,
                obscure: true,
                label: 'Password', 
                hint: 'Please enter your password here', 
                errorText: 'This field is requiered !', 
                onSaved: (String value){ }
                ),
              const SizedBox(height:16),
              ElevatedButton(
                  // style: style,
                  onPressed: () {},
                  child: const Text('Ingresar'),
                  ),

                ],
        ),
      ),
    );
  }
}
