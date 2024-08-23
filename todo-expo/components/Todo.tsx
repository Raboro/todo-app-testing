import type { ITodo } from '@/data/ITodo';
import { StyleSheet, Text, View } from 'react-native';

export function Todo(todo: Readonly<ITodo>) {
  return (
    <View style={styles.container}>
      <Text style={styles.name}>{todo.name}</Text>
      {todo.description.length > 0 && (
        <Text style={styles.description}>{todo.description}</Text>
      )}
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
