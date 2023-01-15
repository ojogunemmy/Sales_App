import 'package:flutter/material.dart';
class AdminSearchPage extends StatefulWidget {
  const AdminSearchPage({Key? key}) : super(key: key);

  @override
  _AdminSearchPageState createState() => _AdminSearchPageState();
}

class _AdminSearchPageState extends State<AdminSearchPage> {
  //Layout designer
  double screenWidth=0;
  double screenHeight=0;
  double screenContWidth=0;
  double screenContHeight=0;
  String hint='Enter Name,Id,Email,Tracking id';


  final searchBar=TextEditingController();
  @override
  Widget build(BuildContext context) {

    if(MediaQuery.of(context).orientation.toString()=='Orientation.landscape'){



      setState(() {

        screenHeight=0;
        screenWidth=0;
        screenContWidth=0;
        screenContHeight=0;



        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContWidth=screenWidth*0.8;
        screenContHeight=60;


      });
    }else{
      setState(() {

        screenHeight=0;
        screenWidth=0;
        screenContWidth=0;
        screenContHeight=0;

        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContHeight=screenHeight*0.09;

        screenContWidth=screenWidth*0.80;






      });
    }
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(8),
      height: screenHeight,
      width: screenWidth,

     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children:  <Widget>[

         SizedBox(
           width: screenContWidth,
           child:  TextField(
             onChanged: (text){
               setState(() {
                 if(text.isEmpty) {
                   searchBar.text=text;
                   hint = 'Enter Name,Id,Email,Tracking id';
                 }else{
                   hint='';
                   searchBar.text=text;
                 }
               });
                   

             },
             style: const TextStyle(color: Colors.amber),

             decoration: InputDecoration(
               hintText:hint,
                 hintStyle: const TextStyle(letterSpacing: 1,fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white60),


                 enabledBorder:const OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.amber,width: 1),
                     borderRadius: BorderRadius.all(Radius.zero)
                 ),
                 focusedBorder: const OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.amber)
                 ),
                 enabled: true,
                 filled: true,
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(16),
           child: SizedBox(
             width: screenContWidth,
             height:screenContHeight,
             child: ElevatedButton(

               onPressed: (){

                 setState(() {
                   print(searchBar.text);

                 });
               },
               child: const Text('Search',style: TextStyle(fontSize: 24 ,color:Colors.amber ,letterSpacing: 2),),
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
    );
  }
}
