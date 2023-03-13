import 'package:flutter/material.dart';

import 'global.dart';


class Wild_Page extends StatefulWidget {
  const Wild_Page({Key? key}) : super(key: key);

  @override
  State<Wild_Page> createState() => _Wild_PageState();
}

class _Wild_PageState extends State<Wild_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Farm Animal",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 2, mainAxisSpacing: 0.2),
          itemCount: Global.all2.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'Detail_Page', arguments: Global.all2[i]);
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
                          "${Global.all2[i]['image']}",
                        )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${Global.all2[i]['name']}",
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
