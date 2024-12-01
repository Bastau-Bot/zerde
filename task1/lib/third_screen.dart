import 'package:flutter/material.dart';
import 'package:task1/first_screen.dart';
import 'package:task1/info.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FirstScreen(),
              ),
            );
          },
          icon: const Icon(Icons.person),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              children: [
                Icon(Icons.notifications_none_outlined),
                SizedBox(width: 10),
                Icon(Icons.tune),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 25),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 193, 192, 192),
                      ),
                    ),
                    labelText: 'Іздеу',
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 193, 192, 192),
                    ),
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
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 10),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 2
                    ),
                    child: Card(
                      child: Container(
                        height: 125,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(71, 111, 111, 111),
                              blurRadius: 12,
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const InfoPage(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'images/toys-removebg-preview.png',
                                    width: 126,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        'Ойыншықтың аты',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      const Text('#001'),
                                      const Text(
                                        '₸ 2560',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 0, 71, 129),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            '365 сатылды',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 110,
                                          ),
                                          FloatingActionButton(
                                            onPressed: () {},
                                            heroTag: null,
                                            mini: true,
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 0, 71, 129),
                                            child: const Text(
                                              '+',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
