import 'package:flutter/foundation.dart';
import 'package:shop_app/models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: "p1",
      productName: "Drilling Machine",
      oldPrice: 1399.99,
      price: 1299.99,
      imageUrl: "assets/images/drillmachine.jpg",
    ),
    Product(
      id: "p2",
      productName: "Wheel Barrow",
      oldPrice: 24899,
      price: 22500,
      imageUrl: "assets/images/wheelbarrow.jpg",
    ),
    Product(
      id: "p3",
      productName: "Vacuum cleaner",
      oldPrice: 1200,
      price: 950,
      imageUrl: "assets/images/vacuum.jpg",
    ),
    Product(
      id: "p4",
      productName: "Chain Saw",
      oldPrice: 700,
      price: 629,
      imageUrl: "assets/images/chainsaw.jpg",
    ),
    Product(
      id: "p5",
      productName: "Wood Cutter",
      oldPrice: 300,
      price: 199.99,
      imageUrl: "assets/images/woodcutter.png",
    ),
    Product(
      id: "p6",
      productName: "Tool Boc",
      oldPrice: 230,
      price: 299.99,
      imageUrl: "assets/images/toolbox.png",
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) {
      return prod.id == id;
    });
  }

  void addProduct(Product newProduct) {
    _items.insert(0, newProduct);
    notifyListeners();
  }

  List<Product> get selectedFavorite {
    return _items.where((favProducts) {
      return favProducts.isFavorite;
    }).toList();
  }
}
