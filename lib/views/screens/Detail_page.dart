import 'dart:typed_data';

import 'package:db_animal_biography_app/helper_class/api_animal.dart';
import 'package:flutter/material.dart';

import '../../widgets/cir_pog_indi.dart';
import 'global.dart';

class Detail_Page extends StatefulWidget {
  const Detail_Page({Key? key}) : super(key: key);

  @override
  State<Detail_Page> createState() => _Detail_PageState();
}

class _Detail_PageState extends State<Detail_Page> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    Map detail = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${detail['name']} Information",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                future: ImageAPIHelper.imageAPIHelper
                    .getImage(search: "${detail['name']}"),
                builder: (context, snapShot) {
                  if (snapShot.hasData) {
                    Uint8List? image = snapShot.data;

                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.memory(
                                height: height * 0.38,
                                width: double.infinity,
                                image!,
                                fit: BoxFit.cover,
                                color: Global.color.withOpacity(0.8),
                                colorBlendMode: BlendMode.modulate,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 18.0, bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, bottom: 8),
                                    child: Text(
                                      " ${detail['name']} ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 27,
                                          color: Colors.blue[900]),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Row(
                            children: [
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8),
                                  child: Text(
                                    "  ${detail['type']}  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                        color: Colors.blue[900]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, right: 18, top: 10, bottom: 15),
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 10, left: 8),
                                  child: Row(
                                    children: [
                                      Card(
                                        elevation: 5,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8.0,right: 8,top: 5,bottom: 5),
                                            child: Text(
                                        "Discription",
                                        style: TextStyle(
                                              color: Colors.blue[900],
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                      ),
                                          )),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 10,),
                                  child: Text(
                                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). \n\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        wordSpacing: 2,
                                        fontSize: 17,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (snapShot.hasError) {
                    return Center(child: Text("${snapShot.error}"));
                  } else {
                    return Center(child: circularProgressIndicator());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
