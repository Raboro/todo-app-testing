import {Modal, View, Text, StyleSheet, Button} from "react-native";
import {ITodo} from "@/data/ITodo";

interface NewTodoModalProps {
    onSubmit: (todo: ITodo) => void,
}

export function NewTodoModal(props: Readonly<NewTodoModalProps>) {
    return (
        <Modal animationType="slide" >
            <View>
                <Text style={styles.title}>Add new Todo</Text>
                <Button title={"Submit"} onPress={() => props.onSubmit({name: "test", description: "test"})}/>
            </View>
        </Modal>
    );
}

const styles = StyleSheet.create({
   title: {
       fontWeight: 'bold',
   }
});
