
// v 12.8: tests cannot have function `main`
fn sum (a, b int) int {
    return a + b
}

fn check_sum() {
    assert sum(2, 3) == 5
    assert sum(2, 3) == 7
}

fn main(){
    check_sum()
}
