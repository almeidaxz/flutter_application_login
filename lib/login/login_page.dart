import 'package:desafio_login/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login_page';

  const LoginPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset('lib/assets/umbrella-logo.jpg'),
        ));

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'leon@re4.com',
      decoration: InputDecoration(
          hintText: 'E-mail',
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '********',
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Senha',
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20, 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ElevatedButton(
        child: const Text('Login'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
      ),
    );

    final forgotLabel = ElevatedButton(
      child: const Text('Esqueceu a senha?'),
      onPressed: () {
        // ignore: avoid_print
        print('Pressionado');
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 24, right: 24),
          children: <Widget>[
            logo,
            const SizedBox(height: 48),
            email,
            const SizedBox(height: 8),
            password,
            const SizedBox(height: 24),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
