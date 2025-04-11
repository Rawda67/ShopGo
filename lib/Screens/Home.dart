import 'package:ecommerce_app/Constant.dart';
import 'package:ecommerce_app/Items.dart';
import 'package:flutter/material.dart';

import 'ItemDescription.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    List <Items> item=[
      Items(image1: "assets/Sweater.jpg",
          name: "Sweater", starNumbers: "999",
          price: "100",image2: "assets/Sweaterp1.jpg",image3: "assets/sweaterp2.jpg",
        itemDescription:"A white sweater for girls is a cozy, versatile piece that pairs well with any outfit, offering comfort and style.", itemColors: [Colors.white,Colors.black,Colors.grey],
      ),
      Items(image1: "assets/SCRUNCHIES.jpg", name: "Scrunchies", starNumbers: "500", price: "7",image2: "assets/scrunchiesp1.jpg",image3: "assets/scrunchiesp2.jpg",itemDescription:     "Purple scrunchies add a pop of color and keep hair in place stylishly.", itemColors: [Colors.blue,Colors.white,Colors.deepPurpleAccent]),
      Items(image1: "assets/Pullover.jpg", name: "Pullover", starNumbers: "100", price: "110",image2: "assets/Pulloverp1.jpg",image3: "assets/pulloverp2.jpg",itemDescription:     "A pullover is a cozy, long-sleeved sweater that provides warmth and comfort. Ideal for layering or casual wear.", itemColors: [Colors.deepPurple,Colors.white,Colors.indigo]),
      Items(image1: "assets/hoodiandpants.jpg", name: "Hoodi & Pants", starNumbers: "999", price: "150",image2: "assets/hpp1.jpg",image3:"assets/hpp2.jpg",itemDescription:     "A hoodie and pants set offers comfort and style, perfect for casual or cozy wear.", itemColors: [Colors.deepPurpleAccent,Colors.black,Colors.red,Colors.orange]),
      Items(image1: "assets/Baguette Bag.jpg", name: "Baguette Bag", starNumbers: "400", price: "200",image2: "assets/baguettep2.jpg",image3: "assets/baguettep1.jpg",itemDescription:     "A baguette bag is a stylish, compact handbag with a sleek design, perfect for carrying essentials with a trendy touch.", itemColors: [Colors.purpleAccent,Colors.black,Colors.grey,Colors.teal]
      )
    ];
    List <Items> recommendedItems=[
      Items(image1: "assets/Sweater.jpg",
        name: "Sweater", starNumbers: "999",
        price: "100",image2: "assets/Sweaterp1.jpg",image3: "assets/sweaterp2.jpg",
        itemDescription:"A white sweater for girls is a cozy, versatile piece that pairs well with any outfit, offering comfort and style.", itemColors: [Colors.white,Colors.black,Colors.grey],
      ),
      Items(image1: "assets/SCRUNCHIES.jpg", name: "Scrunchies", starNumbers: "500", price: "7",image2: "assets/scrunchiesp1.jpg",image3: "assets/scrunchiesp2.jpg",itemDescription:     "Purple scrunchies add a pop of color and keep hair in place stylishly.", itemColors: [Colors.blue,Colors.white,Colors.deepPurpleAccent]),
      Items(image1: "assets/Pullover.jpg", name: "Pullover", starNumbers: "100", price: "110",image2: "assets/Pulloverp1.jpg",image3: "assets/pulloverp2.jpg",itemDescription:     "A pullover is a cozy, long-sleeved sweater that provides warmth and comfort. Ideal for layering or casual wear.", itemColors: [Colors.deepPurple,Colors.white,Colors.indigo]),
      Items(image1: "assets/hoodiandpants.jpg", name: "Hoodi & Pants", starNumbers: "999", price: "150",image2: "assets/hpp1.jpg",image3:"assets/hpp2.jpg",itemDescription:     "A hoodie and pants set offers comfort and style, perfect for casual or cozy wear.", itemColors: [Colors.deepPurpleAccent,Colors.black,Colors.red,Colors.orange]),
      Items(image1: "assets/Baguette Bag.jpg", name: "Baguette Bag", starNumbers: "400", price: "200",image2: "assets/baguettep2.jpg",image3: "assets/baguettep1.jpg",itemDescription:     "A baguette bag is a stylish, compact handbag with a sleek design, perfect for carrying essentials with a trendy touch.", itemColors: [Colors.purpleAccent,Colors.black,Colors.grey,Colors.teal]
      )
    ];
    int currentIndex=0;
    return Scaffold(
      backgroundColor: Constant.backColor,
      body:
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width/1.5,
                        height: 70,
                        child: TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(color: Constant.primaryColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Constant.primaryColor,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Constant.primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            prefixIcon: Icon(Icons.search, color: Constant.primaryColor),
                            suffixIcon: IconButton(
                              onPressed: () {
                                phoneController.clear();
                              },
                              icon: Icon(Icons.close, color: Constant.errormess),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width/7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color:Colors.black12,
                        ),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,size: 35,color: Constant.primaryColor,)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 140,
                  width: 400,
                  margin:EdgeInsets.all(10),
                  decoration:BoxDecoration(
                    color: Colors.black12,
                    image: DecorationImage(
                      image: AssetImage("assets/page4.png"),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.center,

                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                          padding: EdgeInsets.all(10),
                          margin:EdgeInsets.all(5) ,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "All",
                            style: TextStyle(
                              color: Constant.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                          padding: EdgeInsets.all(10),
                          margin:EdgeInsets.all(5) ,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Text(
                            "Category",
                            style: TextStyle(
                              color: Constant.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                          padding: EdgeInsets.all(10),
                          margin:EdgeInsets.all(5) ,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Text(
                            "Top",
                            style: TextStyle(
                              color: Constant.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                          padding: EdgeInsets.all(10),
                          margin:EdgeInsets.all(5) ,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Text(
                            "Recommended",
                            style: TextStyle(
                              color: Constant.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemBuilder: (context,index)=>buildItemList(item[index]),
                    itemCount: item.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Recommended",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),),
                ),
                SizedBox(
                  height: 1000,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.6,
                    ),
                    itemCount: recommendedItems.length,
                    itemBuilder: (context, index) => buildItemList(recommendedItems[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
      ,
    );
  }

  Widget buildItemList(Items item) => InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Itemdescription(
            itemName: item.name,
            itemPrice: item.price,
            itemImage1: item.image1,
            itemImage2: item.image2,
            itemImage3: item.image3,
            itemStarNumber:item.starNumbers,
            itemDescription: item.itemDescription,
            itemColors: item.itemColors,
          ),
        ),
      );
    },
    child: Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(5),
      height: 300,
      width: 180,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image(image: AssetImage("${item.image1}"),height: 220,width: 160,fit: BoxFit.fill,),
              Container(
                  height: 42,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.all(5),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline_outlined,color: Constant.primaryColor,size: 30,))),
            ],
          ),
          Text("${item.name}",style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star,color: Colors.amber,size: 30,),
              Text("(${item.starNumbers})",style: TextStyle(
                color: Colors.black45,
              ),),
              SizedBox(width: 50,),
              Text("\$${item.price}",style: TextStyle(
                color: Constant.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
            ],
          )
        ],
      ),
    ),
  );
}