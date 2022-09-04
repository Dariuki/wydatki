import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:wydatki/features/models/category_model.dart';
import 'package:wydatki/features/ropositories/category_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._categoriesRepository) : super(const HomeState());

  final CategoriesRepository _categoriesRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    _streamSubscription = _categoriesRepository.getCategoryStream().listen(
      (items) {
        emit(HomeState(items: items));
      },
    )..onError(
        (error) {
          emit(const HomeState(loadingError: true));
        },
      );
  }

  Future<void> remove({required String documentID}) async {
    try {
      await _categoriesRepository.delete(id: documentID);
    } catch (error) {
      emit(
        const HomeState(removingError: true),
      );
      start();
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
