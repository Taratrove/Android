
import 'package:flutter/material.dart';
import 'package:ntu_flutter/form/counter.dart';
import 'package:provider/provider.dart';


class CounterAPP extends StatelessWidget {
  const CounterAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: PageCounter(),
    );
  }
}

class PageCounter extends StatelessWidget {
  const PageCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
      builder: (context, counter, child) => Scaffold(
        appBar: AppBar(
        title: Text("Counter App"),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: null,
                ),
                  onPressed: ()
              { counter.tang();},
                  child: Text("tăng")),
              Text("${counter.value}"),
              ElevatedButton(onPressed: ()
              { counter.giam();},
                  child: Text("giảm")),
            ],
          ),
        ) ,
      )
    );
  }
}

