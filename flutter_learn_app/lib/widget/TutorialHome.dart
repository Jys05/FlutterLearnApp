
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/**
 *
 */
class TutorialHome extends StatelessWidget {
  TutorialHome(this.bodyContent , this.content);

  final Widget bodyContent;
  final String content;

  @override
  Widget build(BuildContext context) {
    //Scaffold是Material中主要的布局组件.
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: () {
            print('Navigation menu was tapped!');
          },
        ),
        title: new Text(content),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      //body占屏幕的大部分
      body: new Center(
        child: bodyContent,
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: new Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
