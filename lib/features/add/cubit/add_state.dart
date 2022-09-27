part of 'add_cubit.dart';

@immutable
class AddState {
  final bool saved;
  final String errorMessage;
  final List<CategoryModel> itemModel;
  
  const AddState({
    this.saved = false,
    this.errorMessage = '',
    this.itemModel = const [],
  });
}
