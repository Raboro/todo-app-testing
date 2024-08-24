import { AddButton } from '@/components/AddButton';
import { NewTodoModal } from '@/components/NewTodoModal';
import { Todo } from '@/components/Todo';
import type { ITodo } from '@/data/ITodo';
import { FlashList } from '@shopify/flash-list';
import { useState } from 'react';
import { SafeAreaView, StyleSheet } from 'react-native';
import {Heading} from "@/components/Heading";

export default function TodosScreen() {
  const [newTodoModalVisible, setNewTodoModalVisible] =
    useState<boolean>(false);
  const [todos, setTodos] = useState<ITodo[]>([]);

  const modalOnSubmit = (todo: ITodo) => {
    setTodos((todos) => [...todos, todo]);
    setNewTodoModalVisible(false);
  };

  const removeTodo = (todo: ITodo) => {
    setTodos((todos) => [
      ...todos.filter(
        (t) => t.description !== todo.description && t.name !== todo.name,
      ),
    ]);
  };

  return (
    <SafeAreaView style={styles.container}>
      <Heading name={"Todos"} />
      <NewTodoModal
        visibility={newTodoModalVisible}
        onSubmit={modalOnSubmit}
        onCancel={() => setNewTodoModalVisible(false)}
      />
      <AddButton onPress={() => setNewTodoModalVisible(true)} />
      <FlashList
        data={todos}
        renderItem={({ item }) => (
          <Todo
            todo={{ name: item.name, description: item.description }}
            onDelete={removeTodo}
          />
        )}
        estimatedItemSize={20}
      />
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: 'white',
    height: '100%',
  },
});
