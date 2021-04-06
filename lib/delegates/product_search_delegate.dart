import 'package:flutter/material.dart';
import 'package:searchdelegate_article/data/product_data.dart';
import 'package:searchdelegate_article/models/product_model.dart';
import 'package:searchdelegate_article/widgets/product_card_widget.dart';

class ProductSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            query =
                ''; //query değişkeni SearchDelegete sınıfından extend ediliyor
          })
    ];
    // eğer kullanıcı isterse arama sorgusu silebilir
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.of(context).pop());
    // geri dönmek için
  }

  @override
  Widget buildResults(BuildContext context) {
    print(query);
    List<ProductModel> searchResult = products
        .where((element) => element.brand.contains(query))
        .toList(); //markaya göre arama yapıyoruz
    return GridView.builder(
      itemCount: searchResult.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1 / 2),
      itemBuilder: (context, index) =>
          Card(child: ProductCardWidget(product: searchResult[index])),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SizedBox.shrink(); //burada arama tavsiyelerini gösterebilirsiniz
  }
}
