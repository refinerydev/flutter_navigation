import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String name;
  const ImagePage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                'https://cdn.dribbble.com/users/345970/screenshots/14782007/media/9e507b877e9621ce32563cac4a13ae6c.png?compress=1&resize=400x300&vertical=top',
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return cardImage(index);
              },
              scrollDirection: Axis.horizontal,
              itemCount: 6,
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 40,
            width: 180,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Vote'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget cardImage(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          'assets/image_${index + 1}.png',
        ),
      ),
    );
  }
}
