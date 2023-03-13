import 'dart:typed_data';

import 'package:db_animal_biography_app/helper_class/api_animal.dart';
import 'package:flutter/material.dart';

import '../../helper_class/db_api_animal.dart';
import '../../models/animal_class.dart';
import '../../widgets/cir_pog_indi.dart';
import 'global.dart';

class Pet_Page extends StatefulWidget {
  const Pet_Page({Key? key}) : super(key: key);

  @override
  State<Pet_Page> createState() => _Pet_PageState();
}

class _Pet_PageState extends State<Pet_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pets Animal",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 2, mainAxisSpacing: 0.2),
          itemCount: Global.all.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'Detail_Page', arguments: Global.all[i]);
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
                          "${Global.all[i]['image']}",
                        )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${Global.all[i]['name']}",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white.withOpacity(0.6),
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // Text("${res[i].page}",style: TextStyle(fontSize: 8,color: Colors.transparent),),
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
