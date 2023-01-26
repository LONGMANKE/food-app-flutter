// import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:food_app/screens/home/single_product.dart';

class HomeScreen extends StatelessWidget {

  Widget singleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
          color: Color(0xffd9dad9), borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: Image.network(
              // 'https://as2.ftcdn.net/v2/jpg/01/70/13/17/1000_F_170131750_2Os99WayEoVY5wOaHTeMnQ9OKgRFsTSk.jpg'
              'https://media.istockphoto.com/id/1218679698/photo/fresh-kale-salad-isolated-on-white-background-raw-kale-curly-leaves-food-concept.jpg?s=612x612&w=0&k=20&c=mUlvbg9Bd8OU9deDB0JuQKSxpHdFUnp38KaQxZvAhuE=')),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                // vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fresh kales',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '50\$/50 Gram',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(children: [
                            Expanded(
                                child: Text('50 Gram',
                                    style: TextStyle(fontSize: 10))),
                            Center(
                              child: Icon(Icons.arrow_drop_down,
                                  size: 20, color: Colors.yellow),
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.remove,
                                    size: 15, color: Color(0xffd0b84c)),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    color: Color(0xffd0b84c),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.add,
                                  size: 15,
                                  color: Color(0xffd0b84c),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listTile({icon, title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(
        child: Container(
          color: Color(0xffd1ad17),
          child: ListView(children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Welcome Guest"),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 25,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text("Login"),
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            listTile(icon: Icons.home_outlined, title: "Home"),
            listTile(icon: Icons.shop_outlined, title: "Review Cart"),
            listTile(icon: Icons.person_outlined, title: "My Profile"),
            listTile(icon: Icons.notifications_outlined, title: "Notification"),
            listTile(icon: Icons.star_outlined, title: "Rating & Review"),
            listTile(icon: Icons.favorite_outlined, title: "Wishlist"),
            listTile(icon: Icons.copy_outlined, title: "Raise a Complaint"),
            listTile(icon: Icons.format_quote_sharp, title: "FAQs"),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Support"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [Text("Call us:"), 
                    SizedBox(
                      height: 5,
                    ),
                    Text("+254758062974")],
                  ),
                  SizedBox(height: 5,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [Text("Mail us:"), 
                        SizedBox(
                        height: 5,
                      ),
                      Text("Mburunjoroge0@gmail.com")],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd1ad17),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Color(0xffd1ad17),
              radius: 12,
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xffd1ad17),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://media.istockphoto.com/id/1203599923/photo/food-background-with-assortment-of-fresh-organic-vegetables.jpg?b=1&s=170667a&w=0&k=20&c=fRNCED4dyey-i6K2RHTPaIm_HFLUr3hnj4J6WblHaXc='),
                  ),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 130, bottom: 10),
                              child: Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Color(0xffd1ad17),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(50),
                                        bottomLeft: Radius.circular(50))),
                                child: Center(
                                  child: Text(
                                    'VEGES',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 214, 210, 210),
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.green,
                                            blurRadius: 10,
                                            offset: Offset(3, 3))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '30% Off',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green[100],
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'On all vegetable products',
                                style: TextStyle(
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(child: Container())
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Herbs Seasonings'),
                  Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh Fruits'),
                  Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
