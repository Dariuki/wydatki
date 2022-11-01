// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/remote_data_sourse/category_remote_data_source.dart' as _i3;
import '../../data/remote_data_sourse/spending_remote_data_source.dart' as _i4;
import '../../domain/ropositories/category_repository.dart' as _i6;
import '../../domain/ropositories/spending_repository.dart' as _i5;
import '../../features/add/cubit/add_cubit.dart' as _i9;
import '../../features/home/cubit/home_cubit.dart' as _i7;
import '../../features/spendings/cubit/spendings_cubit.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.CategoryRemoteDataSource>(
      () => _i3.CategoryRemoteDataSource());
  gh.factory<_i4.SpendingRemoteDataSource>(
      () => _i4.SpendingRemoteDataSource());
  gh.factory<_i5.SpendingsRepository>(() => _i5.SpendingsRepository(
      spendingRemoteDataSource: get<_i4.SpendingRemoteDataSource>()));
  gh.factory<_i6.CategoriesRepository>(() => _i6.CategoriesRepository(
      categoryRemoteDataSource: get<_i3.CategoryRemoteDataSource>()));
  gh.factory<_i7.HomeCubit>(() =>
      _i7.HomeCubit(categoriesRepository: get<_i6.CategoriesRepository>()));
  gh.factory<_i8.SpendingsCubit>(() =>
      _i8.SpendingsCubit(spendingsRepository: get<_i5.SpendingsRepository>()));
  gh.factory<_i9.AddCubit>(() => _i9.AddCubit(
        categoriesRepository: get<_i6.CategoriesRepository>(),
        spendingsRepository: get<_i5.SpendingsRepository>(),
      ));
  return get;
}
