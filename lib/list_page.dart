import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/list_provider.dart';
// List<Map<String, dynamic>> mdata = [];
class ListPage extends StatefulWidget{
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}
class _ListPageState extends State<ListPage> {


  @override
  Widget build(BuildContext context) {
    // var mdata = Provider.of<ListProvider>(context).getData();
    var mdata = context.watch<ListProvider>().getData();
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
      ),
      body: ListView.builder(itemCount: mdata.length, itemBuilder: (_, index){

        return ListTile(
          title: Text(mdata[index]["name"]),
          subtitle: Text(mdata[index]["mNo"]),
          trailing: SizedBox(width : 100, child: Row( children: [
            InkWell(onTap: (){
              context.read<ListProvider>().update(index: index, name: "Raghav R. chandera", mno: "9848103722");
            }, child: const Icon(Icons.edit_note_outlined)),
            InkWell(onTap: (){
              context.read<ListProvider>().delete(index);
            }, child: const Icon(Icons.delete_outline_outlined, color: Colors.red,))],)),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
      }, child: const Icon(Icons.add),),
    );
  }
}

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});

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
         // Provider.of<ListProvider>(context, listen: false).add();
          context.read<ListProvider>().add();
        }, child: const Icon(Icons.add)),
      ),
    );
  }

}