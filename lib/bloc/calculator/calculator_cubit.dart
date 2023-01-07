import 'package:bloc_app/bloc/calculator/calculator_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorCubit extends Cubit<CalculatorState>{
  CalculatorCubit():super(InitialState(a: 10, b: 15));

  add(int a, int b){
    emit(AddintionState(a + b));
  }

  sub(int a, int b){
    emit(SubtructionState(a - b));
  }

  multiple(int a, int b){
    emit(MultiplactionState(a * b));
  }

  division(int a, int b){
    emit(DivisionState(a ~/ b));
  }
}