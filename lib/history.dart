import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  double screenWidth=0;
  double screenHeight=0;
  double screenContWidth=0;
  double screenContHeight=0;
  double growWidth=0;
  double growHeight=0;
  String product='Gold';
  String price='2,000';
  String quantity='20';
  String amount='40,000,000';
  String trackingId='2345659459090954';
  String status='Delivered';
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
        screenContHeight=screenHeight*0.30;
        growHeight=screenContHeight*0.80;
        growWidth=screenContWidth*0.50;
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
    screenContHeight=screenHeight*0.150;
    screenContWidth=screenWidth;
    growHeight=screenContHeight*0.5;
    growWidth=screenContWidth*0.30;






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
        body:Container(
          margin: const EdgeInsets.all(10),
        height: screenHeight,
        width: screenWidth,

        child: ListView.builder(
            itemCount: 9,
            itemBuilder: (context,index){

              return  Material(
                  child: Padding(
                    
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      margin: const EdgeInsets.all(2),

                      decoration: const BoxDecoration(
                          color:Colors.white,
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

                       width: screenContWidth,
                      height:screenContHeight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Container(
                              height:screenHeight,
                              width: (screenWidth/2.5),
                              constraints:  const BoxConstraints(
                                maxWidth: 500,
                                minWidth: 150,

                              ),



                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(4, 6, 6, 6),
                                    child: Row(
                                      children: [
                                        const Text('Product:',style: TextStyle(fontSize: 14,letterSpacing: 1),),
                                        Text(product,style: const TextStyle(fontSize: 14,letterSpacing: 1)),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    child: Row(
                                      children: [
                                        const Text('Price:',style: TextStyle(fontSize: 14,letterSpacing: 1),),
                                        Text(price,style: const TextStyle(fontSize: 14,letterSpacing: 1)),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    child: Row(
                                      children: [
                                        const Text('Quantity:',style: TextStyle(fontSize: 14,letterSpacing: 1),),
                                        Text(quantity,style: const TextStyle(fontSize: 14,letterSpacing: 1)),
                                      ],
                                    ),
                                  )
                                  ,
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    child: Row(
                                      children: [
                                        const Text('Amount:',style: TextStyle(fontSize: 14,letterSpacing: 1),),
                                        Text(amount,style: const TextStyle(fontSize: 14,letterSpacing: 1)),
                                      ],
                                    ),
                                  )


                                ],
                              ),
                            ),
                          ),

                          Padding(
                              padding: const EdgeInsets.all(2),
                              child: SizedBox(

                                height: screenHeight,
                                width: growWidth,


                                child:Row(


                                    children: <Widget>[
                                      SizedBox(
                                          height:screenHeight ,
                                          child: Row(

                                            children: <Widget>[
                                              Container(


                                                padding: const EdgeInsets.fromLTRB(4, 6, 6, 1),

                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [

                                                        const Padding(
                                                      padding: EdgeInsets.only(top: 12),

                                                      child: Text('Status',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),

                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(2),

                                                      child: Text(status,style: const TextStyle(fontSize: 14,),),
                                                    )
                                                  ],
                                                ),
                                              ),


                                            ],
                                          )
                                      ),
                                    ]

                                ),
                              )
                          )


                        ],


                      ),
                    ),
                  ));
            }



        ),
      )

    );


  }
}
