import 'package:elevate_flutter_task/features/ProductsCatalog/domain/entities/ProductEntity.dart';
import 'package:elevate_flutter_task/features/ProductsCatalog/domain/use_cases/ProductUseCase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/Product.dart';

part 'product_catalog_state.dart';

@injectable
class ProductCatalogCubit extends Cubit<ProductCatalogState> {
  ProductUseCase productUseCase;

  @FactoryMethod()
  ProductCatalogCubit(this.productUseCase) : super(ProductCatalogInitial());

  static ProductCatalogCubit get(context) => BlocProvider.of(context);

  getProducts() async {
    try {
      emit(ProductCatalogLoadingState());

      var result = await productUseCase.call();
      result.fold(
        (response) {
          emit(ProductCatalogSuccessState(response));
        },
        (error) {
          emit(ProductCatalogErrorState(error));
        },
      );
    } catch (error) {
      emit(ProductCatalogErrorState(error.toString()));
    }
  }
}
