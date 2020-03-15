import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xff3d1c92),
        child: ListView(
          children: <Widget>[
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _posImg(),
            _caja()
          ],
        ),
          ],
        )
      ),
    );
  }
  Widget _caja(){
    return Container(
      width: 370,
      height: 400,
      //margin: EdgeInsets.only(top:10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(45),
          bottomRight: Radius.circular(45)
        ),
        color: Colors.white,
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _titulos(),
          _inputUsername(),
          _inputPass(),
          _boton(),
          _textoforgot()
        ],
      )
    );
  }
  Widget _titulos(){
      return Container(
        padding: EdgeInsets.only(left:20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 20
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  'Health',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                  ),
                  Text(
                  ' Care',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                    color: Colors.red
                  ),
                  ),
              ],
            )
          ],
        ),
      );
  }
  Widget _inputUsername(){
    return Container(
      padding: EdgeInsets.only(right: 35, top: 30),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Enter your username',
          prefixIcon: Icon(Icons.person_outline)
        ),
      ),
    );
  }
  Widget _inputPass(){
    return Container(
      padding: EdgeInsets.only(right: 35, top: 30, bottom: 30),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Enter your password',
          prefixIcon: Icon(Icons.lock_outline)
        ),
        
      ),
    );
  }
  Widget _boton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
       Container(
         padding: EdgeInsets.only(right: 40),
         child:  RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 5,top: 3,bottom: 3)),
              Text('Login  ', 
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
               ),
              ),
              Icon(Icons.arrow_forward, color: Colors.white,)
            ],
          ),
          onPressed: (){},
          color: Colors.red,
          ),
       )
      ],
    );
  }
  Widget _textoforgot(){
    return Container(
      padding: EdgeInsets.only(top: 30, left: 10,),
      child: Text(
        'Forgot Password?',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.0
        ),
        ),
    );
  }
  Widget _posImg(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 270,
              padding: EdgeInsets.only(right:20, top: 60),
              child: Image(
                width: 180,
                image: AssetImage('img/health.png')
                ),
            )
          ],
      );
  }
}