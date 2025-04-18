import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_ticket_app3/base/res/app.styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //give scroolable effect
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Good Morning",
                          style: AppStyles.headLineStyle3
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1,
                          ),

                      ],
                    ),
                    Container( width: 50, height: 50, decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), image: DecorationImage(image: AssetImage("assets/images/logo.jpg"))
                    ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Search icon"), Text("Empty space")],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
