import 'package:flutter/material.dart';

class ProductSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.delete), onPressed: () => query == '')];
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
    return Text('result'); //arama sonuçlarını burada listeleyeceğiz
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SizedBox.shrink(); //burada arama tavsiyelerini gösterebilirsiniz
  }
}
