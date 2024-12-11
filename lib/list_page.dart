import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/list_provider.dart';
// List<Map<String, dynamic>> mdata = [];
class ListPage extends StatefulWidget{
  @override
  State<ListPage> createState() => _ListPageState();
}
class _ListPageState extends State<ListPage> {


  @override
  Widget build(BuildContext context) {
    var mdata = Provider.of<ListProvider>(context).getData();
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
      ),
      body: ListView.builder(itemCount: mdata.length, itemBuilder: (_, index){

        return ListTile(
          title: Text(mdata[index]["name"]),
          subtitle: Text(mdata[index]["mNo"]),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
      }, child: const Icon(Icons.add),),
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Note"),),
      body: Center(
        child: ElevatedButton(onPressed: (){
          // mdata.add(
          //     {
          //       "name" : 'Raghav Chandera',
          //       "mNo" : "8481523725"
          //     }
          // );setState((){});
         Provider.of<ListProvider>(context, listen: false).add();
        }, child: const Icon(Icons.add)),
      ),
    );
  }

}