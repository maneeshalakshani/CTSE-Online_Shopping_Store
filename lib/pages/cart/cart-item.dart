import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem(
      {super.key,
      required this.context,
      required this.snapshot,
      required this.index});
  final BuildContext context;
  final List<dynamic>? snapshot;
  final int index;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(widget.snapshot);

    return Container(
        width: width,
        // color: Colors.lightBlue,
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: Text(
                    widget.snapshot?[widget.index]['itemName'],
                  ),
                ),
                Text(
                  "Rs. 1000/=",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "+ ${widget.snapshot?[widget.index]['quantity']} -",
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
          ],
        ));
  }
}
