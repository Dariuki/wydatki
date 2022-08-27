part of 'home_cubit.dart';

@immutable
class HomeState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> model;

  final bool isLoading;
  final String errorMessage;

  const HomeState({
    required this.model,
    required this.isLoading,
    required this.errorMessage,
  });
}
