import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(microseconds: 800)
    ); // AnimationController
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.easeOut
    ); // CurvedAnimation
    _iconAnimation.addListener(() => this.setState((){}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueGrey,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
              image: new AssetImage("assets/fishtail.jpeg"),
              fit: BoxFit.cover,
              color: Colors.white70,
              colorBlendMode: BlendMode.lighten,
          ), // Image
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 100,
              ), // FlutterLogo
              new Container(
                padding: const EdgeInsets.all(40.0),
                child: new Form(
                  child: new Theme(
                    data: new ThemeData(
                      brightness: Brightness.light,
                      primarySwatch: Colors.blue,
                      inputDecorationTheme: new InputDecorationTheme(
                        labelStyle: new TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0
                        ), // TextStyle
                      ), // InputDecorationTheme
                    ), // ThemeData
                    child: new Column(
                      children: <Widget>[
                        new TextFormField(
                          decoration: new InputDecoration(labelText: "Enter Security Key."),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ), // TextFormField
                        new Padding(padding: const EdgeInsets.only(top: 20.0)),
                        new MaterialButton(
                          height: 45.0,
                          minWidth: 140.0,
                          color: Colors.teal,
                          textColor: Colors.white,
                          onPressed: () => {},
                          child: new Text("Login"),
                        ), // MaterialButton
                      ], // <Widget>
                    ), // Column
                  ), // Theme
                ), // Form
              ),
            ], //<Widget>
          ), // Column
        ], // <Widget>
      ), // Stack
    ); // Scaffold
  }
}
