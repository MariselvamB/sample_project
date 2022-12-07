import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'ProductDescribtionPage.dart';

class ProductDetailPage extends StatefulWidget {
  ProductDetailPage(this.productDescription, this.index);

  ProductDescription productDescription;
  int index;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
          tag: widget.index,
          child: productDescriptionWidget(
              widget.productDescription, widget.index)),
    );
  }
}
