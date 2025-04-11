import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'Cart.dart';  // Import the Cart screen and CartItem class
import '../Constant.dart';

class Itemdescription extends StatefulWidget {
  final String itemName;
  final String itemPrice;
  final String itemStarNumber;
  final String itemImage1;
  final String itemImage2;
  final String itemImage3;
  final String itemDescription;
  final List<Color> itemColors;

  Itemdescription({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.itemStarNumber,
    required this.itemImage1,
    required this.itemImage2,
    required this.itemImage3,
    required this.itemDescription,
    required this.itemColors,
  });

  @override
  State<Itemdescription> createState() => _ItemdescriptionState();
}

class _ItemdescriptionState extends State<Itemdescription> {
  late List<String> sampleImages;
  int quantity = 1; // Track the quantity of the item

  @override
  void initState() {
    super.initState();
    sampleImages = [
      widget.itemImage1,
      widget.itemImage2,
      widget.itemImage3,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.backColor,
      appBar: AppBar(
        backgroundColor: Constant.backColor,
        title: Text("Product Overview", style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FanCarouselImageSlider.sliderType1(
                imagesLink: sampleImages,
                isAssets: true,
                autoPlay: true,
                sliderHeight: 400,
                showIndicator: true,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.itemName,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$${widget.itemPrice}.00",
                    style: TextStyle(
                      fontSize: 20,
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                "Full-Stars: (${widget.itemStarNumber})",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.amber,
                ),
              ),
              Text(
                widget.itemDescription,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 2,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black12,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cart(
                              cartItems: [
                                CartItem(
                                  itemName: widget.itemName,
                                  itemImage: widget.itemImage1,
                                  itemPrice: double.parse(widget.itemPrice),
                                  quantity: quantity,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      icon: Icon(Icons.shopping_cart_outlined, size: 35, color: Constant.primaryColor),
                    ),
                  ),
                  buildProductDetailsPopUp(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductDetailsPopUp() => InkWell(
    onTap: () {
      showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setStateModal) => Container(
              height: MediaQuery.of(context).size.width / 1.3,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Constant.backColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Customize Your Order",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Constant.primaryColor,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Constant.backColor,
                            shape: CircleBorder(
                              side: BorderSide(
                                color: Constant.primaryColor,
                                width: 2,
                              ),
                            ),
                          ),
                          child: Icon(Icons.close, color: Constant.errormess),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    // Size options
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Size", style: TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: ["S", "M", "L", "XL"].map((size) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 6),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(size),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    // Color options
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Color", style: TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: List.generate(widget.itemColors.length, (index) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 6),
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: widget.itemColors[index],
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black12),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    // Quantity
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Quantity", style: TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                if (quantity > 1) {
                                  setState(() {
                                    quantity--;
                                  });
                                  setStateModal(() {});
                                }
                              },
                              icon: Icon(Icons.remove),
                            ),
                            Text("$quantity", style: TextStyle(fontSize: 16)),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                                setStateModal(() {});
                              },
                              icon: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    // Total Payment
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Payment", style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          "\$${(int.parse(widget.itemPrice) * quantity).toStringAsFixed(2)}",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 48,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Constant.primaryColor,
                      ),
                      child: TextButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cart(
                              isChecked: true,
                              cartItems: [
                                CartItem(
                                  itemName: widget.itemName,
                                  itemImage: widget.itemImage1,
                                  itemPrice: double.parse(widget.itemPrice),
                                  quantity: quantity,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                          child: Text("Check Out",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),)),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
    child: Container(
      padding: EdgeInsets.all(12),
      height: 56,
      width: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Constant.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        "Shop Now",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
