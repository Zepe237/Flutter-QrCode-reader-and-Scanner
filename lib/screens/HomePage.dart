import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'scanPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = new TextEditingController();
  String _data = 'data';
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.pink.shade400 , Colors.blue.shade400]),
          ),
        ),
        centerTitle: true,
        title: Container(
          alignment: Alignment.center,
          height: 40,
          child: SizedBox(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo_feusap.png',
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                  ),
                  Text('Generate',
                    style: TextStyle(
                      fontFamily: 'before',
                      fontWeight: FontWeight.bold,
                      fontSize: 30))
                ],
              )
            ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ) ,
      drawer: Drawer(
        child: Column(
          children: [
            Text('data')
          ],
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 45)),
            Text('Generate a QrCode', style: TextStyle(fontFamily: 'cream', color: Colors.pinkAccent, fontSize: 36),),
            Container(
              decoration: BoxDecoration(
                color: Colors.white70
              ),
              child: QrImage(
            data: _data,
            version: 2,
            size: 320,
            gapless: false,
            backgroundColor: Colors.white70,
            foregroundColor: Colors.black,
            errorStateBuilder: (cxt, err) {
              return Container(
                child: Center(
                  child: Text(
                    "Uh oh! Something went wrong..."+ err.toString()+ textController.value.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
          ),
            )
           ,Padding(padding: EdgeInsets.only(top: 45)),
          TextField(
            controller: textController,
            decoration: InputDecoration(
              hintText: 'enter your data',
              labelStyle: TextStyle(fontFamily: 'cream', color: Colors.blueAccent),
              icon: Icon(Icons.qr_code),
            ),
          ),
          IconButton(onPressed: create, icon: Icon(Icons.add),),

          // IconButton(onPressed: next(), icon: Icon(Icons.next_plan))
          ],
        ),
      ),
    );
  }

   void create(){
    setState(() {
      _data = textController.text.toString();
    });
  }

   next()async{
    await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanPage()));
  }
}