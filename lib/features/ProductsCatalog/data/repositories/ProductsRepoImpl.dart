import 'package:dartz/dartz.dart';
import 'package:elevate_flutter_task/features/ProductsCatalog/data/data_sources/DataSource/productsDao.dart';
import 'package:elevate_flutter_task/features/ProductsCatalog/domain/entities/ProductEntity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/productsRepo.dart';

@Injectable(as: ProductsRepo)
class ProductsRepoImpl extends ProductsRepo {
  ProductsDao productsDao;

  @FactoryMethod()
  ProductsRepoImpl(this.productsDao); // Semicolon added here

  @override
  Future<Either<List<ProductEntity>, String>> getProducts() async {
    var result = await productsDao.getProducts();
    return result.fold(
      (response) {
        List<ProductEntity> productsList = [];
        productsList = response.map((item) => item.toProductEntity()).toList();
        return Left(productsList);
      },
      (error) {
        return Right(error);
      },
    );
  }
}
