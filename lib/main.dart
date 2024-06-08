import 'package:flutter/material.dart';

void main() {
  runApp(QEApp());
}

class QEApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QE',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: QEHomePage(),
    );
  }
}

class QEHomePage extends StatefulWidget {
  @override
  _QEHomePageState createState() => _QEHomePageState();
}

class _QEHomePageState extends State<QEHomePage> {
  int ayamGorengCount = 1;
  int totalAmount = 15000;

  void incrementAyamGoreng() {
    setState(() {
      ayamGorengCount++;
      totalAmount += 15000;
    });
  }

  void decrementAyamGoreng() {
    if (ayamGorengCount > 0) {
      setState(() {
        ayamGorengCount--;
        totalAmount -= 15000;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text('Food',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Card(
              child: ListTile(
                // leading: Image.network('https://example.com/ayam_goreng.jpg'),
                title: Text('Ayam Goreng'),
                subtitle: Text('Rp 15,000'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: decrementAyamGoreng,
                    ),
                    Text('$ayamGorengCount'),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: incrementAyamGoreng,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Text('Drink',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Card(
              child: ListTile(
                // leading: Image.network('https://example.com/es_teh_manis.jpg'),
                title: Text('Es Teh Manis'),
                subtitle: Text('Rp 5,000'),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      totalAmount += 5000;
                    });
                  },
                ),
              ),
            ),
            Card(
              child: ListTile(
                // leading: Image.network('https://example.com/es_jeruk.jpg'),
                title: Text('Es Jeruk'),
                subtitle: Text('Rp 8,000'),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      totalAmount += 8000;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.shopping_bag),
                  SizedBox(width: 4),
                  Text('1', style: TextStyle(fontSize: 16)),
                ],
              ),
              Text('Rp $totalAmount',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {},
                child: Text('Checkout'),
                // style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
