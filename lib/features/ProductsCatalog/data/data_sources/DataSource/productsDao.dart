import 'package:dartz/dartz.dart';
import 'package:elevate_flutter_task/features/ProductsCatalog/data/models/Product.dart';

abstract class ProductsDao {
  Future<Either<List<Product>, String>> getProducts();
}
