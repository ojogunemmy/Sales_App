


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  double screenWidth=0;
  double screenHeight=0;
  double screenContWidth=0;
  double screenContHeight=0;
  double growWidth=0;
  double growHeight=0;

  String orders='0';
  String totalUserCounter='100000';
  String activeAccounts='10000';
  String completedDeals='1000';
  String newUsersToday='90';
  String activeAccountToday='59';
  String completedDealsToday='20';

  final search=TextEditingController();



  
   searchDisplay(value){
    return Container(
      color: Colors.grey,
      child: const Text('data'),
    );
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
        screenContHeight=screenHeight*0.2;
        screenContWidth=screenWidth;
        growHeight=screenContHeight*0.5;
        growWidth=screenContWidth*0.30;






      });
    }
    return Container(
      padding: const EdgeInsets.all(2),
      height: screenHeight,
      width: screenWidth,
      child: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Container(
                height: screenContHeight,
                width: screenContWidth,

                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                    color: Colors.black,
                    border: Border(
                        top: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.black,
                            width: 1
                        ),
                        bottom: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.amber,
                            width: 1
                        )
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Number of Accounts:',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(totalUserCounter,style: const TextStyle(color: Colors.white,letterSpacing: 1, fontWeight: FontWeight.bold,fontSize: 18)),
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Active Accounts: ',style: TextStyle( color: Colors.white,letterSpacing: 1,fontWeight: FontWeight.bold,fontSize: 18),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(activeAccounts,style: const TextStyle( color: Colors.white,letterSpacing: 1,fontWeight: FontWeight.bold,fontSize: 18)),
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Number of Completed deals: ',style: TextStyle( color: Colors.white,letterSpacing: 1,fontWeight: FontWeight.bold,fontSize: 18),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(completedDeals,style: const TextStyle(color: Colors.white,letterSpacing: 1, fontWeight: FontWeight.bold,fontSize: 18)),
                        )

                      ],
                    )



                  ],
                ),

              ),
              Container(
                color: Colors.greenAccent,
                height: 500,

                width: screenContWidth,

                child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context,index){

                      return  Material(
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color:Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              ),


                              height: screenContHeight,
                              width: screenContWidth,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      color: Colors.grey,
                                      height:screenContHeight,
                                      width: screenContWidth*0.5,
                                      constraints:  const BoxConstraints(
                                        maxWidth: 500,
                                        minWidth: 150,

                                      ),



                                      child: Column(
                                        children: const <Widget>[
                                          Text('data')


                                        ],
                                      ),
                                    ),
                                  ),



                                ],


                              ),
                            ),
                          ));
                    }



                ),
              )



            ],
          ),
      ),
    );



  }


}
