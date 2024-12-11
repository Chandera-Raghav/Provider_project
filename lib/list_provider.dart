import 'package:flutter/widgets.dart';

class ListProvider extends ChangeNotifier{
  List<Map<String, dynamic>> _mdata = [];
  void add(){
    _mdata.add(
        {
          "name" : 'Raghav Chandera',
          "mNo" : "8481523725"
        }
    );
    notifyListeners();
  }
  List<Map<String, dynamic>> getData() => _mdata;
}