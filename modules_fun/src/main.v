module main

import calc
//import calc { mul } // would import just mul

fn main() {
  result := calc.sum(1,4)
  mul := calc.mul
  println('1 + 4 == ${result}')
  println('4 - 1 == ${calc.sum(4,1)}')
  println('2 * 3 == ${mul(2,3)}')
  println('4 / 4 == ${calc.div(4,4)}')
}
