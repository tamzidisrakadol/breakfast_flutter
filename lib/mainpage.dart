import 'package:breakfast_flutter/detailpage.dart';
import 'package:breakfast_flutter/model/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _popularbfList = BreakFast.generatePopularBreakfastList();
    final _breakfastList = BreakFast.generateBreakfastList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Breakfast",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Icon(
            Icons.menu_open,
            color: Colors.black,
            size: 20,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 400,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 60,
                        ),
                        Text("Salad",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Bread",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Drinks",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Fruits",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: 330,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          BreakFast bflist = _breakfastList[index];
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailPage(breakFast: bflist)));
                            },
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Container(
                                height: 350,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            _breakfastList[index].imgurl),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(_breakfastList[index].name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 30),),
                                      Spacer(),
                                      Icon(Icons.favorite,size: 30,color: Colors.grey,)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (_, index) => SizedBox(
                              width: 20,
                            ),
                        itemCount: _breakfastList.length),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Popular",
              style: GoogleFonts.actor(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 25)),
            ),
          ),
          Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: ListView.builder(
                    itemCount: _popularbfList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage(_popularbfList[index].imgurl),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  _popularbfList[index].name,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                      size: 15,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )),
        ],
      ),
    );
  }
}
