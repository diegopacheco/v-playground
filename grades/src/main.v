module main

struct Student {
    name   string
mut:
    grades []int
}

fn new_student(name string) Student {
    return Student{
        name: name
        grades: []int{}
    }
}

fn (mut s Student) add_grade(grade int) {
    s.grades << grade
}

fn sum_array(arr []int) int {
    mut sum := 0
    for grade in arr {
        sum += grade
    }
    return sum
}

fn (s Student) get_average() f64 {
    if s.grades.len == 0 {
        return 0.0
    }
    return f64(sum_array(s.grades)) / f64(s.grades.len)
}

fn (s Student) get_letter_grade() string {
    avg := s.get_average()
    if avg >= 90 {
        return 'A'
    } else if avg >= 80 {
        return 'B'
    } else if avg >= 70 {
        return 'C'
    } else if avg >= 60 {
        return 'D'
    } else {
        return 'F'
    }
}

fn (s Student) passed() bool {
    return s.get_average() >= 60.0
}

fn main() {
    mut student := new_student('Alice')
    student.add_grade(85)
    student.add_grade(92)
    student.add_grade(78)

    println('Student: $student.name')
    println('Average Grade: ${student.get_average():.2f}')
    println('Letter Grade: ${student.get_letter_grade()}')
    if student.passed() {
        println('Status: Passed')
    } else {
        println('Status: Failed')
    }
}
