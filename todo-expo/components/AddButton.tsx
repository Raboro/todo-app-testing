import { StyleSheet, TouchableOpacity } from "react-native";
import Ionicons from "@expo/vector-icons/Ionicons";

interface AddButtonProps {
    onPress: () => void,
}

export function AddButton(props: Readonly<AddButtonProps>) {
    return (
        <TouchableOpacity style={styles.container} onPress={props.onPress}>
            <Ionicons size={30} name={"add"} style={{paddingLeft: "45%"}}/>
        </TouchableOpacity>
    );
}

const styles = StyleSheet.create({
   container: {
       borderStyle: "solid",
       borderWidth: 2,
       borderRadius: 10,
       marginLeft: 30,
       marginRight: 30,
       marginBottom: 50
   }
});
