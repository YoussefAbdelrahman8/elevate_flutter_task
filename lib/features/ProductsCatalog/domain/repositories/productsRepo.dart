import 'package:dartz/dartz.dart';

import '../../data/models/Product.dart';
import '../entities/ProductEntity.dart';

abstract class ProductsRepo {
  Future<Either<List<ProductEntity>, String>> getProducts();
}
