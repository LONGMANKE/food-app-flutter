import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/providers/product_provider.dart';
import 'package:food_app/screens/home/single_product.dart';
import 'package:food_app/screens/product_overview/product_overview.dart';
import 'package:food_app/screens/search/search.dart';
import 'package:provider/provider.dart';
import 'drawer_side.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductProvider? productProvider;

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
            children: productProvider!.getHerbsProductDataList.map(
              (herbsProductData) {
                return SingleProduct(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: herbsProductData.productName,
                          productImage: herbsProductData.productImage,
                          productPrice: herbsProductData.productPrice,
                        ),
                      ),
                    );
                  },
                  productName: herbsProductData.productName,
                  productImage: herbsProductData.productImage,
                  productPrice: herbsProductData.productPrice,
                );
              },
            ).toList(),
            // children: [
            //   SingleProduct(
            //       productImage:
            //           ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
            //       productName: ' 1',
            //       onTap: () {}),
            //   // SingleProduct(
            //   //     productImage:
            //   //         ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
            //   //     productName: 'Herbs2',
            //   //     onTap: () {}),
            //   // SingleProduct(
            //   //     productImage:
            //   //         ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
            //   //     productName: 'Herbs3',
            //   //     onTap: () {}),
            // ],
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
            children: productProvider!.getFreshProductDataList.map(
              (freshProductData) {
                return SingleProduct(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: freshProductData.productName,
                          productImage: freshProductData.productImage,
                          productPrice: freshProductData.productPrice,
                        ),
                      ),
                    );
                  },
                  productName: freshProductData.productName,
                  productImage: freshProductData.productImage,
                  productPrice: freshProductData.productPrice,
                );
              },
            ).toList(),
          
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
            children: productProvider!.getRootProductDataList.map(
              (rootProductData) {
                return SingleProduct(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: rootProductData.productName,
                          productImage: rootProductData.productImage,
                          productPrice: rootProductData.productPrice,
                        ),
                      ),
                    );
                  },
                  productName: rootProductData.productName,
                  productImage: rootProductData.productImage,
                  productPrice: rootProductData.productPrice,
                );
              },
            ).toList(),
                  ),
        ),
      ],
    );
  }

  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.fetchHerbsProductData();
    productProvider.fetchFreshProductData();
    productProvider.fetchRootProductData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(context);
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
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Search(),
                ));
              },
              icon: Icon(
                Icons.search,
                size: 17,
                color: textColor,
              ),
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
                      'https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),
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
