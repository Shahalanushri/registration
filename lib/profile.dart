import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
            child: Column(children: [
          const CircleAvatar(
            backgroundColor: Colors.yellow,
            radius: 100,
            backgroundImage: NetworkImage(
                'https://media.istockphoto.com/id/512048658/photo/flowers.jpg?s=612x612&w=0&k=20&c=iiZ5x9FVyGUx3GG88PptXl-HGFrJZPpagE2CxCOTimw='),
          ),
          const Text("Nushri",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          const Text("Flutter Developer",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const Divider(
            height: 10,
            color: Colors.white,
            indent: 15,
            endIndent: 15,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 12,
                ),
                Text("8156867466", style: TextStyle(fontSize: 20))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                 SizedBox(
                  width: 12,
                ),
                Text("shahalanushri9@gmail.com", style: TextStyle(fontSize: 20))
              ],
            ),
          )
        ])));
  }
}