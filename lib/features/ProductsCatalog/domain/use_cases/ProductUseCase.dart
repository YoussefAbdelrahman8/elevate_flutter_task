import 'package:dartz/dartz.dart';
import 'package:elevate_flutter_task/features/ProductsCatalog/domain/repositories/productsRepo.dart';
import 'package:injectable/injectable.dart';

import '../entities/ProductEntity.dart';

@injectable
class ProductUseCase {
  ProductsRepo productsRepo;

  @FactoryMethod()
  ProductUseCase(this.productsRepo);

  Future<Either<List<ProductEntity>, String>>
  call() => productsRepo.getProducts();
}
