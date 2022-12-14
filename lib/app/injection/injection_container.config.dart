// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:wydatki/app/cubit/auth_gate_cubit.dart' as _i3;
import 'package:wydatki/app/injection/injection_container.dart' as _i14;
import 'package:wydatki/data/remote_data_sourse/category_remote_data_source.dart'
    as _i4;
import 'package:wydatki/data/remote_data_sourse/spending_remote_data_source.dart'
    as _i5;
import 'package:wydatki/data/remote_data_sourse/weather_remote_data_source.dart'
    as _i10;
import 'package:wydatki/domain/ropositories/category_repository.dart' as _i7;
import 'package:wydatki/domain/ropositories/spending_repository.dart' as _i6;
import 'package:wydatki/domain/ropositories/weather_repository.dart' as _i11;
import 'package:wydatki/features/add/cubit/add_cubit.dart' as _i12;
import 'package:wydatki/features/home/cubit/home_cubit.dart' as _i9;
import 'package:wydatki/features/weather/cubit/weather_cubit.dart' as _i13;

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
    gh.factory<_i3.AuthGateCubit>(() => _i3.AuthGateCubit());
    gh.factory<_i4.CategoryRemoteDataSource>(
        () => _i4.CategoryRemoteDataSource());
    gh.factory<_i5.SpendingRemoteDataSource>(
        () => _i5.SpendingRemoteDataSource());
    gh.factory<_i6.SpendingsRepository>(() => _i6.SpendingsRepository(
        spendingRemoteDataSource: gh<_i5.SpendingRemoteDataSource>()));
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i7.CategoriesRepository>(() => _i7.CategoriesRepository(
        categoryRemoteDataSource: gh<_i4.CategoryRemoteDataSource>()));
    gh.lazySingleton<_i8.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i9.HomeCubit>(() => _i9.HomeCubit(
          gh<_i6.SpendingsRepository>(),
          categoriesRepository: gh<_i7.CategoriesRepository>(),
        ));
    gh.factory<_i10.WeatherRemoteRetroFitDataSource>(
        () => _i10.WeatherRemoteRetroFitDataSource(gh<_i8.Dio>()));
    gh.factory<_i11.WeatherRepository>(() => _i11.WeatherRepository(
        weatherRemoteDataSource: gh<_i10.WeatherRemoteRetroFitDataSource>()));
    gh.factory<_i12.AddCubit>(() => _i12.AddCubit(
          categoriesRepository: gh<_i7.CategoriesRepository>(),
          spendingsRepository: gh<_i6.SpendingsRepository>(),
        ));
    gh.factory<_i13.WeatherCubit>(
        () => _i13.WeatherCubit(gh<_i11.WeatherRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
