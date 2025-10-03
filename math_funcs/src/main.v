module main

fn gcd(a int, b int) int {
    mut x := a
    mut y := b
    
    for y != 0 {
        x, y = y, x % y
    }
    
    return x
}

fn lcm(a int, b int) int {
    return (a * b) / gcd(a, b)
}

fn is_prime(n int) bool {
    if n < 2 {
        return false
    }
    
    if n == 2 {
        return true
    }
    
    if n % 2 == 0 {
        return false
    }
    
    for i := 3; i * i <= n; i += 2 {
        if n % i == 0 {
            return false
        }
    }
    
    return true
}

fn factorial(n int) i64 {
    if n <= 1 {
        return 1
    }
    
    mut result := i64(1)
    for i in 2..n + 1 {
        result *= i64(i)
    }
    
    return result
}

fn fibonacci(n int) i64 {
    if n <= 1 {
        return i64(n)
    }
    
    mut a := i64(0)
    mut b := i64(1)
    
    for _ in 2..n + 1 {
        a, b = b, a + b
    }
    
    return b
}

fn power(base int, exp int) i64 {
    if exp == 0 {
        return 1
    }
    
    mut result := i64(1)
    mut b := i64(base)
    mut e := exp
    
    for e > 0 {
        if e % 2 == 1 {
            result *= b
        }
        b *= b
        e /= 2
    }
    
    return result
}

fn main() {
    println('GCD of 48 and 18: ${gcd(48, 18)}')
    println('LCM of 4 and 5: ${lcm(4, 5)}')
    println('Is 29 prime? ${is_prime(29)}')
    println('Factorial of 5: ${factorial(5)}')
    println('10th Fibonacci number: ${fibonacci(10)}')
    println('2 raised to the power of 10: ${power(2, 10)}')
}
