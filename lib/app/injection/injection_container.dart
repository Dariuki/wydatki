import 'package:get_it/get_it.dart';
import 'package:wydatki/data/remote_data_sourse/category_remote_data_source.dart';
import 'package:wydatki/data/remote_data_sourse/spending_remote_data_source.dart';
import 'package:wydatki/domain/ropositories/category_repository.dart';
import 'package:wydatki/domain/ropositories/spending_repository.dart';
import 'package:wydatki/features/add/cubit/add_cubit.dart';
import 'package:wydatki/features/home/cubit/home_cubit.dart';
import 'package:wydatki/features/spendings/cubit/spendings_cubit.dart';

final getIt = GetIt.instance;



void configureDependencies() {
  getIt.registerFactory(() => HomeCubit(categoriesRepository: getIt()));
  getIt.registerFactory(() => SpendingsCubit(spendingsRepository: getIt()));
  getIt.registerFactory(() => AddCubit(
        categoriesRepository: getIt(),
        spendingsRepository: getIt(),
      ));

  getIt.registerFactory(
      () => CategoriesRepository(categoryRemoteDataSource: getIt()));
  getIt.registerFactory(
      () => SpendingsRepository(spendingRemoteDataSource: getIt()));

  getIt.registerFactory(() => CategoryRemoteDataSource());
  getIt.registerFactory(() => SpendingRemoteDataSource());
}
