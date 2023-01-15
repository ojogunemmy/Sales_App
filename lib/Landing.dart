

import 'package:flutter/material.dart';
 import 'package:flutter/services.dart';
 import 'dart:ui';
class MyHomePage extends StatefulWidget {
  final String title;


const MyHomePage({Key? key, required this.title}) : super(key: key);




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double screenWidth=0;
  double screenContWidth=0;
  double screenContHeight=0;
  double growWidth=0;
  double growHeight=0;


  double screenHeight=0;
  String accountName='Ojogun Emmanuel Ehiedu';

  String accountBalance='1,000,000,000.00';
  String accountType='USD';
  String price='2000';







  int order=0;
  @override
  Widget build(BuildContext context) {

    int index=0;
    TextEditingController quantity=TextEditingController(text: index.toString());
    TextEditingController email=TextEditingController();

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
        screenContHeight=screenHeight*0.30;
        screenContWidth=screenWidth;
        growHeight=screenContHeight*0.80;
        growWidth=screenContWidth*0.40;






      });
    }


    return Scaffold(
      backgroundColor:Colors.amber,

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
            child: Stack(
              alignment:AlignmentDirectional.topEnd ,
              children: <Widget>[
                IconButton(

                  onPressed: (){}, icon: const Icon(Icons.card_travel,color: Colors.black,),

                ),
                Text('$order',style: const TextStyle(color:Colors.red,fontWeight:FontWeight.bold,fontFeatures: [FontFeature.superscripts()],fontSize: 18),)
              ],
            ),
          )


        ],
      ),
      body:SafeArea(
        top: true,
        bottom:false,
        left: false,
        right: false,
        child: Container(

         margin: const EdgeInsets.all(1),
          height: screenHeight,
          width: screenWidth,
          child: SingleChildScrollView(
            child: Column(


              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(1, 1, 1,0),
                    child: Container(
                      margin: EdgeInsets.zero,
                      color: Colors.black,
                      width: screenContWidth,
                      height:screenContHeight,
                      child:  Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width:screenWidth,


                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:<Widget> [

                                    Text(
                                      accountName,
                                      style:const TextStyle(

                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width:screenWidth,
                                child: Row(

                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[


                                    Text(
                                      'Account($accountType): $accountBalance',
                                      style:const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0,

                                      ),
                                    ),
                                    IconButton(
                                        onPressed: (){

                                          Navigator.pushNamed(context, '/3');
                                        },
                                        icon:const Icon(Icons.history,
                                          color: Colors.amber,)),



                                  ],
                                ),
                              ),
                              SizedBox(
                                width:screenWidth,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    ElevatedButton(

                                      onPressed: (){},
                                      child: const Text('Fund account',style: TextStyle(fontSize: 20 ,color:Colors.black ),),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.amber,
                                          elevation: 0,
                                          side:const BorderSide(
                                            width: 1,
                                          )
                                      ),
                                    ),
                                    ElevatedButton(

                                      onPressed: (){
                                        Navigator.pushNamed(context, '/1');
                                      },
                                      child: const Text('Buy',style: TextStyle(fontSize: 20 ,color:Colors.black ),),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.amber,
                                          elevation: 0
                                          ,side:const BorderSide(
                                        width: 1,
                                      )
                                      ),


                                    ),
                                    ElevatedButton(

                                      onPressed: (){
                                        Navigator.pushNamed(context, '/2',);
                                      },
                                      child: const Text('Orders',style: TextStyle(fontSize: 20 ,color:Colors.black ),),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.amber,
                                          elevation: 0,
                                          side:const BorderSide(
                                            width: 1,
                                          )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                      ),
                    )
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 1, 2, 0),
                  child: Container(

                    color: Colors.amber,
                    height: screenContHeight,

                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children:   <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(13.5),
                          child: Container(
                            width:growWidth,
                            height: growHeight,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black
                              )
                            ),


                            child:const Image(image: AssetImage('assets/images/online-shopping.png'),),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children:    <Widget>[

                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 16, 6, 6),
                              child: Text('Gold',
                                style: TextStyle(fontSize: 24,color: Colors.black,fontFamily: 'Arial',letterSpacing: 1),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text('60kg',
                                style: TextStyle(fontSize: 15,color: Colors.black,fontFamily: 'Arial',letterSpacing: 1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                color: Colors.amber,
                                // For current price
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('Current price: USD$price',
                                    style: const TextStyle(fontSize:15,color: Colors.black,fontFamily: 'Arial',letterSpacing: 1),
                                  ),
                                ),





                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                      onPressed: (){

                                        index++;
                                        quantity.text=index.toString();

                                      },
                                      icon:const Icon(Icons.add,
                                        color: Colors.black,)),
                                  SizedBox(
                                    width: 50,
                                    height: 30,
                                    child: TextField(

                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      maxLines: 1,

                                      textAlignVertical: TextAlignVertical.center,
                                      controller: quantity,
                                      decoration:  const InputDecoration(


                                          filled: true,
                                          fillColor: Colors.white,


                                          border: OutlineInputBorder(

                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.all(Radius.zero)
                                          )

                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: (){
                                        if(quantity.text=='0'){
                                          index=0;
                                          quantity.text=index.toString();
                                        }else{
                                          index--;
                                          quantity.text=index.toString();


                                        }
                                      },
                                      icon:const Icon(Icons.minimize_rounded,
                                        color: Colors.black,)),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 2, 8, 8),
                              child: SizedBox(
                                height: 40,
                                width: 150,
                                child: ElevatedButton(

                                  onPressed: (){
                                    setState(() {
                                      order=int.parse(quantity.text.toString());

                                    });


                                  },
                                  child: const Text('Buy',style: TextStyle(fontSize: 20 ,color:Colors.amber ,letterSpacing: 1),),
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
                        ),

                      ],

                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child:Container(

                    width: screenWidth,
                    decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.vertical(top: Radius.zero,bottom: Radius.circular(10))
                    ),


                    child: Column(
                      children: <Widget>[
                        Container(

                          width: screenWidth,
                          color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget> [

                              const Text('Subscribe for newsletter to get updates on hot deals',style:TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 16),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: screenWidth*0.70,
                                  height: 40,
                                  child: TextField(

                                    style: const TextStyle(color: Colors.white),
                                    controller: email,
                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.amber,
                                      hintText: 'Goldworld@gmail.com',


                                      labelStyle: TextStyle(color: Colors.white),
                                      floatingLabelStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.white
                                          ),

                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.white
                                          ),

                                      ),



                                    ),
                                  ),
                                ),

                              ),
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: SizedBox(
                                  width: 150,
                                  child: ElevatedButton(

                                    onPressed: (){
                                    },
                                    child: const Text('Subscribe',style: TextStyle(fontSize: 20 ,color:Colors.amber ,letterSpacing: 1),),
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
                          ),

                        ),
                         const Divider(color: Colors.amber,thickness: 1,height: 1,),
                        Container(
                          width: screenWidth,
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: const <Widget>[
                                Text.rich(
                                    TextSpan(
                                        children: [
                                          TextSpan(text: 'Address: ',style: TextStyle(color: Colors.amber,letterSpacing: 2)),
                                          TextSpan(text: '6th Floor,',style: TextStyle(color: Colors.white,letterSpacing: 2)),
                                          TextSpan(text: ' Buchanan Tower,',style: TextStyle(color: Colors.white,letterSpacing: 2)),
                                          TextSpan(text: ' Buchanan Business Park',style: TextStyle(color: Colors.white,letterSpacing: 2)),
                                          TextSpan(text: ', Stepps,G33 6HZ.',style: TextStyle(color: Colors.white,letterSpacing: 2)),
                                        ]
                                    )
                                ),Text.rich(
                                    TextSpan(
                                        children: [
                                          TextSpan(text: 'Contact: ',style: TextStyle(color: Colors.amber,letterSpacing: 2)),
                                          TextSpan(text: '+234 8063461665, +45 764566456 ',style: TextStyle(color: Colors.white,letterSpacing: 2)),

                                        ]

                                    )
                                ),
                                Text.rich(
                                    TextSpan(
                                        children: [
                                          TextSpan(text: 'Email: ',style: TextStyle(color: Colors.amber,letterSpacing: 2)),
                                          TextSpan(text: 'goldworld@gmail.com ',style: TextStyle(color: Colors.white,letterSpacing: 2)),
                                          TextSpan(text: 'goldworld@hotmail.com ',style: TextStyle(color: Colors.white,letterSpacing: 2)),


                                        ]

                                    )
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: screenHeight*0.09,

                          decoration: const BoxDecoration(
                            color: Colors.amber,

                          ),

                          width: screenWidth,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text('Copyright@GoldWorld 2022',style: TextStyle(color: Colors.black,letterSpacing: 1),)
                            ],
                          ),

                        )
                      ],
                    ),



                  ),
                )







              ],
            ),
          ),
        ),
      )
    );
  }
}
