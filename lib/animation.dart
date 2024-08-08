import 'package:flutter/material.dart';

class AnimationExample extends StatefulWidget{
   @override
  _AnimationExampleState createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State <AnimationExample > {
  bool _isExpanded = false; @override
  _AnimationExampleState createState() => _AnimationExampleState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Example'),
      ),
       body: Center(
        child: AnimatedContainer(
          width: _isExpanded ? 250.0 : 100.0,
          height: _isExpanded ? 250.0 : 100.0,
          color: _isExpanded ? Colors.orange : Colors.red,
          alignment:
              _isExpanded ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: FlutterLogo(size: 75),
          ),
        ),
      ),
      
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}