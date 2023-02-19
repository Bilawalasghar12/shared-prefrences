import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: App(),
      ),
    ),
  );

}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Padding(
        padding: EdgeInsets.only(left: 100, top: 100),
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              getStringValuesSF();
            },
              child: Text('Set'),
            ),
            ElevatedButton(onPressed: (){
              addStringToSF();
            },
            child: Text('get'),)




          ],
        ),
      ),
    );
  }
  addStringToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('stringValue', "bilawal");
  }
  getStringValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String? stringValue = prefs.getString('stringValue');
    print(stringValue);
    return stringValue;
  }



}
