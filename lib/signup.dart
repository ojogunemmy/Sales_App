
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  double screenWidth=0;
  double screenHeight=0;
  bool check=false;
  String stateshose='';
  String cont='';
  List<String> statesel=['State comes by selection of country'];
  List<String> county=['Nigeria','United State of America','United Kingdom'];
  final fullName=TextEditingController();
  final email=TextEditingController();
  final country=TextEditingController();
  final state=TextEditingController();
  final password=TextEditingController();
  final confirmPassword=TextEditingController();
  final _signupForm=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation.toString()=='Orientation.landscape'){



      setState(() {

        screenHeight=0;
        screenWidth=0;

        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width*0.80;







      });
    }else{
      setState(() {

        screenHeight=0;
        screenWidth=0;
        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width*0.80;





      });
    }
    return Scaffold(
      backgroundColor: Colors.black,
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
      body: SingleChildScrollView(

        child: SafeArea(
          top: false,
          bottom: false,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,

            children: <Widget>[
             Center(
               child: Container(
                 
                 decoration:const BoxDecoration(
                   color: Colors.white10,
                 border: Border(
                 bottom: BorderSide(
              style: BorderStyle.solid,
              color: Colors.amber,
              width: 1
          ),
            top: BorderSide(
                style: BorderStyle.solid,
                color: Colors.amber,
                width: 1
            ),
            left: BorderSide(
                style: BorderStyle.solid,
                color: Colors.amber,
                width: 1
            ),
            right: BorderSide(
                style: BorderStyle.solid,
                color: Colors.amber,
                width: 1

            ),
                 ),
        ),

                 margin: const EdgeInsets.all(24),
                 padding: const EdgeInsets.all(24),
                 width: screenWidth,


                 child: Form(


                     key:_signupForm,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                       children: <Widget>[
                         const Padding(
                           padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                           child: Center(child: Text('Fill in your details',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 3),)),
                         ),
                         const Divider(height: 1,thickness: 1,color: Colors.white,),
                         SizedBox(
                           width: 300,
                           child: Padding(
                             padding: const EdgeInsets.fromLTRB(8, 18, 8, 8) ,
                             child: TextFormField(
                               style: const TextStyle(color: Colors.white,fontSize: 12),
                               controller: fullName,
                               autofocus: false,
                               decoration: const InputDecoration(
                                   enabledBorder:UnderlineInputBorder(
                                       borderSide: BorderSide(color: Colors.white,width: 1)
                                   ),
                                   focusedBorder: UnderlineInputBorder(
                                       borderSide: BorderSide(color: Colors.amber)
                                   ),
                                   enabled: true,
                                   filled: true,
                                   label: Text('Fullname',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 2),)
                               ),
                             ),
                           ),
                         ),
                         SizedBox(

                           width: 300,
                           child: Padding(
                             padding: const EdgeInsets.fromLTRB(8, 18, 8, 8) ,
                             child: TextFormField(
                               maxLines: 1,
                               style: const TextStyle(color: Colors.white,fontSize: 12),
                               controller: email,
                               autofocus: false,
                               decoration: const InputDecoration(
                                   enabledBorder:UnderlineInputBorder(
                                     borderSide: BorderSide(color: Colors.white,width: 1)
                                   ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.amber)
                                  ),
                                  enabled: true,
                                 filled: true,
                                   label: Text('Email',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 2),)
                               ),
                             ),
                           ),
                         ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(11, 4, 0, 0),
                           padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                           child: const Text('Country',style: TextStyle(color: Colors.amber,fontSize: 16,letterSpacing: 1,fontWeight:FontWeight.bold),),
                         ),

                         Padding(
                           padding: const EdgeInsets.fromLTRB(8, 18, 8, 8) ,
                           child: DropdownButton<String>(
                             menuMaxHeight: 500,

                             hint: Text( cont,style: const TextStyle(color: Colors.white,fontSize: 12,letterSpacing: 1,fontWeight:FontWeight.bold),),
                             focusColor: Colors.amber,
                             dropdownColor: Colors.white,
                             alignment: AlignmentDirectional.topStart,
                             isExpanded: true,
                             style: const TextStyle(color: Colors.black),
                             autofocus: false,
                             onChanged: (value) {  },
                             items: county.map((String count){
                               return  DropdownMenuItem(
                                 value: count,
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text(count),
                                 ),
                                 onTap: (){
                                   setState(() {
                                     cont=count;

                                   });
                                 },
                               );
                             }).toList(),

                           ),
                         ),


                         Container(
                           margin: const EdgeInsets.fromLTRB(11, 4, 0, 0),
                           padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                           child: const Text('State',style: TextStyle(color: Colors.amber,fontSize: 16,letterSpacing: 1,fontWeight:FontWeight.bold),),
                         ),

                         Padding(
                           padding: const EdgeInsets.fromLTRB(8, 18, 8, 8) ,
                           child: DropdownButton<String>(
                             menuMaxHeight: 500,

                             hint: Text( stateshose,style: const TextStyle(color: Colors.white,fontSize: 12,letterSpacing: 1,fontWeight:FontWeight.bold),),
                             focusColor: Colors.white10,
                             dropdownColor: Colors.white,


                             alignment: AlignmentDirectional.topStart,
                             isExpanded: true,
                             style: const TextStyle(color: Colors.black),
                             autofocus: false,
                             onChanged: (value) {  },
                             items: statesel.map((String stat){
                               return  DropdownMenuItem(
                                 value: stat,
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text(stat),
                                 ),
                                 onTap: (){
                                   setState(() {
                                     stateshose=stat;

                                   });
                                 },
                               );
                             }).toList(),

                           ),
                         ),
                         SizedBox(
                           width: 300,
                           child: Padding(
                             padding: const EdgeInsets.fromLTRB(8, 18, 8, 8) ,
                             child: TextFormField(
                               style: const TextStyle(color: Colors.white,fontSize: 13),
                               obscureText: true,
                               obscuringCharacter: '*',
                               controller: password,
                               autofocus: false,
                               decoration: const InputDecoration(
                                   enabledBorder:UnderlineInputBorder(
                                       borderSide: BorderSide(color: Colors.white,width: 1)
                                   ),
                                   focusedBorder: UnderlineInputBorder(
                                       borderSide: BorderSide(color: Colors.amber)
                                   ),
                                   enabled: true,
                                   filled: true,
                                   label: Text('password',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 2),)
                               ),
                             ),
                           ),
                         ),
                         SizedBox(
                           width: 300,
                           child: Padding(
                             padding: const EdgeInsets.fromLTRB(8, 18, 8, 8) ,
                             child: TextFormField(
                               maxLines: 1,
                               style: const TextStyle(color: Colors.white,fontSize: 13),

                               obscureText: true,
                               obscuringCharacter: '*',
                               controller: confirmPassword,
                               autofocus: false,
                               decoration: const InputDecoration(

                                   enabledBorder:UnderlineInputBorder(
                                       borderSide: BorderSide(color: Colors.white,width: 1)
                                   ),
                                   focusedBorder: UnderlineInputBorder(
                                       borderSide: BorderSide(color: Colors.amber)
                                   ),
                                   enabled: true,
                                   filled: true,


                                   label: Text('Confirm password',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 2),)
                               ),
                             ),
                           ),
                         ),
                         Row(

                           textDirection: TextDirection.ltr,

                           children: [
                             Checkbox(
                               fillColor: MaterialStateProperty.all(Colors.amber),
                               activeColor: Colors.red,
                               checkColor:Colors.white,
                               focusColor: Colors.white,
                               value: check,
                               onChanged: (value){
                               setState(() {
                                 if(check==true){
                                   check=false;
                                 }else{
                                   check=true;

                                 }});
                               },),
                              SizedBox(



                               height: 60,
                               width:screenWidth-100,
                               child: FittedBox(
                                 fit: BoxFit.contain,
                                 child: Column(
                                   textDirection: TextDirection.ltr,
                                   children: const [
                                     Text.rich(

                                         TextSpan(

                                             children: [

                                               TextSpan(text:'That i agree and will ',style: TextStyle(fontSize:9.5,color: Colors.white,letterSpacing:1)),
                                               TextSpan(text:' adhere to the conditions of this platform',style: TextStyle(fontSize:9,color: Colors.white,letterSpacing:1)),


                                             ]
                                         )
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ],
                         ),


                         Padding(
                           padding: const EdgeInsets.only(top: 15),
                           child: SizedBox(
                             height: 50,
                             width: 100,
                             child: ElevatedButton(

                               onPressed: (){
                                 setState(() {
                                   Navigator.pushNamed(context, '/6');
                                 });
                               },
                               child: const Text('Create your account',style: TextStyle(fontSize: 20 ,color:Colors.amber ,letterSpacing: 1),),
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
                         Container(
                           padding: const EdgeInsets.only(top: 8),
                           child: FittedBox(

                             fit: BoxFit.contain,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children:  [
                                 const Text('if you already have an account..',style: TextStyle(color: Colors.white,letterSpacing: 1),),
                                 GestureDetector(
                                     onTap: (){
                                       Navigator.pushNamed(context, '/5');
                                     },
                                     child: const Text(' Login..',style: TextStyle(color: Colors.amber,letterSpacing: 1),)
                                 ),

                               ],
                             ),
                           ),
                         ),




                       ],
                     )
                 ),
               ),
             ),




            ],
          ),
        )
        ,
      ),

    );
  }
}
