import 'package:flutter/material.dart';
class AdminOrderDetails extends StatefulWidget {
  const AdminOrderDetails({Key? key}) : super(key: key);

  @override
  _AdminOrderDetailsState createState() => _AdminOrderDetailsState();
}

class _AdminOrderDetailsState extends State<AdminOrderDetails> {
  double screenContSizeHeight=0;
  double screenContSizeWidth=0;
  double screenWidth=0;
  double screenHeight=0;
  String customersName='Martin Spenser';
  String product='Gold';
  String price='2,000';
  String quantity='20';
  String amount='40,000,000';
  String trackingId='23456789087';
  String pickupLocation='No 3 Flutter road, Ajah-abaku,Lagos State,Nigeria.';
  String status='processing';
  DateTime dateCreated=DateTime.now();
  final searchOrder=TextEditingController();


  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation.toString()=='Orientation.landscape'){
    setState(() {
        screenContSizeWidth=0;
        screenContSizeHeight=0;
        screenHeight=0;
        screenWidth=0;
        screenHeight=MediaQuery.of(context).size.width;
        screenWidth=MediaQuery.of(context).size.height;
        screenContSizeHeight=screenHeight*0.5;
        screenContSizeWidth=screenWidth;

      });
    }else{
      setState(() {
        screenContSizeWidth=0;
        screenContSizeHeight=0;
        screenHeight=0;
        screenWidth=0;
        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContSizeHeight=screenHeight*0.25;
        screenContSizeWidth=screenWidth;
         });
    }
    return Container(
      padding: const EdgeInsets.all(2),
      child: Column(

        children: [


          SizedBox(
            height:100,
            width: screenContSizeWidth,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8) ,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.bottom,
                maxLines: 1,
                style: const TextStyle(color: Colors.black,fontSize: 12),
                controller: searchOrder,
                autofocus: false,
                onChanged:(value){},


                decoration: const InputDecoration(
                  hintText:'Enter username',
                  icon: Icon(Icons.search,color:Colors.black,),
                  enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,width: 1),
                      borderRadius: BorderRadius.all(Radius.zero)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  enabled: true,
                  filled: true,

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}