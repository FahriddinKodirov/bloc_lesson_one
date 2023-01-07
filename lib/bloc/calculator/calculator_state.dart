abstract class CalculatorState{}

class InitialState extends CalculatorState{
  final int a; 
  final int b;

  InitialState({required this.a, 
                required this.b});
}

class AddintionState extends CalculatorState{
  num additionResult = 0;

  AddintionState(this.additionResult);

  
}

class SubtructionState extends CalculatorState{
 num subtrauctionResult = 0;

 SubtructionState(this.subtrauctionResult);
  
  
}

class MultiplactionState extends CalculatorState{
 num multiplactionResult = 0;
 
 MultiplactionState(this.multiplactionResult);
  
 
}

class DivisionState extends CalculatorState{
 num divisionResult = 0;
  
 DivisionState(this.divisionResult);
  
  
}