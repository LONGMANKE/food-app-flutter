import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/screens/home/single_product.dart';
import 'drawer_side.dart';


class HomeScreen extends StatelessWidget {
  Widget _buildHerbsProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
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
              SingleProduct(
                  productImage:
                      ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
                  productName: ' 1',
                  onTap: () {}),
              SingleProduct(
                  productImage:
                      ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
                  productName: 'Herbs2',
                  onTap: () {}),
              SingleProduct(
                  productImage:
                      ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
                  productName: 'Herbs3',
                  onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }

  
  
  Widget _buildFreshProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
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
              SingleProduct(
                  productImage:
                      ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
                  productName: 'Herbs',
                  onTap: () {}),
              SingleProduct(
                  productImage:
                      ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
                  productName: 'Herbs',
                  onTap: () {}),
              SingleProduct(
                  productImage:
                      ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
                  productName: 'Herbs',
                  onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRootProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
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
              SingleProduct(
                  productImage:
                      ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
                  productName: 'Herbs',
                  onTap: () {}),
              SingleProduct(
                  productImage:
                      ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
                  productName: 'Herbs',
                  onTap: () {}),
              SingleProduct(
                  productImage:
                      ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
                  productName: 'Herbs',
                  onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: DrawerSide(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          'Home',
          style: TextStyle(color: textColor, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: primaryColor,
            radius: 12,
            child: Icon(
              Icons.search,
              size: 17,
              color: textColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: primaryColor,
              radius: 12,
              child: Icon(
                Icons.shop,
                size: 17,
                color: textColor,
              ),
            ),
          ),
        ],
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
                    'https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'
                ),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 130, bottom: 10),
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xffd1ad17),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'MBURU',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
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
                              fontSize: 40,
                              color: Colors.green[100],
                              fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'On all vegetables products',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            _buildHerbsProduct(context),
            _buildFreshProduct(context),
            _buildRootProduct(context),
          ],
        ),
      ),
    );
  }
}
