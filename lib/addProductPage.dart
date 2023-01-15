

import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  double screenWidth=0;
  double screenHeight=0;
  double screenContWidth=0;
  double screenContHeight=0;
  double growWidth=0;
  double growHeight=0;
  final newProductName=TextEditingController();
  final nPrice=TextEditingController();
  final description=TextEditingController();
  final weight=TextEditingController();
  String fileName='Choose image';
   var file=File('');
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
        screenContWidth=screenWidth*0.8;
        screenContHeight=60;
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
        screenContHeight=60;

        screenContWidth=screenWidth*0.80;
        growHeight=100;
        growWidth=screenContWidth*0.40;
      });
    }
    return SizedBox(
        width: screenWidth,
        height: screenHeight,

        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,



              children: <Widget>[
                Column(
                  children: [
                    SizedBox(
                      height: growHeight,


                      width: screenContWidth,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 30, 8, 8) ,
                        child: TextFormField(
                          maxLines: 1,
                          style: const TextStyle(color: Colors.black,fontSize: 14),
                          controller:newProductName,
                          autofocus: false,
                          decoration: const InputDecoration(
                              enabledBorder:OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber,width: 1),
                                  borderRadius: BorderRadius.all(Radius.zero)
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber)
                              ),
                              enabled: true,
                              filled: true,
                              hintText: 'product name'
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
                          style: const TextStyle(color: Colors.black,fontSize: 14),
                          controller: nPrice,
                          autofocus: false,
                          decoration: const InputDecoration(
                              enabledBorder:OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber,width: 1),
                                  borderRadius: BorderRadius.all(Radius.zero)
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber)
                              ),
                              enabled: true,
                              filled: true,
                              hintText: 'Price '
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
                          style: const TextStyle(color: Colors.black,fontSize: 14),
                          controller:weight,
                          autofocus: false,
                          decoration: const InputDecoration(
                              enabledBorder:OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber,width: 1),
                                  borderRadius: BorderRadius.all(Radius.zero)
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber)
                              ),
                              enabled: true,
                              filled: true,
                              hintText: 'Weight'
                          ),
                        ),
                      ),
                    ),
                    Container(

                      padding: const EdgeInsets.all(4),

                      width: screenContWidth-10,
                      height: screenContHeight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width:screenContWidth*0.5,
                            child: ElevatedButton(

                              onPressed: () async{

                                setState(() async {
                                  FilePickerResult? image = await FilePicker.platform.pickFiles(
                                    type: FileType.image,

                                  );

                                  if (image != null) {
                                    File file = File(image.files.single.path.toString());
                                    setState(() {
                                      fileName=image.files.single.name.toString();
                                    });



                                  } else {
                                    const snack=SnackBar(content:Text('No image selected'));
                                    
                                    
                                    ScaffoldMessenger.of(context).showSnackBar(snack);
                                    
                                    // User canceled the picker
                                  }

                                });
                              },
                              child: const Text('Upload picture',style: TextStyle(fontSize: 12 ,color:Colors.black ,letterSpacing: 2),),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white60 ,
                                  shadowColor: Colors.white60,
                                  elevation: 0
                                  ,side:const BorderSide(
                                color: Colors.amber,
                                width: 1,
                              )
                              ),



                            ),
                          ),

                          FittedBox(
                            fit: BoxFit.contain,

                            child:Container(

                              height: screenContHeight,
                              width: screenContWidth*0.45,
                              padding: const EdgeInsets.all(4),

                              margin: const EdgeInsets.only(left: 8),
                              child: Center(child: Text(fileName,style: const TextStyle(fontSize: 12),)),
                            ),
                          )
                          
                        ],
                      ),
                    )

                  ],
                ),

                SizedBox(
                      height: growHeight,

                      width: screenContWidth,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 30, 8, 8) ,
                        child: TextFormField(
                          maxLines: 10,
                          style: const TextStyle(color: Colors.black,fontSize: 14),
                          controller: description,
                          autofocus: false,
                          decoration: const InputDecoration(
                              enabledBorder:OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber,width: 1),
                                  borderRadius: BorderRadius.all(Radius.zero)
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber)
                              ),
                              enabled: true,
                              filled: true,
                              hintText: 'Description'
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                        width: screenContWidth-10,
                        height: screenContHeight,
                        child: ElevatedButton(

                          onPressed: (){

                            setState(() {

                            });
                          },
                          child: const Text('Add product',style: TextStyle(fontSize: 24 ,color:Colors.amber ,letterSpacing: 2),),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              shadowColor: Colors.green,
                              elevation: 0
                              ,side:const BorderSide(
                            color: Colors.amber,
                            width: 1,
                          )
                          ),


                        ),
                      ),
                    )

                  ],
                )


//end


    ),
          ),


    );
  }
}
