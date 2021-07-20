import 'package:equatable/equatable.dart';

abstract class StartState extends Equatable {
  StartState();

  @override
  List<Object> get props => [];
}

/// UnInitialized
class UnStartState extends StartState {

  UnStartState();

  @override
  String toString() => 'UnStartState';
}

/// Initialized
class InStartState extends StartState {
  InStartState(this.hello);
  
  final String hello;

  @override
  String toString() => 'InStartState $hello';

  @override
  List<Object> get props => [hello];
}

class ErrorStartState extends StartState {
  ErrorStartState(this.errorMessage);
 
  final String errorMessage;
  
  @override
  String toString() => 'ErrorStartState';

  @override
  List<Object> get props => [errorMessage];
}
