// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:wydatki/app/injection/injection_container.dart' as _i13;
import 'package:wydatki/data/remote_data_sourse/category_remote_data_source.dart'
    as _i3;
import 'package:wydatki/data/remote_data_sourse/spending_remote_data_source.dart'
    as _i4;
import 'package:wydatki/data/remote_data_sourse/weather_remote_data_source.dart'
    as _i9;
import 'package:wydatki/domain/ropositories/category_repository.dart' as _i6;
import 'package:wydatki/domain/ropositories/spending_repository.dart' as _i5;
import 'package:wydatki/domain/ropositories/weather_repository.dart' as _i10;
import 'package:wydatki/features/add/cubit/add_cubit.dart' as _i11;
import 'package:wydatki/features/home/cubit/home_cubit.dart' as _i8;
import 'package:wydatki/features/weather/cubit/weather_cubit.dart' as _i12;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.CategoryRemoteDataSource>(
        () => _i3.CategoryRemoteDataSource());
    gh.factory<_i4.SpendingRemoteDataSource>(
        () => _i4.SpendingRemoteDataSource());
    gh.factory<_i5.SpendingsRepository>(() => _i5.SpendingsRepository(
        spendingRemoteDataSource: gh<_i4.SpendingRemoteDataSource>()));
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i6.CategoriesRepository>(() => _i6.CategoriesRepository(
        categoryRemoteDataSource: gh<_i3.CategoryRemoteDataSource>()));
    gh.lazySingleton<_i7.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i8.HomeCubit>(() => _i8.HomeCubit(
          gh<_i5.SpendingsRepository>(),
          categoriesRepository: gh<_i6.CategoriesRepository>(),
        ));
    gh.factory<_i9.WeatherRemoteRetroFitDataSource>(
        () => _i9.WeatherRemoteRetroFitDataSource(gh<_i7.Dio>()));
    gh.factory<_i10.WeatherRepository>(() => _i10.WeatherRepository(
        weatherRemoteDataSource: gh<_i9.WeatherRemoteRetroFitDataSource>()));
    gh.factory<_i11.AddCubit>(() => _i11.AddCubit(
          categoriesRepository: gh<_i6.CategoriesRepository>(),
          spendingsRepository: gh<_i5.SpendingsRepository>(),
        ));
    gh.factory<_i12.WeatherCubit>(
        () => _i12.WeatherCubit(gh<_i10.WeatherRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i13.RegisterModule {}
