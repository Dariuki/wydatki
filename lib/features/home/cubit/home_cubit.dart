import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wydatki/domain/models/category_coffing.dart';
import 'package:wydatki/domain/ropositories/category_repository.dart';


part 'home_cubit.freezed.dart';
part 'home_state.dart';
@injectable 
class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.categoriesRepository}) : super( HomeState());

  final CategoriesRepository categoriesRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    _streamSubscription = categoriesRepository.getCategory().listen(
      (items) {
        emit(HomeState(
          items: items,
        ));
      },
    )..onError(
        (error) {
          emit(HomeState(loadingError: true));
        },
      );
  }

  Future<void> remove({required String documentID}) async {
    try {
      await categoriesRepository.delete(id: documentID);
    } catch (error) {
      emit(
         HomeState(removingError: true),
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
