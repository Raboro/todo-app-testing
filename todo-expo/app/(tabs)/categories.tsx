import {SafeAreaView, StyleSheet, Text} from 'react-native';

export default function CategoriesScreen() {
  return (
      <SafeAreaView style={styles.container}>
        <Text style={styles.heading}>Categories</Text>
      </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: 'white',
    height: '100%',
  },
  heading: {
    paddingTop: 10,
    paddingLeft: 20,
    fontSize: 20,
    fontWeight: 'bold',
    marginBottom: 50,
  }
});
