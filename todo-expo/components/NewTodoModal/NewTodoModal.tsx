import type { ITodo } from '@/data/ITodo';
import { useState } from 'react';
import {
  Button,
  Modal,
  SafeAreaView,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';

interface NewTodoModalProps {
  visibility: boolean;
  onSubmit: (todo: ITodo) => void;
  onCancel: () => void;
}

export function NewTodoModal(props: Readonly<NewTodoModalProps>) {
  const [name, setName] = useState<string>('');
  const [description, setDescription] = useState<string>('');

  const resetInputs = () => {
    setName('');
    setDescription('');
  };

  const onSubmit = () => {
    if (name.length <= 0) {
      return;
    }
    props.onSubmit({ name, description });
    resetInputs();
  };

  const onCancel = () => {
    props.onCancel();
    resetInputs();
  };

  return (
    <Modal
      animationType="slide"
      visible={props.visibility}
      presentationStyle="formSheet"
    >
      <SafeAreaView style={styles.container}>
        <Text style={styles.title}>Add new Todo</Text>
        <TextInput
          placeholder={'Insert name of todo'}
          onChangeText={(name) => setName(name)}
        />
        <TextInput
          placeholder={'Insert description of todo'}
          onChangeText={(description) => setDescription(description)}
        />
        <View style={styles.buttonContainer}>
          <Button title={'Submit'} onPress={onSubmit} />
          <Button title={'Cancel'} onPress={onCancel} />
        </View>
      </SafeAreaView>
    </Modal>
  );
}

const styles = StyleSheet.create({
  title: {
    fontWeight: 'bold',
  },
  container: {
    marginVertical: 100,
    marginHorizontal: 20,
  },
  buttonContainer: {
    justifyContent: 'center',
    flexDirection: 'row',
    gap: 10,
  },
});
