import 'package:flutter/material.dart';

class PageModelSteps {
  final String _name;
  final String _data;
  final int _id;

  PageModelSteps(this._name, this._data, this._id);

  get name => _name;

  get data => _data;
  get id => _id;
}
