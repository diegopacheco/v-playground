module main

struct Node[T] {
mut:
    value T
    left  ?&Node[T]
    right ?&Node[T]
}

struct BST[T] {
mut:
    root ?&Node[T]
}

fn (mut bst BST[T]) insert(value T) {
    if bst.root == none {
        bst.root = &Node[T]{value: value}
        return
    }
    mut current := bst.root or { return }
    for {
        if value < current.value {
            if current.left == none {
                current.left = &Node[T]{value: value}
                break
            }
            current = current.left or { break }
        } else {
            if current.right == none {
                current.right = &Node[T]{value: value}
                break
            }
            current = current.right or { break }
        }
    }
}

fn (bst BST[T]) inorder() []T {
    mut result := []T{}
    bst.inorder_helper(bst.root, mut result)
    return result
}

fn (bst BST[T]) inorder_helper(node ?&Node[T], mut result []T) {
    if n := node {
        bst.inorder_helper(n.left, mut result)
        result << n.value
        bst.inorder_helper(n.right, mut result)
    }
}

fn main() {
    mut bst := BST[int]{}
    bst.insert(5)
    bst.insert(3)
    bst.insert(7)
    bst.insert(2)
    bst.insert(4)
    bst.insert(6)
    bst.insert(8)

    println('Inorder Traversal: ${bst.inorder()}')
}
