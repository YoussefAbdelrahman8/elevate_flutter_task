part of 'product_catalog_model_view_cubit.dart';

@immutable
sealed class ProductCatalogModelViewState {}

final class ProductCatalogModelViewInitial
    extends ProductCatalogModelViewState {}

final class ProductCatalogModelViewLoading
    extends ProductCatalogModelViewState {}

final class ProductCatalogModelViewSuccessState
    extends ProductCatalogModelViewState {
  Product product;

  ProductCatalogModelViewSuccessState(this.product);
}

final class ProductCatalogModelViewErrorState
    extends ProductCatalogModelViewState {
  String error;

  ProductCatalogModelViewErrorState(this.error);
}
