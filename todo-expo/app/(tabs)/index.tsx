import {SafeAreaView, StyleSheet, Text} from 'react-native';
import {FlashList} from "@shopify/flash-list";
import {Todo} from "@/components/Todo";

const DATA = [
    {
        name: "Homework",
        description: "do the homework",
    },
    {
        name: "math",
        description: "do math problems",
    }
]


export default function TodosScreen() {
  return (
      <SafeAreaView style={styles.container}>
        <Text style={styles.heading}>Todos</Text>
        <FlashList
            data={DATA}
            renderItem={({ item }) => <Todo name={item.name} description={item.description} />}
            estimatedItemSize={20}
        />
      </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: 'white',
    height: "100%",
  },
  heading: {
    paddingTop: 10,
    paddingLeft: 20,
    fontSize: 20,
    fontWeight: 'bold',
    marginBottom: 50
  },
});
