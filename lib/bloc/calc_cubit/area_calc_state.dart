abstract class AreaCalcState {}

class InitialState extends AreaCalcState {
  final int a;
  final int b;

  InitialState({required this.a, required this.b});
}

class CirculeState extends AreaCalcState {
  num circuleResult = 0;

  CirculeState(this.circuleResult);
}

class FourCornerState extends AreaCalcState {
  num fourcornerStateResult = 0;

  FourCornerState(this.fourcornerStateResult);
}

class ThreeCornerState extends AreaCalcState {
  num threeCornerResult = 0;

  ThreeCornerState(this.threeCornerResult);
}
