import 'package:flutter/widgets.dart';

class ListProvider extends ChangeNotifier{
  final List<Map<String, dynamic>> _mdata = [];

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
  void update(int index){
      _mdata[index]["name"] = "Raghav R. chandera";
      _mdata[index]["mNo"] = "9481523722";
      notifyListeners();
  }
  void delete(int index) {
    _mdata.removeAt(index);
    notifyListeners();
  }
}