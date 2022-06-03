import 'package:breakfast_flutter/model/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  BreakFast breakFast;

  DetailPage({required this.breakFast});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.breakFast.imgurl),
                  fit: BoxFit.cover)),
        ),
        Positioned(bottom: 50, left: 20, right: 20,
            child: Center(
              child: Container(
                height: 500,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(widget.breakFast.name,style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold))),
                          Spacer(),
                          Icon(Icons.favorite,size: 20,color: Colors.white,)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 90,
                              color: Colors.black45,
                              child: Center(child: Text("Chocolaty",style: TextStyle(color: Colors.white,fontSize: 12),)),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              height: 20,
                              width: 50,
                              color: Colors.black45,
                              child: Center(child: Text("crispy",style: TextStyle(color: Colors.white,fontSize: 12),)),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              height: 20,
                              width: 45,
                              color: Colors.black45,
                              child: Center(child: Text("hot",style: TextStyle(color: Colors.white,fontSize: 12),)),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8),
                      child: Text("A waffle is a dish made from leavened batter or dough that is cooked between two plates that are patterned to give a characteristic size, shape, and surface impression. There are many variations based on the type of waffle iron and recipe used.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,
                      color: Colors.white
                      ),),),
                      Padding(
                          padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Card(elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.coffee,size: 20,color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Card(elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.hot_tub,size: 20,color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Card(elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.water_drop,size: 20,color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
                      SizedBox(height: 15,),
                      Padding(padding: EdgeInsets.all(8),
                      child:Container(
                        height: 40,
                        width: 220,
                       decoration: BoxDecoration(
                         color: Colors.black.withOpacity(0.8),
                         borderRadius: BorderRadius.circular(12)
                       ),
                       child: Center(
                         child: Text(
                           "Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 15),
                         ),
                       ),
                      ) ,
                      ),
                      SizedBox(height: 15,),
                      Padding(padding: EdgeInsets.all(8),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite,color: Colors.white,size: 18,),
                              SizedBox(width: 2,),
                              Text("335",style: TextStyle(color: Colors.white,fontSize: 18),)
                            ],
                          ),

                          Row(
                            children: [
                              Icon(Icons.mode_comment,color: Colors.white,size: 18,),
                              SizedBox(width: 2,),
                              Text("112",style: TextStyle(color: Colors.white,fontSize: 18),)
                            ],
                          ),

                          Row(
                            children: [
                              Icon(Icons.share,color: Colors.white,size: 18,),
                              SizedBox(width: 2,),
                              Text("335",style: TextStyle(color: Colors.white,fontSize: 18),)
                            ],
                          ),
                        ],
                      ) ,
                      )
                    ],
                  ),
                ),
              ),
            )
        )
      ],
    ));
  }
}
