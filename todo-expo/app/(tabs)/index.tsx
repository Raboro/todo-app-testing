import {SafeAreaView, StyleSheet, Text, View} from 'react-native';


export default function TodosScreen() {
  return (
      <SafeAreaView style={styles.container}>
        <Text style={styles.heading}>Todos</Text>
      </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: 'white',
  },
  heading: {
    paddingTop: 10,
    paddingLeft: 20,
    fontSize: 20,
    fontWeight: 'bold'
  }
});
