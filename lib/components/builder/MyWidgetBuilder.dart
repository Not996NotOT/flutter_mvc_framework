import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidgetBuilder {
  Widget _widget;
  Color _color = Colors.white;
  var container;
  MyWidgetBuilder(this._widget);
  MyWidgetBuilder padding(
      {double left = 0.0,
      double top = 0.0,
      double right = 0.0,
      double bottom = 0.0}) {
    var padding =
        EdgeInsets.only(left: left, right: right, top: top, bottom: bottom);
    this._widget = new Padding(padding: padding, child: this._widget);
    return this;
  }

  MyWidgetBuilder paddingAll({double all = 10.0}) {
    var padding = EdgeInsets.all(all);
    this._widget = new Padding(padding: padding, child: this._widget);
    return this;
  }

  MyWidgetBuilder background(Color color) {
    this._color = color;
    return this;
  }

  Widget build() {
    return Container(color: this._color, child: this._widget);
  }
}
