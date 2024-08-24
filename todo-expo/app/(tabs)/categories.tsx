import {SafeAreaView, StyleSheet} from 'react-native';
import {Heading} from "@/components/Heading";

export default function CategoriesScreen() {
  return (
      <SafeAreaView style={styles.container}>
        <Heading name={"Categories"} />
      </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: 'white',
    height: '100%',
  },
});
