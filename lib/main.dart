import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Menu',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Menu'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Food section
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Food',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold)),
                  Divider(),
                  SizedBox(height: 16.0),
                  MenuItem(
                    name: 'Ayam Goreng',
                    price: 15000,
                    quantity: 1,
                  ),
                ],
              ),
            ),

            // Drink section
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Drink',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold)),
                  Divider(),
                  SizedBox(height: 16.0),
                  MenuItem(
                    name: 'Es Teh Manis',
                    price: 5000,
                    quantity: 1,
                  ),
                  MenuItem(
                    name: 'Es Jeruk',
                    price: 8000,
                    quantity: 1,
                  ),
                ],
              ),
            ),

            // Checkout button
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Checkout (Rp 15,000)'),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String name;
  final int price;
  final int quantity;

  MenuItem({required this.name, required this.price, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name),
        Spacer(),
        Text('Rp $price'),
        SizedBox(width: 16.0),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
        Text('$quantity'),
        SizedBox(width: 16.0),
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {},
        ),
      ],
    );
  }
}
