import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  List<String> accountStat=['Active accounts','Inactive accounts','Online accounts'];
  String accountStatus='Online Accounts';
  int index=5;
  String accountUser='Ojogun Emmanuel Ehiedu';
  String api='';
  Map ap={};
  double screenContSizeHeight=0;
  double screenContSizeWidth=0;
  double screenWidth=0;
  double screenHeight=0;
  double screenHeightReduction=0;



  Future timeApi() async{
    var response=await http.get(Uri.parse('http://worldtimeapi.org/api'));

    print(api);


     api=response.body;






  }
  @override
  void initState() {
    timeApi();
    super.initState();
  }


  final search=TextEditingController();
  @override
  Widget build(BuildContext context) {

    if(MediaQuery.of(context).orientation.toString()=='Orientation.landscape'){



      setState(() {
        screenHeightReduction=0;
        screenContSizeWidth=0;
        screenContSizeHeight=0;
        screenHeight=0;
        screenWidth=0;
        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContSizeHeight=screenHeight*0.15;
        screenContSizeWidth=screenWidth;
        screenHeightReduction= screenHeight*0.4;



      });
    }else{
      setState(() {
        screenHeightReduction=0;
        screenContSizeWidth=0;
        screenContSizeHeight=0;
        screenHeight=0;
        screenWidth=0;
        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContSizeHeight=screenHeight*0.06;
        screenContSizeWidth=screenWidth;
        screenHeightReduction= screenHeight*0.75;




      });
    }


    return Container(
        padding: const EdgeInsets.all(6),
       height: screenHeight,
        width: screenWidth,
        child:  SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Colors.black
                        ),
                        bottom: BorderSide(
                            color: Colors.black
                        ),
                        right: BorderSide(
                            color: Colors.black
                        )
                        ,
                        left: BorderSide(
                            color: Colors.black
                        )
                    )
                ),
                height: screenContSizeHeight-15,
                width: screenContSizeWidth,

                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(

                      hint: Text( accountStatus,style: const TextStyle(color: Colors.green,fontSize: 12,letterSpacing: 1,fontWeight:FontWeight.bold),),
                      focusColor: Colors.amber,
                      dropdownColor: Colors.white,
                      alignment: AlignmentDirectional.bottomEnd,
                      isExpanded: true,
                      style: const TextStyle(color: Colors.black),
                      autofocus: false,
                      onChanged: (value) {  },
                      items: accountStat.map((String stat){
                        return  DropdownMenuItem(
                          value: stat,
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(stat),
                          ),
                          onTap: (){
                            setState(() {
                              accountStatus=stat;

                            });
                          },
                        );
                      }).toList(),

                    ),
                  ),
                ),
              ),

              SizedBox(
                height:screenContSizeHeight,
                width: screenContSizeWidth,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8) ,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    maxLines: 1,
                    style: const TextStyle(color: Colors.black,fontSize: 12),
                    controller: search,
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
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  decoration: const BoxDecoration(
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

                  margin: const EdgeInsets.all(5),
                  height:screenHeightReduction,
                  width: screenWidth,

                  child: ListView.builder(

                    itemCount:50,
                      itemBuilder: (context, index) {
                      return  Material(
                        child: GestureDetector(
                          onDoubleTap: (){

                          },
                          child: Container(
                            height: screenContSizeHeight,
                            width:screenContSizeWidth,

                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black
                                )
                              )
                            ),


                            padding: const EdgeInsets.all(2),
                            margin: const EdgeInsets.all(4),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children:   <Widget>[


                                   Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Ojogun Emmanuel Ehiedu Emco $index',style: TextStyle(fontSize: 14),),
                                  )
                                  ,
                                  Container(
                                      height: 10,
                                    width: 10,
                                    decoration:const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100)) ,
                                      color:Colors.green,
                                    )

                                  )



                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                  }),
                ),
              )


            ],
          ),
        ),
        );

  }
}
