import {StyleSheet, View, Text} from "react-native";
import {ITodo} from "@/data/ITodo";

export function Todo(todo: Readonly<ITodo>) {
    return (
        <View style={styles.container}>
            <Text style={styles.name}>{todo.name}</Text>
            {todo.description.length > 0 && <Text style={styles.description}>{todo.description}</Text>}
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
        marginBottom: 10
    },
    name: {
        fontWeight: "bold"
    },
    description: {}
});
