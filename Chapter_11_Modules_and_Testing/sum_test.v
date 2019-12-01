// sum_test.v
import sum

fn test_sum() {
    assert sum.sum(2, 3) == 5
    // assert sum.sum(2, 3) == 777 // => sum_test.v:6: FAILED assertion
}
