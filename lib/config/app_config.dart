import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class App {
  BuildContext _context;
  double _height;
  double _width;
  double _heightPadding;
  double _widthPadding;

  App(_context) {
    this._context = _context;
    MediaQueryData _queryData = MediaQuery.of(this._context);
    _height = _queryData.size.height / 100.0;
    _width = _queryData.size.width / 100.0;
    _heightPadding = _height - ((_queryData.padding.top + _queryData.padding.bottom) / 100.0);
    _widthPadding = _width - (_queryData.padding.left + _queryData.padding.right) / 100.0;
  }

  double appHeight(double v) {
    return _height * v;
  }

  double appWidth(double v) {
    return _width * v;
  }

  double appVerticalPadding(double v) {
    return _heightPadding * v;
  }

  double appHorizontalPadding(double v) {
    return _widthPadding * v;
  }
}

class AppColors {
  //Color _mainColor = Color(0xFF7986CB);
  Color _mainColor = Color(0xFF0CD5C2);
 // Color _mainDarkColor = Color(0xFF7986CB);
  Color _mainDarkColor = Color(0xFF20A6CC);
  Color _secondColor = Color(0x11111111);
  Color _secondDarkColor = Color(0xdddddddd);
  Color _accentColor = Color(0x11111111);
  Color _accentDarkColor = Color(0xeeeeeeee);

  Color mainColor(double opacity) {
    return this._mainColor.withOpacity(opacity);
  }

  Color secondColor(double opacity) {
    return this._secondColor.withOpacity(opacity);
  }

  Color accentColor(double opacity) {
    return this._accentColor.withOpacity(opacity);
  }

  Color mainDarkColor(double opacity) {
    return this._mainDarkColor.withOpacity(opacity);
  }

  Color secondDarkColor(double opacity) {
    return this._secondDarkColor.withOpacity(opacity);
  }

  Color accentDarkColor(double opacity) {
    return this._accentDarkColor.withOpacity(opacity);
  }
}

final Shader linearGradient = LinearGradient(
  colors: <Color>[HexColor("0CD5C2"), HexColor("20A6CC")],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
