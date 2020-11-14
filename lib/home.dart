import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task7/appbar.dart';

class Lissst extends StatefulWidget {
@override
_LissstState createState() => _LissstState();
}

class _LissstState extends State<Lissst> {
Widget myt(String x) {
return Padding(
padding: const EdgeInsets.only(top: 20, left: 15, bottom: 10),
child: Text(
x,
style: TextStyle(
color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
),
);
}

// List nada = [
//   {'ph': 'assets/images/gro.jpeg'},
//   {'ph': 'assets/images/grocc.jpeg'}
// ];

Widget mycontainer() {
return Container(
height: 250,
child: ListView.builder(
scrollDirection: Axis.horizontal,
itemCount: 5,
itemBuilder: (context, index) {
return mylistview();
},
),
);
}

Widget mylistview() {
return Padding(
padding: const EdgeInsets.all(8.0),
child: Container(
child: Column(
children: <Widget>[
Container(
height: 130,
width: MediaQuery.of(context).size.width - 70,
decoration: BoxDecoration(
color: Colors.grey,
borderRadius: BorderRadius.circular(30),
image: DecorationImage(
fit: BoxFit.cover,
image: AssetImage('assets/burger.jpg')),
),
),
Padding(
padding: const EdgeInsets.only(right: 20, left: 10, top: 10),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
Text(
'Golden donut\'s',
style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
),
Row(
children: <Widget>[
Icon(Icons.motorcycle),
Text(
' within 34 min',
style: TextStyle(
fontSize: 15, fontWeight: FontWeight.bold),
)
],
),
],
),
),
Padding(
padding: const EdgeInsets.only(right: 300),
child: Text(
'Desert',
style: TextStyle(color: Colors.grey),
),
),
Padding(
padding: const EdgeInsets.only(left: 10),
child: Row(
children: <Widget>[
Icon(
Icons.face,
color: Colors.grey,
),
Text(
'  Very good  ',
style: TextStyle(color: Colors.grey),
),
Padding(
padding: const EdgeInsets.only(left: 10),
child: Row(
children: <Widget>[
Icon(
Icons.donut_large,
color: Colors.grey,
size: 10,
),
Text(
' Delivery : Free',
style: TextStyle(color: Colors.grey),
)
],
),
),
],
),
),
Padding(
padding: const EdgeInsets.only(left: 10),
child: Row(
children: <Widget>[
Icon(
Icons.check_box,
color: Colors.purple[700],
),
Text(
' special offer',
style: TextStyle(
color: Colors.purple[700], fontWeight: FontWeight.bold),
),
],
),
),
],
),
  height: 250,
  width: MediaQuery.of(context).size.width - 50,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30), color: Colors.white),
),
);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarrr(),
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
            child: Text(
              'What would you like to order, Alaa',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/pizza.jpg')),
                    ),
                  ),
                );
              },
            ),
          ),
          myt('Groceries and more'),
          mycontainer(),
          myt('all day dessert'),
          mycontainer(),
          myt('Free delivery'),
          mycontainer(),
          myt('Nearest to you'),
          mycontainer(),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'View all restaurants',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
                height: 55,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}