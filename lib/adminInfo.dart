



import 'dart:io';

import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';

class AdminInfo extends StatefulWidget {
  const AdminInfo({Key? key}) : super(key: key);

  @override
  _AdminInfoState createState() => _AdminInfoState();
}

class _AdminInfoState extends State<AdminInfo> {
  //Layout controls
  double screenWidth=0;
  double screenHeight=0;
  double screenContWidth=0;
  double screenContHeight=0;
  double growWidth=0;
  double growHeight=0;
  double screenContWidthContent=0;
  double screenContHeightContent=0;
  double imageHeight=0;
  double imageWidth=0;
  double docContainerHeight=0;
  double docContainerWidth=0;



  //Details of Accounts
  String adminName='Ojogun Emmanuel Ehiedu';
  String position='Manager';
  int progress=100;
  List<String> details=[];
  File imageUpload=File('');
  String adminId='Admin56920';




  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation.toString()=='Orientation.landscape'){



      setState(() {

        screenHeight=0;
        screenWidth=0;
        screenContWidth=0;
        screenContHeight=0;
        imageWidth=0;
        imageHeight=0;
        screenContWidthContent=0;
        screenContHeightContent=0;
        docContainerHeight=0;
        docContainerWidth=0;
        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContHeight=screenHeight*0.50;
        imageWidth=screenWidth*0.40;
        imageHeight=screenHeight*0.50;
        screenContWidth=screenWidth;
        screenContWidthContent=screenContWidth;
        screenContHeightContent=screenHeight*0.09;
        docContainerHeight=screenHeight*0.50;
        docContainerWidth=screenWidth;


      });
    }else{
      setState(() {

        screenHeight=0;
        screenWidth=0;
        screenContWidth=0;
        screenContHeight=0;
        imageWidth=0;
        imageHeight=0;
        screenContWidthContent=0;
        screenContHeightContent=0;
        docContainerHeight=0;
        docContainerWidth=0;

        growWidth=0;
        growHeight=0;
        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContHeight=screenHeight*0.23;
        imageWidth=screenWidth;
        imageHeight=screenHeight*0.25;
        screenContWidth=screenWidth;
         screenContWidthContent=screenContWidth;
         screenContHeightContent=screenHeight*0.04;
         docContainerHeight=screenHeight*0.25;
         docContainerWidth=screenWidth;
      });
    }
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () async{
              FilePickerResult? result=await FilePicker.platform.pickFiles(type: FileType.image);

              if(result!=null){
                String filepath=result.files.first.path.toString();
                imageUpload=File(filepath);


              }else{
                const snack=SnackBar(content:Text('No image selected for upload'));
                ScaffoldMessenger.of(context).showSnackBar(snack);
              }


            },
            child: Container(

              margin: const EdgeInsets.all(8),
              decoration:  BoxDecoration(

               borderRadius: const BorderRadius.all(Radius.circular(6)),

               border: Border.all(width: 1,color: Colors.black,style: BorderStyle.solid),

              ),


              width: imageWidth,
              height: imageHeight,
              child: Center(child: Image.asset('assets/images/online-shopping.png')),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children:<Widget> [
              const Divider(
                thickness: 1,
                color: Colors.brown,
              ),
              Container(
                  decoration: BoxDecoration(

                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.amber,

                      border: Border.all(color: Colors.brown,)
                  ),

                  height: 35,
                  width: 120,

                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text('Profile',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,letterSpacing: 1),),


                    ],
                  )
              ),

            ],
          ),
          Container(


            margin: const EdgeInsets.all(2),

            width: screenContWidth,
            height: screenContHeight,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 2,),

                const SizedBox(height: 5,),
                Container(

                  height: screenContHeightContent,
                  width: screenContWidthContent,
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Text('Name:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1),),
                      const SizedBox(width: 5,),
                      Text(adminName,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1)),

                    ],
                  )
                ),
                Container(

                    height: screenContHeightContent,
                    width: screenContWidthContent,
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Text('Position:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1),),
                        const SizedBox(width: 5,),
                        Text(position,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1)),

                      ],
                    )
                ),
                Container(

                    height: screenContHeightContent,
                    width: screenContWidthContent,
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        const Text('Employee Id:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1),),
                        const SizedBox(width: 5,),
                        Text(adminId,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1)),

                      ],
                    )
                ),
                Container(

                    height: screenContHeightContent,
                    width: screenContWidthContent,
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Text('Progress:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1),),
                        const SizedBox(width: 5,),
                        Text('$progress%',style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1)),

                      ],
                    )
                ),

                const SizedBox(height: 10,),
                Row(
                  children:<Widget> [
                    GestureDetector(
                      child: Container(

                          child: const Text('Click to Upload',style: TextStyle(letterSpacing: 1),),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.all(Radius.circular(5))

                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      child: Container(
                        child: const Text('Delete',style: TextStyle(letterSpacing: 1),),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(Radius.circular(5))

                        ),
                      ),
                    ),
                  ],
                ),


              ],
            ),

          ),
          Stack(
            alignment: Alignment.center,
            children:<Widget> [
              const Divider(
                thickness: 1,
                color: Colors.brown,
              ),
              Container(
                  decoration: BoxDecoration(

                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.amber,

                      border: Border.all(color: Colors.brown,)
                  ),

                  height: 35,
                  width: 180,

                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text('Uploaded Documents',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,letterSpacing: 1),),


                    ],
                  )
              ),

            ],
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 1),
            width: docContainerWidth,
            height: docContainerHeight,
            child: ListView(

              children:  <Widget>[


               Container(

                 margin:const EdgeInsets.all(4),
                 padding:const EdgeInsets.only(top: 8),
                 child: const Text('State of Origin.doc',style: TextStyle(letterSpacing: 1),),
               ),
                Container(

                  margin:const EdgeInsets.all(4),
                  padding:const EdgeInsets.only(bottom: 1),
                  child: const Text('State of Origin.doc',style: TextStyle(letterSpacing: 1),),
                ),
                Container(

                  margin:const EdgeInsets.all(4),
                  padding:const EdgeInsets.only(bottom: 1),
                  child: const Text('State of Origin.doc',style: TextStyle(letterSpacing: 1),),
                ),
                Container(

                  margin:const EdgeInsets.all(4),
                  padding:const EdgeInsets.only(bottom: 1),
                  child: const Text('State of Origin.doc',style: TextStyle(letterSpacing: 1),),
                ),
                Container(

                  margin:const EdgeInsets.all(4),
                  padding:const EdgeInsets.only(bottom: 1),
                  child: const Text('State of Origin.doc',style: TextStyle(letterSpacing: 1),),
                ),
                Container(

                  margin:const EdgeInsets.all(4),
                  padding:const EdgeInsets.only(bottom: 1),
                  child: const Text('State of Origin.doc',style: TextStyle(letterSpacing: 1),),
                ),
                Container(

                  margin:const EdgeInsets.all(4),
                  padding:const EdgeInsets.only(bottom: 1),
                  child: const Text('State of Origin.doc',style: TextStyle(letterSpacing: 1),),
                ),
                Container(

                  margin:const EdgeInsets.all(4),
                  padding:const EdgeInsets.only(bottom: 1),
                  child: const Text('State of Origin.doc',style: TextStyle(letterSpacing: 1),),
                ),
                Container(

                  margin:const EdgeInsets.all(4),
                  padding:const EdgeInsets.only(bottom: 1),
                  child: const Text('State of Origin.doc',style: TextStyle(letterSpacing: 1),),
                ),
                Container(

                  margin:const EdgeInsets.all(4),
                  padding:const EdgeInsets.only(bottom: 1),
                  child: const Text('State of Origin.doc',style: TextStyle(letterSpacing: 1),),
                ), Container(

                  margin:const EdgeInsets.all(4),
                  padding:const EdgeInsets.only(bottom: 1),
                  child: const Text('State of Origin.doc',style: TextStyle(letterSpacing: 1),),
                ),




              ],
            ),

          )

        ],
      ),
    );
  }
}
