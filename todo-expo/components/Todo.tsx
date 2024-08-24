import type { ITodo } from '@/data/ITodo';
import { Button, StyleSheet, Text, View } from 'react-native';

interface TodoProps {
  todo: ITodo;
  onDelete: (todo: ITodo) => void;
}

export function Todo(props: Readonly<TodoProps>) {
  return (
    <View style={styles.container}>
      <Text style={styles.name}>{props.todo.name}</Text>
      {props.todo.description.length > 0 && (
        <Text style={styles.description}>{props.todo.description}</Text>
      )}
      <Button title="Remove" onPress={() => props.onDelete(props.todo)} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    borderStyle: 'solid',
    borderColor: 'black',
    borderRadius: 10,
    borderWidth: 2,
    paddingLeft: 10,
    paddingRight: 10,
    marginLeft: 30,
    marginRight: 30,
    marginBottom: 10,
  },
  name: {
    fontWeight: 'bold',
  },
  description: {},
});
