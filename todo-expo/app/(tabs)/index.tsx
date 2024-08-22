import {SafeAreaView, StyleSheet, Text} from 'react-native';
import {FlashList} from "@shopify/flash-list";
import {Todo} from "@/components/Todo";
import {ITodo} from "@/data/ITodo";
import {AddButton} from "@/components/AddButton";
import {NewTodoModal} from "@/components/NewTodoModal";
import {useState} from "react";

export default function TodosScreen() {
    const [todos, setTodos] = useState<ITodo[]>([]);
   const openNewTodoModal = () => {
       return <NewTodoModal onSubmit={(todo) => {
           todos.push(todo);
           setTodos(todos);
       }} />
   }

  return (
      <SafeAreaView style={styles.container}>
        <Text style={styles.heading}>Todos</Text>
        <AddButton onPress={openNewTodoModal}/>
        <FlashList
            data={todos}
            renderItem={({ item }) => <Todo name={item.name} description={item.description} />}
            estimatedItemSize={20}
        />
      </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: 'white',
    height: "100%",
  },
  heading: {
    paddingTop: 10,
    paddingLeft: 20,
    fontSize: 20,
    fontWeight: 'bold',
    marginBottom: 50
  },
});
