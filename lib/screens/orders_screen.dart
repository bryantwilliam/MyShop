import 'package:MyShop/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:MyShop/providers/orders.dart' show Orders;
import 'package:MyShop/widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = "/orders";

  @override
  Widget build(BuildContext context) {
    final orderDate = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Orders"),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orderDate.orders.length,
        itemBuilder: (ctx, i) => OrderItem(orderDate.orders[i]),
      ),
    );
  }
}
