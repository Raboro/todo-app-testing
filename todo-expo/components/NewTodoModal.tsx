import {Modal, View, Text, StyleSheet, Button, TextInput} from "react-native";
import {ITodo} from "@/data/ITodo";
import {useState} from "react";

interface NewTodoModalProps {
    visibility: boolean
    onSubmit: (todo: ITodo) => void,
}

export function NewTodoModal(props: Readonly<NewTodoModalProps>) {
    const [name, setName] = useState<string>("");
    const [description, setDescription] = useState<string>("");

    return (
        <Modal animationType="slide" visible={props.visibility} >
            <View>
                <Text style={styles.title}>Add new Todo</Text>
                <TextInput
                  placeholder={"Insert name of todo"}
                  onChangeText={(name) => setName(name)}
                />
                <TextInput
                    placeholder={"Insert description of todo"}
                    onChangeText={(description) => setDescription(description)}
                />
                <Button title={"Submit"} onPress={() => {
                    props.onSubmit({name, description});
                    setName("");
                    setDescription("");
                }}/>
            </View>
        </Modal>
    );
}

const styles = StyleSheet.create({
   title: {
       fontWeight: 'bold',
   }
});
