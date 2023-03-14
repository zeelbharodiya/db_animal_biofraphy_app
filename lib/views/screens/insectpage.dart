import 'package:flutter/material.dart';

import 'global.dart';


class Insect_Page extends StatefulWidget {
  const Insect_Page({Key? key}) : super(key: key);

  @override
  State<Insect_Page> createState() => _Insect_PageState();
}

class _Insect_PageState extends State<Insect_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Insects",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 2, mainAxisSpacing: 0.2),
          itemCount: Global.all5.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'Detail_Page', arguments: Global.all5[i]);
                });
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 300,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: const ColorFilter.mode(
                          Color(0xffC19E82),
                          BlendMode.modulate,
                        ),
                        image: NetworkImage(
                          "${Global.all5[i]['image']}",
                        )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${Global.all5[i]['name']}",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white.withOpacity(0.6),
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
