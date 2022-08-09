import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_simple_calculator/Logic/riverpod.dart';
import 'package:riverpod_simple_calculator/calculatorbtn.dart';

class Calculator extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(CalculatorProvider);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Container(
              padding: const EdgeInsets.only(right: 25),
              child: Text(ref.watch(CalculatorProvider.notifier).state.history,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,

              ),
              ),
              alignment: const  Alignment(1.0, 1.0),
            ),
            const SizedBox(height: 10,),

            Container(
              padding: const EdgeInsets.only(right: 25),
              child: Text(ref.watch(CalculatorProvider.notifier).state.textToShow,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:48,
                  color: Colors.white,

                ),
              ),
              alignment: const  Alignment(1.0, 1.0),
            ),
            const SizedBox(height: 20,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorBtn('AC', ref.read(CalculatorProvider.notifier).btnOnClick, 0xFF212121,0xFF9E9E9E , 70),
                CalculatorBtn('C', ref.read(CalculatorProvider.notifier).btnOnClick, 0xFF212121,0xFF9E9E9E , 70),
                CalculatorBtn('+/-', ref.read(CalculatorProvider.notifier).btnOnClick, 0xFF212121,0xFF9E9E9E , 70),
                CalculatorBtn('/', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB, 0xFFF9A825 , 70),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorBtn('7', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB , 0xFF303030, 70),
                CalculatorBtn('8', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB , 0xFF303030, 70),
                CalculatorBtn('9', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB , 0xFF303030, 70),
                CalculatorBtn('X', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB, 0xFFF9A825 , 70),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorBtn('4', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB , 0xFF303030, 70),
                CalculatorBtn('5', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB , 0xFF303030, 70),
                CalculatorBtn('6', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB , 0xFF303030, 70),
                CalculatorBtn('-', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB, 0xFFF9A825 , 70),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorBtn('1', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB , 0xFF303030, 70),
                CalculatorBtn('2', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB , 0xFF303030, 70),
                CalculatorBtn('3', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB , 0xFF303030, 70),
                CalculatorBtn('+', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB, 0xFFF9A825 , 70),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorBtn('0', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB , 0xFF303030, 160),
                CalculatorBtn('.', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB , 0xFF303030, 70),
                CalculatorBtn('=', ref.read(CalculatorProvider.notifier).btnOnClick,0xFFB2DFDB, 0xFFF9A825 , 70),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
