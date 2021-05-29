import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitched = false;
  var textValue = "OFF";

  void toggleSwitch(bool value){
    if(isSwitched == false)  
    {  
      setState(() {  
        isSwitched = true;  
        textValue = 'ON';  
      });  
    }  
    else  
    {  
      setState(() {  
        isSwitched = false;  
        textValue = 'OFF';  
      });  
    } 
  }
  @override
  Widget build(BuildContext context) {
    return Column(  
        mainAxisAlignment: MainAxisAlignment.center,  
        children:[ Transform.scale(  
            scale: 2,  
            child: Switch(  
              onChanged: toggleSwitch,  
              value: isSwitched,  
              activeColor: Colors.blueAccent,  
              activeTrackColor: Colors.grey[400],  
              inactiveThumbColor: Colors.grey[800],  
              inactiveTrackColor: Colors.grey[400],  
            )  
          ), 
          SizedBox(height: 20,), 
          Text('$textValue', style: TextStyle(fontSize: 20),)  
        ]);  
  }
}
