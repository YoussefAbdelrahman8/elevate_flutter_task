import 'package:dartz/dartz.dart';
import 'package:elevate_flutter_task/core/remote/api_manager.dart';
import 'package:elevate_flutter_task/core/remote/endpoints.dart';
import 'package:elevate_flutter_task/features/ProductsCatalog/data/models/Product.dart';
import 'package:injectable/injectable.dart';

import '../DataSource/productsDao.dart';

@Injectable(as: ProductsDao)
class ProductsDaoApiImpl extends ProductsDao {
  ApiManager apiManager;

  @FactoryMethod()
  ProductsDaoApiImpl(this.apiManager);

  @override
  Future<Either<List<Product>, String>> getProducts() async {
    try {
      List<Product> products = [];
      var response = await apiManager.getRequest(path: Endpoints.products);
      List<dynamic> responseData = response.data;
      products = responseData.map((item) => Product.fromJson(item)).toList();

      return Left(products);
    } catch (error) {
      return Right(error.toString());
    }
  }
}
