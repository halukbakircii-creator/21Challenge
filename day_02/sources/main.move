module day_05::habit_tracker {
    use std::string::String;
    use std::vector;

    public struct Habit has store, drop {
        name: String,
        is_completed: bool,
    }

    public struct HabitList has store, drop {
        habits: vector<Habit>,
    }

    public fun empty_list(): HabitList {
        HabitList {
            habits: vector::empty<Habit>()
        }
    }

    public fun add_habit(list: &mut HabitList, habit: Habit) {
        vector::push_back(&mut list.habits, habit);
    }

    public fun complete_habit(list: &mut HabitList, index: u64) {
        let length = vector::length(&list.habits);
        
        if (index < length) {
            let habit_ref = vector::borrow_mut(&mut list.habits, index);
            habit_ref.is_completed = true;
        }
    }
}