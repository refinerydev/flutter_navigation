import 'package:flutter/material.dart';
import 'package:flutter_navigation/button.dart';
import 'package:flutter_navigation/image.dart';

class Codelabs5 extends StatelessWidget {
  const Codelabs5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Navigation'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Apps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.account_balance_wallet,
                  size: 32,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.donut_large_rounded,
                  size: 32,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.corporate_fare_rounded,
                  size: 32,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Card(
                child: ListTile(
                  leading: const Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Button'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Button()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Image'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ImagePage(
                          name: "Iqbal",
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
