

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  double screenWidth=0;
  double screenHeight=0;
  double screenContWidth=0;
  double screenContHeight=0;
  double growWidth=0;
  double growHeight=0;
  List<String> confirm=['Received','Pending'];
  String customerFeedBack='Pending';
  int index=500;
  String product='Gold';
  String price='2,000';
  String quantity='20';
  String amount='40,000,000';
  String trackingId='23456789087';
  String pickupLocation='No 3 Flutter road, Ajah-abaku,Lagos State,Nigeria.';
  String status='processing';
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation.toString()=='Orientation.landscape'){



      setState(() {

        screenHeight=0;
        screenWidth=0;
        screenContWidth=0;
        screenContHeight=0;
        growWidth=0;
        growHeight=0;


        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContWidth=screenWidth;
        screenContHeight=screenHeight*0.60;
        growHeight=screenContHeight*0.80;
        growWidth=2;








      });
    }else{
      setState(() {

        screenHeight=0;
        screenWidth=0;
        screenContWidth=0;
        screenContHeight=0;
        growWidth=0;
        growHeight=0;
        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContHeight=screenHeight*0.25;
        screenContWidth=screenWidth;
        growHeight=screenContHeight*0.80;
        growWidth=screenContWidth*0.40;






      });
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('GoldWorld',style:TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,

        letterSpacing: 2.0,

    ),),

    elevation: 0.0,

    actions:  <Widget>[
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: IconButton(
    onPressed:  (){
    Navigator.pushNamed(context, '/4');
    } ,
    icon: const Icon(Icons.home_outlined,size: 35,color: Colors.black,)
    ),
    )

    ],
        ),
      body: SafeArea(
        top:false,
        bottom: true,
        right: true,
        left: true,
        child:Container(
          margin: const EdgeInsets.all(10),
          height: screenHeight,
          width: screenWidth,


          child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context,index){

                return  Material(
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child:FittedBox(
                        fit: BoxFit.contain,

                        child: Container(
                          margin: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(

                              color: Colors.white10,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              border: Border(
                          bottom: BorderSide(
                          style: BorderStyle.solid,
                              color: Colors.black26,
                              width: 1
                          ),
                          top: BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.black26,
                              width: 1
                          ),
                          left: BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.black26,
                              width: 1
                          ),
                          right: BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.black26,
                              width: 1

                          ),
                        ),
                          ),


                          height: screenContHeight,
                          width: screenContWidth,
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[

                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(2, 6, 6, 6),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(' Product: $product',style: const TextStyle(fontSize: 16,letterSpacing: 1),),
                                          ),

                                           Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(' Price: $price ',style: const TextStyle(fontSize: 16,letterSpacing: 1),),
                                          ),

                                        ],
                                      ),
                                    ),

                                    Container(

                                      padding: const EdgeInsets.all(4),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                           Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Quantity: $quantity ',style: const TextStyle(fontSize: 14,letterSpacing: 1),),
                                          ),

                                           Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(' Amount: $amount',style: const TextStyle(fontSize: 14,letterSpacing: 1),),
                                          ),


                                        ],
                                      ),
                                    ),
                                   Container(
                                   margin: const EdgeInsets.all(2),


                                   padding: const EdgeInsets.all(8),

                                   child: Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                    Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text('Tracking Id: $trackingId',style: const TextStyle(fontSize: 16,letterSpacing: 1,fontWeight: FontWeight.bold),),
                                   ),

                                   ],
                                   ),
                                   ),


                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Status: $status',style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                                          const Padding(
                                            padding: EdgeInsets.only(top: 4),

                                            child: Text('Feedback   ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(
                                            width: 90,
                                            height: 30,
                                            child: DropdownButton<String>(


                                              hint: Text( customerFeedBack,style: const TextStyle(color: Colors.green,fontSize: 12,letterSpacing: 1,fontWeight:FontWeight.bold),),
                                              focusColor: Colors.amber,
                                              dropdownColor: Colors.white,
                                              alignment: AlignmentDirectional.topStart,
                                              isExpanded: true,
                                              style: const TextStyle(color: Colors.black),
                                              autofocus: false,
                                              onChanged: (value) {  },
                                              items: confirm.map((String stat){
                                                return  DropdownMenuItem(
                                                  value: stat,
                                                  child:Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Text(stat),
                                                  ),
                                                  onTap: (){
                                                    setState(() {
                                                      customerFeedBack=stat;

                                                    });
                                                  },
                                                );
                                              }).toList(),

                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),

                              ),



                            ],


                          ),
                        ),
                      ),
                    ));
              }



          ),
        ),
      )
    );
  }
}
