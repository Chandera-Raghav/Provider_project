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
  void update({required int index, required String name, required String mno}){
      _mdata[index] = { "name" : name,
       "mNo" : mno };
      notifyListeners();
  }
  void delete({required int index}) {
    _mdata.removeAt(index);
    notifyListeners();
  }
}