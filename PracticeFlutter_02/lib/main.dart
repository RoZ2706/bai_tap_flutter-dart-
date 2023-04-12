import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String active = 'Electronic';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        FocusScope.of(context).requestFocus(FocusNode());
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Categories', style: TextStyle(color: Colors.black),),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Icon(Icons.search, color: Colors.black,),
                  Padding(padding: EdgeInsets.all(5)),
                  Icon(Icons.heart_broken, color: Colors.black,),
                  Padding(padding: EdgeInsets.all(5)),
                  Icon(Icons.shopping_cart, color: Colors.black,),
                ],
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Flex(
              direction: Axis.vertical,
              children: [
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height - 70,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.grey)
                        )
                      ),
                      child: SingleChildScrollView(
                        child: Flex(
                          direction: Axis.vertical,
                          children: [
                            ContBgImage(
                              image: AssetImage('lib/clothes.jpg'),
                              radius: 100,
                              text: 'Fashion',
                              active: active == 'Fashion',
                              onTap: () {
                                setState(() {
                                  active = 'Fashion';
                                });
                              },
                            ),
                            ContBgImage(
                              image: AssetImage('lib/beauty.jpg'),
                              radius: 100,
                              text: 'Beauty',
                              active: active == 'Beauty',
                              onTap: () {
                                setState(() {
                                  active = 'Beauty';
                                });
                              },
                            ),
                            ContBgImage(
                              image: AssetImage('lib/electronic.jpg'),
                              radius: 100,
                              text: 'Electronic',
                              active: active == 'Electronic',
                              onTap: () {
                                setState(() {
                                  active = 'Electronic';
                                });
                              },
                            ),
                            ContBgImage(
                              image: AssetImage('lib/jewellery.png'),
                              radius: 100,
                              text: 'Jewellery',
                              active: active == 'Jewellery',
                              onTap: () {
                                setState(() {
                                  active = 'Jewellery';
                                });
                              },
                            ),
                            ContBgImage(
                              image: AssetImage('lib/footwear.jpg'),
                              radius: 100,
                              text: 'Footwear',
                              active: active == 'Footwear',
                              onTap: () {
                                setState(() {
                                  active = 'Footwear';
                                });
                              },
                            ),
                            ContBgImage(
                              image: AssetImage('lib/toys.jpg'),
                              radius: 100,
                              text: 'Toys',
                              active: active == 'Toys',
                              onTap: () {
                                setState(() {
                                  active = 'Toys';
                                });
                              },
                            ),
                            ContBgImage(
                              image: AssetImage('lib/furniture.jpg'),
                              radius: 100,
                              text: 'Furniture',
                              active: active == 'Furniture',
                              onTap: () {
                                setState(() {
                                  active = 'Furniture';
                                });
                              },
                            ),
                            ContBgImage(
                              image: AssetImage('lib/mobiles.jpg'),
                              radius: 100,
                              text: 'Mobiles',
                              active: active == 'Mobiles',
                              onTap: () {
                                setState(() {
                                  active = 'Mobiles';
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 100,
                        height: MediaQuery.of(context).size.height - 70,
                        child: GridView.count(
                          padding: EdgeInsets.all(10),
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          children: [
                            ProductItem(image: 'lib/laptop.jpg', price: 30),
                            ProductItem(image: 'lib/television.jpg', price: 53),
                            ProductItem(image: 'lib/dryers.webp', price: 13),
                            ProductItem(image: 'lib/headphones.png', price: 99),
                            ProductItem(image: 'lib/tablet.jpg', price: 59),
                            ProductItem(image: 'lib/mobile-covert.webp', price: 9),
                            ProductItem(image: 'lib/printer.jpg', price: 70),
                            ProductItem(image: 'lib/healthcare.jpg', price: 37),
                            ProductItem(image: 'lib/powerbank.jpg', price: 12),
                            ProductItem(image: 'lib/smart-watch.webp', price: 86),
                            ProductItem(image: 'lib/washer.jpg', price: 68),
                            ProductItem(image: 'lib/masinto.jpg', price: 28),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}

class ContBgImage extends StatelessWidget {
  final ImageProvider image;
  final double radius;
  final bool active;
  final String text;
  final Function()? onTap;
  const ContBgImage({super.key, required this.image, this.radius = 0, this.active = false, this.text = '', this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        margin: EdgeInsets.only(top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: active ? Colors.grey.shade200 : Colors.white,
          border: Border(
            left: active ? BorderSide(color: Colors.pink, width: 3) : BorderSide(color: Colors.transparent, width: 3)
          )
        ),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.all(Radius.circular(radius))
              ),
            ),
            Text(text, style: TextStyle(color: active ? Colors.pink : Colors.grey, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String image;
  final int price;
  const ProductItem({super.key, required this.image, required this.price });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 5)
              ],
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fitWidth),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 5)
              ]
            ),
            child: Center(
              child: Text(price.toString(), style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          )
        )
      ],
    );
  }
}