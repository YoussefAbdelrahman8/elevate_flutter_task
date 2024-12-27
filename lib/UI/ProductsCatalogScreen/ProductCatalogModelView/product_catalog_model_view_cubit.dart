import 'package:bloc/bloc.dart';
import 'package:elevate_flutter_task/Model/Product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'product_catalog_model_view_state.dart';

class ProductCatalogModelViewCubit extends Cubit<ProductCatalogModelViewState> {
  ProductCatalogModelViewCubit() : super(ProductCatalogModelViewInitial());

  static ProductCatalogModelViewCubit get(context)=>BlocProvider.of(context);


}
