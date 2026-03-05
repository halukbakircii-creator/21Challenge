module challenge::main {
    #[test_only]
    use std::unit_test::assert_eq;

    public fun sum(a: u64, b: u64): u64 {
        a + b
    }

    #[test]
    fun test_sum() {
        assert_eq!(sum(1, 2), 3);
    }
}