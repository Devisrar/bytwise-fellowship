import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:week_1_bytwise/Screens/providerscreen.dart';

class slidder extends StatefulWidget {
  const slidder({Key? key}) : super(key: key);

  @override
  State<slidder> createState() => _slidderState();
}

class _slidderState extends State<slidder> {

  double value = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff023047),
      appBar: AppBar(

        toolbarHeight: 150,
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70),
                bottomLeft: Radius.circular(70))),
        backgroundColor: Colors.black54,

        title: Center(child: Text("Provider Here")),

        actions: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      spreadRadius: 3,
                      color: Color(0xff023047),
                    )
                  ],
                  shape: BoxShape.circle,
                  color: Color(0xff023047),
                ),
                child: Icon(
                  Icons.search,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      spreadRadius: 3,
                      color: Color(0xff023047),
                    )
                  ],
                  shape: BoxShape.circle,
                  color: Color(0xff023047),
                ),
                child: Icon(
                  Icons.notifications,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      spreadRadius: 3,
                      color: Color(0xff023047),
                    )
                  ],
                  shape: BoxShape.circle,
                  color: Color(0xff023047),
                ),
                child: IconButton(
                  onPressed: () {

                  },
                  icon: Icon(
                    Icons.logout,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 26,
              )
            ],
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(fit: BoxFit.cover,
              height: 300,

              image: NetworkImage("https://economia3.com/wp-content/uploads/2021/10/light-bulb-g71200151c_1920-1.jpg")
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Container(
                height: 80,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xffA68160)),
                child: Center(
                    child: Text(
                      "Slide For more",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
              IconButton(onPressed:(){

              }, icon: Icon(Icons.add_alert,color: Colors.white70,size: 50,))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Slider(
            min: 0,
              max: 1,
              value: value, onChanged: (val) {
              print(value);
              value=val;
               setState(() {

               });
          }
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff05668d),),
                    child: Center(
                        child: Text(
                      "Press",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white70),
                    )),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70),
                    child: Center(
                        child: Text(
                      "Release",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
