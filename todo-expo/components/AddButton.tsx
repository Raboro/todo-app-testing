import { StyleSheet, TouchableOpacity } from "react-native";
import Ionicons from "@expo/vector-icons/Ionicons";

export function AddButton() {
    return (
        <TouchableOpacity style={styles.container}>
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
