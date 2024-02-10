import 'package:flutter/material.dart';

import 'database.dart';

class Describe extends StatelessWidget {
  const Describe({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white54,
        ),
        body: ListView.separated(
          itemCount: image[title]!.length,
          itemBuilder: (context, index) => SizedBox(
            child: Image(
              image: AssetImage('assets/data/${image[title]![index]}'),
            ),
          ),
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 2,
            );
          },
        )
        // body: ListView(
        //   children: [
        //     const SizedBox(
        //       height: 10,
        //     ),
        //     // Container(
        //     //   height: 30,
        //     //   child: const Text(
        //     //     'Assessment',
        //     //     style: TextStyle(
        //     //       fontSize: 24,
        //     //     ),
        //     //     textAlign: TextAlign.center,
        //     //   ),
        //     // ),
        //     // const SizedBox(
        //     //   height: 10,
        //     // ),
        //     // Container(
        //     //   height: 200,
        //     //   child: ListView.builder(itemBuilder:(context,index)=>ListTile(title: Text(data[title]!['Assessment']![index][0]),subtitle: Container(height:60,  child: ListView.builder(itemCount: data[title]!['Assessment']![index].length,itemBuilder:(context,ind)=>(ind==0)?const SizedBox(height: 0,):SizedBox(child: Text(data[title]!['Assessment']![index][ind]),))),), itemCount: data[title]!['Assessment']!.length),
        //     // )
        //
        //   ],
        // ),
        );
  }
}
