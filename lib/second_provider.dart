import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class SecondProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Count"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){ Provider.of<CounterProvider>(context, listen: false).incrementCount();
        }, child: const Icon(Icons.add)),
      ),
    );
  }
}