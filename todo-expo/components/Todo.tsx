import {StyleSheet, View, Text} from "react-native";

interface TodoProps {
    name: string,
    description: string
}

export function Todo(props: Readonly<TodoProps>) {
    return (
        <View style={styles.container}>
            <Text style={styles.name}>{props.name}</Text>
            <Text style={styles.description}>{props.description}</Text>
        </View>
    );
}

const styles = StyleSheet.create({
    container: {
        borderStyle: 'solid',
        borderColor: 'black',
        borderRadius: 10,
        borderWidth: 2
    },
    name: {},
    description: {}
});
