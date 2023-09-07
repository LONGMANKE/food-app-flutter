import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/screens/my_profile/my_profile.dart';

class DrawerSide extends StatelessWidget {
  Widget listTile({required String title,required IconData iconData, onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        iconData,
        size: 28,
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                      backgroundImage: NetworkImage("https://mburunjoroge.netlify.app/images/123wq.png"),
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
            listTile(iconData: Icons.home_outlined, title: "Home"),
            listTile(iconData: Icons.shop_outlined, title: "Review Cart"),
            listTile(iconData: Icons.person_outlined, title: "My Profile", onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyProfile(),
                  ),
                );
              },),
            listTile(iconData: Icons.notifications_outlined, title: "Notification"),
            listTile(iconData: Icons.star_outlined, title: "Rating & Review"),
            listTile(iconData: Icons.favorite_outlined, title: "Wishlist"),
            listTile(iconData: Icons.copy_outlined, title: "Raise a Complaint"),
            listTile(iconData: Icons.format_quote_sharp, title: "FAQs"),
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
      );
  }
}
