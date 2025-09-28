module main

fn worker(ch chan int, x int) {
    value := x * x
    unsafe {
        ch <- value
    }
}

fn main() {
    mut ch := chan int{cap: 16}
    for i in 1..9 {
        spawn worker(ch, i)
    }
    mut sum := 0
    for _ in 1..9 {
        sum += <-ch
    }
    println(sum)
}