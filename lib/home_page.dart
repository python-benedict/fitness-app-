import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: color.AppColor.homePageColor,
      
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Column(
          children: <Widget>[
            Row(

              children: [
                Text("Training", 
                style: TextStyle(color: color.AppColor.homePageTitle, fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios, size: 20),
                SizedBox(width: 8,),
                Icon(Icons.calendar_today_outlined, size: 20, color: Colors.black,),
                SizedBox(width: 15,),
                Icon(Icons.arrow_forward_ios, size: 20),

              ],
            ),
            SizedBox(height: 30,),


            Row(
              children: [
                Text("Your program", style: TextStyle(fontWeight:FontWeight.bold, color: color.AppColor.homePageSubtle)),
                Expanded(child: Container()),
                Text("Details", style: TextStyle(color: color.AppColor.homePageDetail)),
                SizedBox(width: 10,),
                Icon(Icons.arrow_forward, size: 15,)
              ],
            )
          ],  
        ),
      ),
    );
  }
}
