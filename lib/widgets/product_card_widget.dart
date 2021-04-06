import 'package:flutter/material.dart';
import 'package:searchdelegate_article/models/product_model.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductModel product;

  ProductCardWidget(
      {@required
          this.product}); // sınıfımız zorunlu bir ProductModel nesnesi alıyor

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //widgetlerimizi alt alta kullanmak istediğimiz için column ekledik
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Image.network(
            this.product.image,
            fit: BoxFit.cover,
          ),
        ),
        Wrap(
          children: [
            Text(this.product.brand,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.bold)),
            Text(this.product.productName,
                style: Theme.of(context).textTheme.headline6),
          ],
        ), //iki tane widgeti (Text) yan yana getirmek istediğimiz için Wrap widget kullandık
        Wrap(
          crossAxisAlignment: WrapCrossAlignment
              .center, //elementlerimizi ortalamak istediğimiz için
          children: [
            Text('Touchable',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(fontWeight: FontWeight.bold)),
            this.product.touchable ? Icon(Icons.done) : Icon(Icons.close),
          ],
        ),
        ActionChip(
            //flutterde stadiumshape tipi bir buton oluşturmak için ActionChip veya Chip widgetlerini kullanabiliriz
            backgroundColor: Theme.of(context).primaryColor,
            padding: const EdgeInsets.all(5),
            label: Wrap(
              crossAxisAlignment: WrapCrossAlignment
                  .center, //elementlerimizi ortalamak istediğimiz için
              children: [
                Icon(Icons.shopping_bag, color: Colors.white),
                Text(
                  "${this.product.price}\$",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.white),
                )
              ],
            ),
            onPressed: () {})
      ],
    );
  }
}
