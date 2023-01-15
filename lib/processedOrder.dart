import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldworld/adminMoreOrderDetails.dart';
import 'package:goldworld/adminOrders.dart';

import 'adminHistory.dart';
class ProcessedOrders extends StatefulWidget {
  const ProcessedOrders({Key? key}) : super(key: key);

  @override
  _ProcessedOrdersState createState() => _ProcessedOrdersState();
}

class _ProcessedOrdersState extends State<ProcessedOrders> {
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



  final list=List<String>.generate(4, (index) =>"Hey $index");

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


        margin: const EdgeInsets.all(4),
        child: ListView.builder(

            itemCount:list.length,
            itemBuilder: (context, index) {
              return  Material(


                child: GestureDetector(
                  onTap: (){


                  },
                  child: Container(
                      height: screenContSizeHeight+50,
                      width: screenContSizeWidth,
                      decoration: const BoxDecoration(

                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black
                              )
                          )
                      ),


                      padding: const EdgeInsets.all(2),
                      margin: const EdgeInsets.all(2),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(customersName,style: const TextStyle(fontSize: 24,letterSpacing: 2,fontWeight: FontWeight.bold,wordSpacing: 1),),

                          Text('Order filled $dateCreated  ',style: const TextStyle(fontSize: 12,letterSpacing: 1,wordSpacing:1),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Tracking id: $trackingId ',style: const TextStyle(fontSize: 12,letterSpacing: 1,wordSpacing:1),),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Product: $product ',style: const TextStyle(fontSize: 12,letterSpacing: 1,wordSpacing:1),),
                              Text('Quantity: $quantity',style: const TextStyle(fontSize: 12,letterSpacing: 1,wordSpacing:1),)
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('price: $price ',style: const TextStyle(fontSize: 12,letterSpacing: 1,wordSpacing:1),),
                              Text('Total Amount: $amount',style: const TextStyle(fontSize: 12,letterSpacing: 1,wordSpacing:1),)
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 20, 8, 8) ,
                                child: SizedBox(
                                  height: 50,
                                  width: 290,
                                  child: ElevatedButton(

                                    onPressed: (){
                                    },
                                    child: const Text('Update',style: TextStyle(fontSize: 20 ,color:Colors.amber ,letterSpacing: 1),),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.green,
                                        elevation: 0
                                        ,side:const BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    )
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )


                        ],
                      )
                  ),
                ),
              );

            }),
    );
  }
}
