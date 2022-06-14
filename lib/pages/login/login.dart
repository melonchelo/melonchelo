import 'package:app/services/api.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String show = '';
    return Scaffold(
      appBar: AppBar(title: const Text('Osde')),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Osde'),
              Text(show),
              ElevatedButton(
                onPressed: () async {
                  var reques = await RequesApi(
                          route:
                              'https://pau.osde.com.ar/api/v1/user.by?email=facundo.rodriguez@ctl.com.ar')
                      .tomar();

                  setState(() {
                    show = reques.toString();
                  });
                  print(reques);
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
