import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX4C4W4G1L2-Rkb9wqmkvLkIUdYKLMKi83fWOmzyJuQE6u9Juec1HCUsozk4lcFpELHD0&usqp=CAU")
            ),
            Container(
              child: Text("TCE HOSTEL",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.purple,),),
          )
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('TCE HOSTEL',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        
        //decoration: BoxDecoration(
          //image: DecorationImage(
            //image: AssetImage('assets/background.jpg'),
            //fit: BoxFit.cover,
          //),
        //),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(height: 20),
                    //TextFormField(
                    //  decoration: InputDecoration(
                    //    labelText: 'Roll Number',
                    //    prefixIcon: Icon(Icons.confirmation_number),
                    //  ),
                    //),
                    //SizedBox(height: 20),
                    //TextFormField(
                    //  decoration: InputDecoration(
                    //    labelText: 'Email',
                    //    prefixIcon: Icon(Icons.mail),
                    //  ),
                    //),
                    //SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            
                          },
                          icon: Icon(Icons.visibility),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    InkWell(
  onTap: () {
    // Handle Google Sign In
  },
  child: AnimatedContainer(
    duration: Duration(milliseconds: 300),
    curve: Curves.easeIn,
    width: 300,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.android, // You can replace this with the Google icon
          color: Colors.purple,
        ),
        SizedBox(width: 10),
        Text(
          'Continue with Google',
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple,
          ),
        ),
      ],
    ),
  ),
),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Back'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


