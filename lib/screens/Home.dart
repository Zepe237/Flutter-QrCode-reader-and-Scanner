import 'package:flutter/material.dart';
import 'package:qr_pay/screens/HomePage.dart';
import 'package:qr_pay/screens/ScanPage.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  Text('Home',
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
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [
              Text('data')
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              margin:EdgeInsets.only(left: 18, right: 18),
              padding: EdgeInsets.only(top: 10, bottom: 10),
              width: MediaQuery.of(context).size.width-20,
              height: MediaQuery.of(context).size.height/3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  ),
                ),
                child: Image.asset('assets/images/payement.jpg',
                fit: BoxFit.fill, 
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-10,),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              child: Text(
                'QrPay',style: TextStyle(
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
             Padding(padding: EdgeInsets.only(top: 20)),
            Column(
              children: [
                Container(
                  child: Text(
                  'Instructions',style: TextStyle(
                  fontSize: 40,
                  decoration: TextDecoration.underline,
                  color: Colors.blueAccent,
                ),
              ),
            ),
             Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 30 , top: 10, right: 25, left: 15),
                  child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit' 
                   'sed do eiusmod tempor incididunt ut labore et dolore magna' 
                   'aliqua. Ut enim ad minim veniam, quis nostrud exercitation'
                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit' 
                   'sed do eiusmod tempor incididunt ut labore et dolore magna' 
                   'aliqua. Ut enim ad minim veniam, quis nostrud exercitation'
                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit' 
                   'sed do eiusmod tempor incididunt ut labore et dolore magna' 
                   'aliqua. Ut enim ad minim veniam, quis nostrud exercitation'
                   'aliqua. Ut enim ad minim veniam, quis nostrud exercitation'
                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit' 
                   'sed do eiusmod tempor incididunt ut labore et dolore magna' 
                   'aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                  style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ),

              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  ),
                ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width/2)-20,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.create, color: Colors.pinkAccent.shade400,),
                          Padding(
                            padding: EdgeInsets.only(left: 20, ),
                  ),
                          Text(
                            'Generate',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.blueAccent,
                ),
                    ),
                        ],
                      ),
                    )
                  ),
                  Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                  Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  ),
                ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width/2)-20,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanPage()));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.payment, color: Colors.pinkAccent.shade400,),
                          Padding(
                            padding: EdgeInsets.only(left: 20, ),
                  ),
                          Text(
                            'Pay',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.blueAccent,
                ),
                    ),
                        ],
                      ),
                    )
                  ),
                ],
              ),
              
            ),
            Padding(padding: EdgeInsets.only(top:30,))
          ],
        ),
      ),
    );
  }
}