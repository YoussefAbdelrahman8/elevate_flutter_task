// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/ProductsCatalog/data/data_sources/DataSource/productsDao.dart'
    as _i459;
import '../../features/ProductsCatalog/data/data_sources/DataSource_impl/productsDaoApi_impl.dart'
    as _i280;
import '../../features/ProductsCatalog/data/repositories/ProductsRepoImpl.dart'
    as _i370;
import '../../features/ProductsCatalog/domain/repositories/productsRepo.dart'
    as _i813;
import '../../features/ProductsCatalog/domain/use_cases/ProductUseCase.dart'
    as _i1034;
import '../remote/api_manager.dart' as _i822;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i822.ApiManager>(() => _i822.ApiManager());
    gh.factory<_i459.ProductsDao>(
        () => _i280.ProductsDaoApiImpl(gh<_i822.ApiManager>()));
    gh.factory<_i813.ProductsRepo>(
        () => _i370.ProductsRepoImpl(gh<_i459.ProductsDao>()));
    gh.factory<_i1034.ProductUseCase>(
        () => _i1034.ProductUseCase(gh<_i813.ProductsRepo>()));
    return this;
  }
}
