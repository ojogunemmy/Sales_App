
import 'package:flutter/material.dart';
class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);


  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  double screenWidth=0;
  double screenHeight=0;
  double screenContWidth=0;
  double screenContHeight=0;
  double growWidth=0;
  double growHeight=0;
  String productName='Gold';
  String mass='60';
  String price='2000';
  List<String> status=['in stock','out of stock'];
  String currentStatus='in stock';

  String description='Gold details purity';


  Color _colorStyle(){
    if(currentStatus=='in stock'){

      return Colors.green;
    }
    else{
      return Colors.red;
    }
  }



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
        screenContHeight=screenHeight*0.7;
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
        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContHeight=screenHeight*0.35;

        screenContWidth=screenWidth;
        growHeight=100;
        growWidth=screenContWidth*0.40;
      });
    }

    return SizedBox(
      height: screenHeight,
        width: screenWidth,


        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Container(

              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4)),
                border:  Border(
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
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.all(2),

              height: screenContHeight,
              width: screenContHeight,
              child:  Row(
                children: <Widget>[
                  Container(

                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.all(4),

                    decoration: const BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border:  Border(
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
                    width: screenWidth*0.40,
                    child:const Image(image: AssetImage('assets/images/online-shopping.png'),fit: BoxFit.contain,),

                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.all(4),

                    width: screenWidth*0.5,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  <Widget>[
                         Padding(
                          padding: const EdgeInsets.all(2),
                          child: Text(productName,
                            style: const TextStyle(fontSize: 24,color: Colors.black,fontFamily: 'Arial',letterSpacing: 1),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text('Mass(kg or Ounce):$mass',
                            style: const TextStyle(fontSize: 15,color: Colors.black,fontFamily: 'Arial',letterSpacing: 1),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text('Price(USD): $price  ',
                              style: const TextStyle(fontSize:15,color: Colors.black,fontFamily: 'Arial',letterSpacing: 1),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text('Status:',
                                style: TextStyle(fontSize:15,color: Colors.black,fontFamily: 'Arial',letterSpacing: 1),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Container(


                                  height: 30,
                                  width: 115,


                                  padding: const EdgeInsets.only(left: 3,right: 8),
                                  decoration:  BoxDecoration(
                                      border:Border.all(
                                          color: Colors.white60
                                      )),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(


                                      hint: Text( currentStatus,style: TextStyle(color: _colorStyle(),fontSize: 12,letterSpacing: 1,fontWeight:FontWeight.bold),),

                                      focusColor: Colors.amber,
                                      dropdownColor: Colors.white,
                                      alignment: AlignmentDirectional.topStart,
                                      isExpanded: true,
                                      style: const TextStyle(color: Colors.black),
                                      autofocus: false,
                                      onChanged: (value) {  },

                                      items: status.map((String stat){
                                        return  DropdownMenuItem(
                                          value: stat,
                                          child:Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(stat),
                                          ),
                                          onTap: (){
                                            setState(() {
                                              currentStatus=stat;
                                              //print(orderTypeSelected);

                                            });
                                          },
                                        );
                                      }).toList(),

                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        Container(
                          height: screenContHeight*0.25,
                          width: screenWidth,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,


                            )
                          ),
                          padding: const EdgeInsets.all(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(description,style: const TextStyle(fontSize: 12),)
                            ],
                          ),
                        ),
                        Row(
                          children:<Widget> [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 40,

                                child: ElevatedButton(

                                  onPressed: (){

                                    setState(() {

                                    });
                                  },
                                  child: const Text('Delete',style: TextStyle(fontSize: 12 ,color:Colors.amber ,letterSpacing: 1),),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red,
                                      elevation: 0
                                      ,side:const BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  )
                                  ),


                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 40,

                                child: ElevatedButton(

                                  onPressed: (){

                                    setState(() {

                                    });
                                  },
                                  child: const Text('Update',style: TextStyle(fontSize: 12 ,color:Colors.amber ,letterSpacing: 1),),
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
                        ),





                    ),




                ],
              )

            )
        )

    );
  }
}
