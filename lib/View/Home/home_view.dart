import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var arrNames=['Shazaib','Muzammil','Fawad','Usman','Musab','Sagher','Hasnat','Khalid','Hassan','Abdullah','Touseq','Shawaiz'];
    var color=[Colors.yellow, Colors.blue, Colors.yellow, Colors.blue, Colors.yellow, Colors.blue, Colors.yellow, Colors.blue, Colors.yellow];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true,
            title:Text("Phone Calls",
            style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w400,
                fontSize: 25
              ),
            ),
          leading: Icon(Icons.arrow_back),
          actions: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          )   ]
        ),
        body: ListView.builder(
          itemCount: arrNames.length,
          itemBuilder: (context,index){

          return Center(
            child: Container(
              height: 80,
              margin: EdgeInsets.only(bottom: 0.5),
              color: Colors.black54,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey.shade200,
                    backgroundImage: AssetImage('assets/images/human.webp'),
                  radius: 20,

                    ),
                title: Text(arrNames[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'FootMain'),),
                subtitle: Text('0319-2529094',style: TextStyle(fontSize: 18,color: Colors.white70),),
                trailing: CircleAvatar(child: Icon(Icons.add_call,color: Colors.black,),backgroundColor: Colors.blueGrey.shade200,),
              ),
            ),
          );
        },
        ),
      ),
    );
  }
}
