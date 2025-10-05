module main

struct Queue[T] {
mut:
    items []T
}

fn new_queue[T]() Queue[T] {
    return Queue[T]{}
}

fn (mut q Queue[T]) enqueue(item T) {
    q.items << item
}

fn (mut q Queue[T]) dequeue() ?T {
    if q.items.len == 0 {
        return none
    }
    item := q.items[0]
    q.items = q.items[1..]
    return item
}

fn (q Queue[T]) front() ?T {
    if q.items.len == 0 {
        return none
    }
    return q.items[0]
}

fn (q Queue[T]) size() int {
    return q.items.len
}

fn main() {
    mut q := new_queue[int]()
    q.enqueue(1)
    q.enqueue(2)
    q.enqueue(3)
    println('Front item: ${q.front() or { -1 }}')
    println('Queue size: ${q.size()}')
    println('Dequeued item: ${q.dequeue() or { -1 }}')
    println('Queue size after dequeue: ${q.size()}')
}
