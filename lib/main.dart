import 'package:flutter/material.dart';
import 'Page2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  )); //MaterialApp
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Gedung.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.shortestSide,
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                  color: Color.fromRGBO(203, 150, 43, 1),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        CircleAvatar(
                          radius: 100.0,
                          backgroundImage: 
                          AssetImage('assets/images/jokowi.jpg'),
                        ),
                        Text("Kenzi Badrika",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.black )
                        ),

                        Text("SMKS Wikrama Bogor", 
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color:Colors.black )
                        ),
                        Text("PPLG", 
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color:Colors.black )
                        ),

                        TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        }, child: Text('see more')
                        ),
                      ],
                    ),
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}