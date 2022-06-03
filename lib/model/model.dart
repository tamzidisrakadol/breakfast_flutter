class BreakFast{
  String name;
  String imgurl;
  String price;

  BreakFast({required this.name, required this.imgurl,required this.price});


  static List<BreakFast> generateBreakfastList(){
    return[
      BreakFast(name:"Fruit Salad",imgurl: "assets/images/p1.jpg", price: "65"),
      BreakFast(name:"Waffle" ,imgurl: "assets/images/p2.jpg", price: "70"),
      BreakFast(name:"Bread Toast" ,imgurl: "assets/images/p3.jpg", price: "50"),
      BreakFast(name:"Garlic Bread" ,imgurl: "assets/images/p4.jpg", price: "65"),
      BreakFast(name:"Egg Yolk" ,imgurl: "assets/images/p5.jpg", price: "65"),
      BreakFast(name:"Black Grapes" ,imgurl: "assets/images/p6.jpg", price: "65"),
      BreakFast(name:"Sandwich" ,imgurl: "assets/images/p5.jpg", price: "65"),
    ];
  }

  static List<BreakFast> generatePopularBreakfastList(){
    return[
      BreakFast(name:"Bread" ,imgurl: "assets/images/p4.jpg", price: "45"),
      BreakFast(name:"Cloud Egg with Bread" ,imgurl: "assets/images/p5.jpg", price: "30"),
      BreakFast(name:"Black grape juice" ,imgurl: "assets/images/p6.jpg", price: "55"),
      BreakFast(name:"Pudding" ,imgurl: "assets/images/p1.jpg", price: "60"),
    ];
  }
}