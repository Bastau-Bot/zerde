import 'package:flutter/material.dart';
import 'package:task1/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              const Text(
                'Тіркелу',
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Form(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 25),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(9),
                            ),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 193, 192, 192),
                            ),
                          ),
                          labelText: 'Аты жөні',
                          labelStyle: TextStyle(
                            color: Colors.grey[350],
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 193, 192, 192),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 25),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(9),
                            ),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 193, 192, 192),
                            ),
                          ),
                          labelText: 'Телефон немесе E-mail',
                          labelStyle: TextStyle(
                            color: Colors.grey[350],
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 193, 192, 192),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 25),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(9),
                            ),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 193, 192, 192),
                            ),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.grey[350],
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 193, 192, 192),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text.rich(
                        TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          text: 'Менің аккаунтым бар. ',
                          children: [
                            TextSpan(
                              style: TextStyle(color: Colors.blue),
                              text: 'Кіру',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SecondScreen(),
                              ),
                            );
                          },
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Color.fromARGB(255, 0, 74, 134))),
                          child: const Text(
                            'Тіркелу',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
