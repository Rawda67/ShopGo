import 'package:flutter/material.dart';
import '../Constant.dart';

class Cart extends StatefulWidget {
  final List<CartItem> cartItems; // List of cart items
  final bool isChecked;

  const Cart({
    super.key,
    this.cartItems = const [],
    this.isChecked = false,
  });

  @override
  State<Cart> createState() => _CartState();
}

class CartItem {
  final String itemName;
  final String itemImage;
  final double itemPrice;
  int quantity;

  CartItem({
    required this.itemName,
    required this.itemImage,
    required this.itemPrice,
    this.quantity = 1,
  });
}

class _CartState extends State<Cart> {
  double get totalAmount {
    return widget.cartItems.fold(0.0, (sum, item) => sum + (item.itemPrice * item.quantity));
  }

  void _increaseQuantity(int index) {
    setState(() {
      widget.cartItems[index].quantity++;
    });
  }

  void _decreaseQuantity(int index) {
    setState(() {
      if (widget.cartItems[index].quantity > 1) {
        widget.cartItems[index].quantity--;
      }
    });
  }

  void _removeItem(int index) {
    setState(() {
      widget.cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.backColor,
      appBar: AppBar(
        backgroundColor: Constant.backColor,
        title: Text("Your Cart", style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: widget.cartItems.isEmpty
          ? Center(child: Text("Your cart is empty!", style: TextStyle(fontSize: 18)))
          : Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: widget.cartItems.length,
                itemBuilder: (context, index) {
                  final item = widget.cartItems[index];
                  return Card(
                    color: Colors.white12,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    elevation: 3,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: Image.asset(item.itemImage, width: 60, height: 60, fit: BoxFit.cover),
                      title: Text(item.itemName, style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text("\$${item.itemPrice} x ${item.quantity}"),
                      trailing: IconButton(
                        icon: Icon(Icons.remove_circle_outline, color: Colors.red),
                        onPressed: () => _removeItem(index),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Amount", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("\$${totalAmount.toStringAsFixed(2)}", style: TextStyle(fontSize: 18, color: Colors.redAccent, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Proceed to checkout action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Constant.primaryColor,
                padding: EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              child: Text("Proceed to Checkout", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
