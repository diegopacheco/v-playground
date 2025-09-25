module main

fn find_max(arr []int) int {
    mut max := arr[0]
    for num in arr {
        if num > max {
            max = num
        }
    }
    return max
}

fn find_min(arr []int) int {
    mut min := arr[0]
    for num in arr {
        if num < min {
            min = num
        }
    }
    return min
}

fn sum_array(arr []int) int {
    mut total := 0
    for num in arr {
        total += num
    }
    return total
}

fn average(arr []int) f64 {
    if arr.len == 0 {
        return 0.0
    }
    return f64(sum_array(arr)) / f64(arr.len)
}

fn reverse_array(arr []int) []int {
    mut result := []int{len: arr.len}
    for i, val in arr {
        result[arr.len - 1 - i] = val
    }
    return result
}

fn main() {
    numbers := [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
    println('Array: $numbers')
    println('Max: ${find_max(numbers)}')
    println('Min: ${find_min(numbers)}')
    println('Sum: ${sum_array(numbers)}')
    println('Average: ${average(numbers)}')
    println('Reversed: ${reverse_array(numbers)}')
}
