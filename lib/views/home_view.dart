import 'package:flutter/material.dart';
import 'package:searchdelegate_article/data/product_data.dart';
import 'package:searchdelegate_article/widgets/product_card_widget.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
              tooltip: 'Search', icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: GridView.builder(
        itemCount: products
            .length, //products arrayimizin uzunluğu kadar elementimiz olacak
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // yan yana iki tane element istiyoruz
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 1 / 2),
        itemBuilder: (context, index) =>
            Card(child: ProductCardWidget(product: products[index])),
      ),
    );
  }
}
