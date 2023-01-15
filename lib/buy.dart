
import 'package:flutter/material.dart';


class Buy extends StatefulWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  double screenWidth=0;
  double screenHeight=0;
  double screenContWidth=0;
  double screenContHeight=0;
  double growWidth=0;
  double growHeight=0;
  double btnHeight=0;
  double topDiv=0;
  final product=TextEditingController();
  final price=TextEditingController();
  final quantity=TextEditingController();
  List<String> orderTypes=['Current price','Ask price'];
  String orderTypeSelected='Current price';
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
        btnHeight=0;
        topDiv=0;


        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContWidth=screenWidth*0.8;
        screenContHeight=60;
        btnHeight=60;
        topDiv=screenHeight*1.5;

        growHeight=90;
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
        btnHeight=0;
        topDiv=0;
        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContHeight=screenHeight*0.15;
        btnHeight=60;
        topDiv=screenHeight*0.7;

        screenContWidth=screenWidth*0.80;
        growHeight=90;
        growWidth=screenContWidth*0.40;






      });
    }


    return Scaffold(
      backgroundColor: Colors.black,
        appBar:AppBar(
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

                    onPressed: (){

                    }, icon: const Icon(Icons.card_travel,color: Colors.black,),

                  ),
                ],
              ),
            )


          ],
        ),
      body: Container(

        width: screenWidth,
        height: screenHeight,
        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,



            children: <Widget>[
              Container(
                height: topDiv,


                child: Column(
                  children: <Widget>[
                    SizedBox(


                      width: screenWidth,
                      child:
                      Column(

                        children: <Widget>[
                          Container(



                            child: const Text('Order price',style: TextStyle(color: Colors.amber,fontSize: 16,letterSpacing: 2,fontWeight: FontWeight.bold),),
                            width: screenContWidth,


                            //height: MediaQuery.of(context).size.height,
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(top:50),

                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8) ,
                            child: Container(
                              height: btnHeight,
                              width: screenContWidth-15,
                              padding: const EdgeInsets.only(left: 15,right: 8),
                              decoration:  BoxDecoration(
                                  border:Border.all(
                                      color: Colors.white
                                  )),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(


                                  hint: Text( orderTypeSelected,style: const TextStyle(color: Colors.white,fontSize: 12,letterSpacing: 1,fontWeight:FontWeight.bold),),

                                  focusColor: Colors.amber,
                                  dropdownColor: Colors.white,
                                  alignment: AlignmentDirectional.topStart,
                                  isExpanded: true,
                                  style: const TextStyle(color: Colors.black),
                                  autofocus: false,
                                  onChanged: (value) {  },

                                  items: orderTypes.map((String stat){
                                    return  DropdownMenuItem(
                                      value: stat,
                                      child:Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(stat),
                                      ),
                                      onTap: (){
                                        setState(() {
                                          orderTypeSelected=stat;
                                          //print(orderTypeSelected);

                                        });
                                      },
                                    );
                                  }).toList(),

                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                      ,
                    ),

                    SizedBox(
                      height: growHeight,

                      width: screenContWidth,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 30, 8, 8) ,
                        child: TextFormField(
                          maxLines: 1,
                          style: const TextStyle(color: Colors.white,fontSize: 12),
                          controller: product,
                          autofocus: false,
                          decoration: const InputDecoration(
                              enabledBorder:OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white,width: 1),
                                  borderRadius: BorderRadius.all(Radius.zero)
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber)
                              ),
                              enabled: true,
                              filled: true,
                              label: Text('Product',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 2),)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: growHeight,

                      width: screenContWidth,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 30, 8, 8) ,
                        child: TextFormField(
                          maxLines: 1,
                          style: const TextStyle(color: Colors.white,fontSize: 12),
                          controller: price,
                          autofocus: false,
                          decoration: const InputDecoration(
                              enabledBorder:OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white,width: 1),
                                  borderRadius: BorderRadius.all(Radius.zero)
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber)
                              ),
                              enabled: true,
                              filled: true,
                              label: Text('Price(USD)',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 2),)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: growHeight,

                      width: screenContWidth,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 30, 8, 8) ,
                        child: TextFormField(
                          maxLines: 1,
                          style: const TextStyle(color: Colors.white,fontSize: 12),
                          controller: quantity,
                          autofocus: false,
                          decoration: const InputDecoration(
                              enabledBorder:OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white,width: 1),
                                  borderRadius: BorderRadius.all(Radius.zero)
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber)
                              ),
                              enabled: true,
                              filled: true,
                              label: Text('Quantity',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 2),)
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                        width: screenContWidth-10,
                        height:btnHeight,
                        child: ElevatedButton(

                          onPressed: (){

                            setState(() {

                            });
                          },
                          child: const Text('Buy',style: TextStyle(fontSize: 24 ,color:Colors.amber ,letterSpacing: 2),),
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


              const Divider(height: 1,thickness: 1,color: Colors.white,),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: screenContHeight,

                  width:screenWidth,
                  color: Colors.black,
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
                height: screenContHeight,

                width: screenWidth,
                decoration: const BoxDecoration(
                  color: Colors.amber,

                ),



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
      ),
    );
  }
}
