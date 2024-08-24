import {Button, SafeAreaView, StyleSheet, TextInput, View} from 'react-native';
import {Heading} from "@/components/Heading";
import {useState} from "react";
import {ICategory} from "@/data/ICategory";

export default function CategoriesScreen() {
  const [category, setCategory] = useState<string>("");
  const [categories, setCategories] = useState<ICategory[]>([]);

  const onAdd = () => {
      if (category.length <= 0) {
          return;
      }
      setCategories(categories => [...categories, {name: category}]);
      setCategory("");
  }

  return (
      <SafeAreaView style={styles.container}>
        <Heading name={"Categories"} />
        <View>
            <TextInput
                placeholder={"Add a category"}
                onChangeText={(category) => setCategory(category)}
            />
            <Button title={"Add"} />
        </View>
      </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: 'white',
    height: '100%',
  },
});
