import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldworld/adminHistory.dart';
import 'package:goldworld/adminOrders.dart';
import 'package:goldworld/processedOrder.dart';
class AdminOrderReceived extends StatefulWidget {
  const AdminOrderReceived({Key? key}) : super(key: key);

  @override
  _AdminOrderReceivedState createState() => _AdminOrderReceivedState();
}

class _AdminOrderReceivedState extends State<AdminOrderReceived> {
  double screenContSizeHeight=0;
  double screenContSizeWidth=0;
  double screenWidth=0;
  double screenHeight=0;

  int selectedNav=0;
  List<Widget> views=[const AdminOrders(),  const ProcessedOrders(),  const AdminHistory()];




  @override
  Widget build(BuildContext context) {



    if(MediaQuery.of(context).orientation.toString()=='Orientation.landscape'){



      setState(() {
        screenContSizeWidth=0;
        screenContSizeHeight=0;
        screenHeight=0;
        screenWidth=0;
        screenHeight=MediaQuery.of(context).size.width;
        screenWidth=MediaQuery.of(context).size.height;
        screenContSizeHeight=screenHeight*0.5;
        screenContSizeWidth=screenWidth;




      });
    }else{
      setState(() {
        screenContSizeWidth=0;
        screenContSizeHeight=0;
        screenHeight=0;
        screenWidth=0;
        screenHeight=MediaQuery.of(context).size.height;
        screenWidth=MediaQuery.of(context).size.width;
        screenContSizeHeight=screenHeight*0.25;
        screenContSizeWidth=screenWidth;




      });
    }
    return Scaffold(
      body: Center(child: views.elementAt(selectedNav)),
          
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedNav,

        onTap: (selected){
          setState(() {
            selectedNav=selected;


          });

        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.pending_actions),label: 'pending order',tooltip: 'awaiting feedback'),
          BottomNavigationBarItem(icon: Icon(Icons.list),tooltip: 'processed orders',label: 'processed',),
          BottomNavigationBarItem(icon: Icon(Icons.history),tooltip: 'closed orders',label: 'History'),


        ],

      ),
    );
  }
}
