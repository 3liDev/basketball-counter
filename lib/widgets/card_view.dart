import 'package:flutter/material.dart';

class CardCircle extends StatelessWidget {
  const CardCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 52,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/Basketball-Points.png'),
              backgroundColor: Colors.orange,
            ),
          ),
          const Text(
            "Ali Joher",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          const Text(
            "Computer Engineer\n  Flutter Developer",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(
            color: Colors.black54,
            thickness: 1,
            indent: 60,
            endIndent: 60,
            height: 5,
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.yellow,
            child: const ListTile(
              leading: Icon(
                Icons.phone,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "(+963) 938943188",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.yellow,
            child: const ListTile(
              leading: Icon(
                Icons.mail,
                size: 30,
                color: Colors.black,
              ),
              title: Text(
                "ali18869@gmail.com",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
