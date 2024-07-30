import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectableList(),
    );
  }
}

class SelectableList extends StatefulWidget {
  @override
  _SelectableListState createState() => _SelectableListState();
}

class _SelectableListState extends State<SelectableList> {
  int _selectedIndex = -1;
int count=1;
  final List<String> sizes = ['S', 'L', 'M', 'XL', '2XL'];
  //double value =3.5;
   double rating= 3.5;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back_ios, size: 35, color: Colors.white),
        actions: [
          Icon(Icons.favorite_border, size: 35, color: Colors.white),
          SizedBox(width: 30),
          Icon(Icons.shopping_bag_outlined, size: 35, color: Colors.white),
        ],
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Column(

          children: [
            Row(
              children: [
                Container(
                  width: 300,
                  height: 450,
                  decoration: const BoxDecoration(
                    //color: Colors.white,
                    color: Colors.white,
                 // image: DecorationImage(image: AssetImage('images/1.jpg')) ,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: PageView(
                    children: [
                      Image.asset('images/1.jpg'),
                      Image.asset('images/2.jpg'),
                      Image.asset('images/3.jpeg'),
                    ],

                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: sizes.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        child: Container(
                          height: 65,
                          margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 13),
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: _selectedIndex == index ? Colors.red : Colors.grey[800],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Text(
                              sizes[index],
                              style: const TextStyle(
                                fontFamily: 'PressStart2P',
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                       Text("Belgium EURO",
                        style: TextStyle(
                        fontFamily: 'PressStart2P',
                        color: Colors.white,
                        fontSize: 20.0,
                      ),),

                       Text("20/21 Away by Adidas",
                          style: TextStyle(
                            fontFamily: 'PressStart2P',
                            color: Colors.grey[800],
                            fontSize: 15.0,
                          ),),
SizedBox(height: 20,),
Row(children: [
  Rate(
    iconSize: 25,
    color: Colors.red,
    allowHalf: true,
    allowClear: true,
    initialValue: 3.5,
    readOnly: false,
    onChange: (value) {
      setState(() {
        rating = value;
      });
      print(value);
    },
  ),
SizedBox(width: 10,),
Text("$rating",  style: TextStyle(
  fontFamily: 'PressStart2P',
  color: Colors.white,
  fontSize: 15.0,
),),
  SizedBox(width: 30,),
  Container(

    decoration: BoxDecoration(
color: Colors.grey[800],
      borderRadius: BorderRadius.circular(10)
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
      Container(

          margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(8.0),
        ),

        
child: IconButton(
        onPressed: () {
      setState(() {

        if(count>1){
          count--;
        }
      });
    }, icon: Icon(Icons.remove,size: 20, color: Colors.white),
  color: Colors.red,

),
      ),
      //SizedBox(width: 20),
      Text("$count", style: TextStyle(fontSize: 25,color: Colors.white),),
        Container(
          // width: 30,
          // height: 40,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8.0),
          ),


          child: IconButton(
            onPressed: () {
              setState(() {
                count++;
              });
            }, icon: Icon(Icons.add,size: 20, color: Colors.white),
            color: Colors.red,

          ),
        ),
    ],),
  ),

],)
                  ],
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(children: [
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                Text("Details", style: TextStyle(
              fontFamily: 'PressStart2P',
              color: Colors.grey[800],
              fontSize: 15.0,
            ),),
                SizedBox(height: 10,),
                Row(children: [
                  Text("Material:", style: TextStyle(
                    fontFamily: 'PressStart2P',
                    color: Colors.white,
                    fontSize: 13.0,
                  ),),
                  Text("Polyster", style: TextStyle(
                    fontFamily: 'PressStart2P',
                    color: Colors.grey[800],
                    fontSize: 10.0,
                  ),)
                ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Text("Shipping:", style: TextStyle(
                      fontFamily: 'PressStart2P',
                      color: Colors.white,
                      fontSize: 13.0,
                    ),),
                    Text("In 5 to 6 days", style: TextStyle(
                      fontFamily: 'PressStart2P',
                      color: Colors.grey[800],
                      fontSize: 10.0,
                    ),)
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Text("Return:", style: TextStyle(
                      fontFamily: 'PressStart2P',
                      color: Colors.white,
                      fontSize: 13.0,
                    ),),
                    Text("With in 20 Days", style: TextStyle(
                      fontFamily: 'PressStart2P',
                      color: Colors.grey[800],
                      fontSize: 10.0,
                    ),)
                  ],)
              ],),
              SizedBox(width: 20,),
             Expanded(child: Container(
                 decoration: BoxDecoration(
                     color: Colors.red,
                     borderRadius: BorderRadius.circular(20)
                 ),
                 child:
                 Column(children: [
                   //SizedBox(height: 10,),
                   Icon(Icons.shopping_bag_outlined, size: 45,color: Colors.white,),
                   SizedBox(height: 15,),
                   Text("\$89",style: TextStyle(
                     fontFamily: 'PressStart2P',
                     color: Colors.white,
                     fontSize: 15.0,
                   ),),
                   SizedBox(height: 15,),
                 ],))
                )
            ],)
          ],
        ),
      ),
    );
  }
}
