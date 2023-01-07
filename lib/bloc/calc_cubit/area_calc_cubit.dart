import 'dart:math';

import 'package:bloc_app/bloc/calc_cubit/area_calc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaCalcCubit extends Cubit<AreaCalcState>{
AreaCalcCubit():super(InitialState(a: 10, b: 15));
 
 circule(int a){
  emit(CirculeState(((a/2)*(a/2))*pi));
 }
 fourCorner(int a, int b){
  emit(FourCornerState(a * b));
 }
 threeCorner(int a, int b){
  emit(ThreeCornerState((b/2)*a));
 }
 

}

