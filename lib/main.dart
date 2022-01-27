import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var k = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                Icon(
                  Icons.search,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
        body: Container(
            padding: EdgeInsets.only(left: 25),
            child: ListView(
              children: [
                Text(
                  'Hello surendar,',
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Let's get something?",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 300,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Colors.orange.shade300,
                                Colors.yellow.shade600,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'INTERIOR IN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'YOUR HOUSE',
                              style: TextStyle(
                                  color: Colors.orange.shade500,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2.5),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 8,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'more info',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 8,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                'Get Now',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.orange),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  'category',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 95,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            k = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 1,
                                  color: k != index
                                      ? Colors.grey.shade300
                                      : Colors.yellow.shade600)),
                          child: Column(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: k != index
                                        ? Colors.grey.shade200
                                        : Colors.yellow.shade600,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  child: Text(
                                'All',
                                style: TextStyle(
                                    color: Colors.grey.shade600, fontSize: 12),
                              ))
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  'Popular Products',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 15),
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 160,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  color: Colors.purple.shade50,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://resource.logitechg.com/d_transparent.gif/content/dam/gaming/en/products/g432/g432-gallery-1.png"))),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    width: 100,
                                    height: 60,
                                    child: Column(
                                      children: [
                                        Container(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              'JBL Quantum',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 10,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 10,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 10,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 10,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 10,
                                            )
                                          ],
                                        ),
                                        Container(
                                            child: Text(
                                          'fearezfze zzaefza zdf azdf ze zaef zze zfe zf zzzaza ze f zefoijopi ... ',
                                          style: TextStyle(fontSize: 8),
                                        ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(bottom: 30),
                                      child: Row(
                                        children: [
                                          Text(
                                            '1950 ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                          ),
                                          Text(
                                            '£',
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  'Recently Visited',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 55,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 250,
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade100),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.grey.shade300,image: DecorationImage(
                                      image: NetworkImage(
                                          "https://www.pngmart.com/files/15/Apple-iPhone-11-PNG-Picture.png"))),
                            
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Apple Iphone 11'),
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              children: [
                                                Text(
                                                  '1950,00',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 13),
                                                ),
                                                Text(
                                                  '£',
                                                  style: TextStyle(
                                                      color: Colors.orange,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 38,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.yellow.shade800),
                                child: Icon(
                                  Icons.badge,
                                  size: 19,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ));
                    },
                  ),
                ),
              ],
            )));
  }
}
