part of 'product_catalog_cubit.dart';

@immutable
sealed class ProductCatalogState {}

final class ProductCatalogInitial extends ProductCatalogState {}
final class ProductCatalogLoadingState extends ProductCatalogState {}
final class ProductCatalogSuccessState extends ProductCatalogState {
  final List<ProductEntity> products;
  ProductCatalogSuccessState(this.products);

}
final class ProductCatalogErrorState extends ProductCatalogState {
  final String error;
  ProductCatalogErrorState(this.error);
}
