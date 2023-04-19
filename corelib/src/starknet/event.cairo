use serde::Serde;

trait Event<T> {
    fn append_keys_and_values(self: T, ref keys: Array<felt252>, ref values: Array<felt252>);
}

impl EventForSerde<T, impl TSerde: Serde<T>> of Event<T> {
    fn append_keys_and_values(self: T, ref keys: Array<felt252>, ref values: Array<felt252>) {
        Serde::serialize(ref values, self)
    }
}

