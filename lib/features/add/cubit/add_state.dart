part of 'add_cubit.dart';

@immutable
class AddState {
  const AddState({
    this.saved = false,
    this.errorMessage = '',
    required this.itemModel,
  });

  final bool saved;
  final String errorMessage;
  final CategoryModel? itemModel;
}
