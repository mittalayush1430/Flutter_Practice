import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MiCard(),
    ),
  );
}

class MiCard extends StatelessWidget {
  const MiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 200.0,
            backgroundImage: NetworkImage(
              'https://www.filmibeat.com/ph-big/2019/07/ismart-shankar_156195627930.jpg',
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('Ayush Mittal'),
          SizedBox(
            height: 20.0,
          ),
          Text('Flutter Dev.'),
          SizedBox(
            height: 20.0,
          ),
          Divider(height: 5.0),
          SizedBox(
            height: 20.0,
          ),
          ReusableContainer(
            icon: Icons.phone,
            text: '9518004798',
          ),
          SizedBox(),
          ReusableContainer(
            icon: Icons.email,
            text: 'mittalayush1430@gmail.com',
          ),
        ],
      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }
}
//test comment