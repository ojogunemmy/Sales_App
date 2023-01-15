
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  double screenWidth=0;
  double screenHeight=0;
  double screenContWidth=0;
  double screenContHeight=0;
  double growWidth=0;
  double growHeight=0;
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
        screenWidth=MediaQuery.of(context).size.width-100;
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
        growHeight=screenContHeight*0.8;
        growWidth=screenContWidth*0.40;






      });
    }

    final loginEntry=TextEditingController();
    final loginPasswordEntry=TextEditingController();
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
            child: IconButton(
                onPressed:  (){
                  Navigator.pushNamed(context, '/4');
                } ,
                icon: const Icon(Icons.home_outlined,size: 35,color: Colors.black,)
            ),
          )

        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child:Container(

            width: screenWidth,
            color: Colors.black26,
            child: Column(


              children:<Widget> [

              Container(
                margin: const EdgeInsets.all(24),

                padding: const EdgeInsets.all(24),
                decoration: const BoxDecoration(
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
                  )




                  )
                ),

                width: screenWidth/1.2,


                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8, 14, 8, 8),
                      child: Center(child: Text('Sign in your details',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 4),)),
                    ),
                    const Divider(height: 1,thickness: 1,color: Colors.white,),


                    SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 18, 8, 8) ,
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white,fontSize: 12),
                          controller: loginEntry,
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
                    SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 18, 8, 8) ,
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white,fontSize: 13),
                          obscureText: true,
                          obscuringCharacter: '*',
                          controller: loginPasswordEntry,
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
                    Padding(
                      padding:const EdgeInsets.fromLTRB(8, 20, 8, 8) ,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context,'/7' );

                        },
                        child:SizedBox(
                            width: 280,

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const<Widget> [
                                Text('Forgot password',style: TextStyle(color:Colors.amber),),
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 20, 8, 8) ,
                      child: SizedBox(
                        height: 50,
                        width: 290,
                        child: ElevatedButton(

                          onPressed: (){
                          },
                          child: const Text('Login',style: TextStyle(fontSize: 20 ,color:Colors.amber ,letterSpacing: 1),),
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
                ,
              )

              ],
            ),
          )

        ),
      ),

    );
  }
}
