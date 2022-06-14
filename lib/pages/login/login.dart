import 'package:app/services/api.dart';
import 'package:flutter/material.dart';

String show = '';
int count = 1;

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Osde')),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Osde'),
            ElevatedButton(
              onPressed: () async {
                var reques = await RequesApi(
                        route:
                            'https://pau.osde.com.ar/api/v1/user.by?email=facundo.rodriguez@ctl.com.ar')
                    .get();

                setState(() {
                  show = reques['name'].toString();
                  count++;
                });
              },
              child: const Text('Login'),
            ),
            Text(show.isEmpty ? 'ASHODA' : show),
            Text(count.toString()),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go to dashboard'),
            )
          ],
        ),
      ),
    );
  }
}
