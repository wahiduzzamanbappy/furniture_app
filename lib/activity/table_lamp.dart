import 'package:flutter/material.dart';
import 'package:furniture_app/UI/home.dart';
import 'package:input_quantity/input_quantity.dart';

class TableLamp extends StatefulWidget {
  const TableLamp({super.key});

  @override
  State<TableLamp> createState() => _TableLampState();
}

class _TableLampState extends State<TableLamp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16),
            child: Icon(
              Icons.favorite_border,
              size: 30,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: 800,
        width: 400,
        child: Card(
          shadowColor: Colors.grey.shade200,
          color: Colors.white,
          child: Column(
            children: [
              Image.asset(
                'assets/image/tablelamp.png',
                alignment: Alignment.center,
                width: 250,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Room Sofa',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  InputQty(
                    decoration: const QtyDecorationProps(
                      btnColor: Colors.black,
                    ),
                    maxVal: double.infinity,
                    initVal: 1,
                    minVal: 1,
                    steps: 1,
                    onQtyChanged: (val) {
                      print(val);
                    },
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 121, 150, 178),
                        maxRadius: 10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        maxRadius: 10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        maxRadius: 10,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: 350,
                child: const Text(
                  'Table lamps provide focused lighting '
                  'and add style to any space, perfect for '
                  'reading or creating a cozy ambiance.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Text(
                      '¥2500',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                            //color: Colors.white
                            ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
