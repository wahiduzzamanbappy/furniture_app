import 'package:flutter/material.dart';
import 'package:furniture_app/activity/sofa.dart';

import '../activity/table_lamp.dart';
import '../activity/tv.dart';
import '../activity/wooden_chair.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Find the home furniture',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 121, 147, 174),
                          borderRadius: BorderRadius.circular(10)),
                      height: 100,
                      width: 80,
                      child: const Center(
                        child: Text(
                          'All',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 100,
                      width: 80,
                      child: const Center(
                        child: Icon(
                          Icons.chair,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 100,
                      width: 80,
                      child: const Center(
                        child: Icon(
                          Icons.tv,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 100,
                      width: 80,
                      child: const Center(
                        child: Icon(
                          Icons.table_bar_sharp,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 100,
                      width: 80,
                      child: const Center(
                        child: Icon(
                          Icons.table_restaurant,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 300,
                  width: 180,
                  child: Card(
                    shadowColor: Colors.grey.shade200,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/image/sofa.png'),
                        const Text(
                          'Room Sofa',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Row(
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
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(3),
                              child: Text('¥2500 ', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),),
                            ),
                            const SizedBox(width: 45,),
                            IconButton(
                              onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SofaDetails(),),);
                            },icon:const Icon(Icons.add_circle,), ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 300,
                  width: 180,
                  child: Card(
                    shadowColor: Colors.grey.shade200,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/image/image 1.png'),
                        const Text(
                          'Toshiba TV',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text('¥35250 ', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),),
                            ),
                            const SizedBox(width: 35,),
                            IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ToshibaTv(),),);
                              },icon:const Icon(Icons.add_circle,), ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 300,
                  width: 180,
                  child: Card(
                    shadowColor: Colors.grey.shade200,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/image/tablelamp.png'),
                        const Text(
                          'Table Lamp',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                backgroundColor: Color.fromARGB(255, 181, 111, 83),
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
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text('¥550 ', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),),
                            ),
                            const SizedBox(width: 45,),
                            IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>  const TableLamp(),),);
                              },icon:const Icon(Icons.add_circle,), ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 300,
                  width: 180,
                  child: Card(
                    shadowColor: Colors.grey.shade200,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/image/loungechair.png'),
                        const Text(
                          'Wooden Chair',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                backgroundColor: Color.fromARGB(255, 236, 208, 170),
                                maxRadius: 10,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                backgroundColor: Color.fromARGB(255, 148, 113, 70),
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
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text('¥35250 ', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),),
                            ),
                            const SizedBox(width: 35,),
                            IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const WoodenChair(),),);
                              },icon:const Icon(Icons.add_circle,), ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
