part of 'addnote_cubit.dart';

@immutable
abstract class AddnoteState {}

class AddnoteInitial extends AddnoteState {}
class AddnoteLoading extends AddnoteState {}
class AddnoteLoaded extends AddnoteState {

}
class AddnoteNodata extends AddnoteState {
  
}


