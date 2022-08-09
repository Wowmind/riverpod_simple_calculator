import 'package:riverpod/riverpod.dart';
import 'package:riverpod_simple_calculator/model/models.dart';

final CalculatorProvider = StateNotifierProvider((ref) => CalculatorNotifier());

class CalculatorNotifier extends StateNotifier<CalculatorModel>{
  CalculatorNotifier(): super(CalculatorModel());



   btnOnClick(String btnVal){
    print(btnVal);
    if(btnVal == 'C'){
      state.textToShow = '';
      state.firstNum = 0;
      state.secondNum = 0;
      state.res= '';
    } else if(btnVal == 'AC'){
      state.textToShow = '';
      state.firstNum = 0;
      state.secondNum = 0;
      state.res= '';
      state.history = '';
    }else if(btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/'
    ){
      state.firstNum = int.parse(state.textToShow);
      state.res = '';
      state.operators = btnVal;
    }else if(btnVal == '='){
      state.secondNum = int.parse(state.textToShow);
      if(state.operators == '+'){
        state.res = (state.firstNum + state.secondNum).toString();
        state.history = state.firstNum.toString() + state.operators.toString() + state.secondNum.toString();
      }
      if(state.operators == '-'){
        state.res = (state.firstNum - state.secondNum).toString();
        state.history = state.firstNum.toString() + state.operators.toString() + state.secondNum.toString();
      }
      if(state.operators == 'X'){
        state.res = (state.firstNum * state.secondNum).toString();
        state.history = state.firstNum.toString() + state.operators.toString() + state.secondNum.toString();
      }
      if(state.operators == '/'){
        state.res = (state.firstNum / state.secondNum).toString();
        state.history = state.firstNum.toString() + state.operators.toString() + state.secondNum.toString();
      }
    } else {
      state.res= int.parse(state.textToShow + btnVal).toString();
    }
      state.textToShow = state.res;
      state = state;
  }


}

