import type { ITodo } from '@/data/ITodo';
import { useState } from 'react';
import { Button, Modal, StyleSheet, Text, TextInput, View } from 'react-native';

interface NewTodoModalProps {
  visibility: boolean;
  onSubmit: (todo: ITodo) => void;
}

export function NewTodoModal(props: Readonly<NewTodoModalProps>) {
  const [name, setName] = useState<string>('');
  const [description, setDescription] = useState<string>('');

  const onSubmit = () => {
    if (name.length <= 0) {
      return;
    }
    props.onSubmit({ name, description });
    setName('');
    setDescription('');
  };

  return (
    <Modal animationType="slide" visible={props.visibility}>
      <View>
        <Text style={styles.title}>Add new Todo</Text>
        <TextInput
          placeholder={'Insert name of todo'}
          onChangeText={(name) => setName(name)}
        />
        <TextInput
          placeholder={'Insert description of todo'}
          onChangeText={(description) => setDescription(description)}
        />
        <Button title={'Submit'} onPress={onSubmit} />
      </View>
    </Modal>
  );
}

const styles = StyleSheet.create({
  title: {
    fontWeight: 'bold',
  },
});
