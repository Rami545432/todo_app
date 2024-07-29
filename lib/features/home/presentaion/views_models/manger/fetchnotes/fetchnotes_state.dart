part of 'fetchnotes_cubit.dart';

@immutable
abstract class FetchnotesState {}

class FetchnotesInitial extends FetchnotesState {}
class FetchnotesLoading extends FetchnotesState {}
class FetchnotesLoaded extends FetchnotesState {


 
}
class FetchnotesError extends FetchnotesState {}






