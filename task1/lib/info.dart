import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Ойыншықтың аты',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 22),
            child: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40),
              ),
              Image.asset(
                'images/toys.png',
                width: 300,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.blue,
                  size: 15,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ойыншықтың аты',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const Text(
                  '#001',
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  '₸ 2560',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 71, 129),
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const Text(
                  '365 сатылды',
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 30,
                  width: 150,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                    ),
                    onPressed: () {},
                    child: const Text('Cебетке қосу'),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vestibulum aliquam nisi pretium congue. Vivamus eget ultricies diam.',
                  style: TextStyle(
                    color: Color.fromARGB(221, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}