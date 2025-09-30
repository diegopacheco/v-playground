module main

type Node = IntNode | Add | Mul

struct IntNode { v int }

struct Add { l Node r Node }

struct Mul { l Node r Node }

fn eval(n Node) int {
    return match n {
        IntNode { n.v }
        Add { eval(n.l) + eval(n.r) }
        Mul { eval(n.l) * eval(n.r) }
    }
}

fn main() {
    tree := Mul{ l: Add{ l: IntNode{2}, r: IntNode{3} }, r: IntNode{4} }
    println(eval(tree))
}