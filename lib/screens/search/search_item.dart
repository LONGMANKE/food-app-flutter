import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              child: Center(
                  child: Image.network(
                      "https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg")),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "productName",
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "50\KSH/ Gram",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(children: [
                      Expanded(
                        child: Text(
                          "50 Gram",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 20,
                          color: primaryColor,
                        ),
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 32),
              child: Container(
                height: 25,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: primaryColor,
                      size: 20,
                    ),
                    Text(
                          "ADD",
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ), 
                  ],
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
