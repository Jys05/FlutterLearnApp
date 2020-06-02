import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 根据用户输入改变widget
 * 主要文章：
 * StatefulWidget：https://docs.flutter.io/flutter/widgets/StatefulWidget-class.html
 * State.setState：https://docs.flutter.io/flutter/widgets/State/setState.html
 *
 * 到目前为止，我们只使用了无状态的widget。无状态widget从它们的父widget接收参数， 它们被存储在final型的成员变量中。 当一个widget被要求构建时，它使用这些存储的值作为参数来构建widget。
 * 为了构建更复杂的体验 - 例如，以更有趣的方式对用户输入做出反应 - 应用程序通常会携带一些状态。 Flutter使用StatefulWidgets来满足这种需求。StatefulWidgets是特殊的widget，它知道如何生成State对象，然后用它来保持状态。 思考下面这个简单的例子，其中使用了前面提到RaisedButton：
 *
 * 注意：_increment()函数中是调用了setState()改变控件状态
 */
class Counter extends StatefulWidget {
  // This class is the configuration for the state. It holds the
  // values (in this nothing) provided by the parent and used by the build
  // method of the State. Fields in a Widget subclass are always marked "final".

  @override
  _CounterState createState() => new _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      // This call to setState tells the Flutter framework that
      // something has changed in this State, which causes it to rerun
      // the build method below so that the display can reflect the
      // updated values. If we changed _counter without calling
      // setState(), then the build method would not be called again,
      // and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance
    // as done by the _increment method above.
    // The Flutter framework has been optimized to make rerunning
    // build methods fast, so that you can just rebuild anything that
    // needs updating rather than having to individually change
    // instances of widgets.
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: _increment,
          child: new Text('Increment'),
        ),
        new Text('Count: $_counter'),
      ],
    );
  }
}