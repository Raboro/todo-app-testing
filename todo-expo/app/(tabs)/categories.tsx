import { Category } from '@/components/Category';
import { Heading } from '@/components/Heading';
import type { ICategory } from '@/data/ICategory';
import { FlashList } from '@shopify/flash-list';
import { useState } from 'react';
import {
  Button,
  SafeAreaView,
  StyleSheet,
  TextInput,
  View,
} from 'react-native';

export default function CategoriesScreen() {
  const [category, setCategory] = useState<string>('');
  const [categories, setCategories] = useState<ICategory[]>([]);

  const onAdd = () => {
    if (category.length <= 0) {
      return;
    }
    setCategories((categories) => [...categories, { name: category }]);
    setCategory('');
  };

  const removeCategory = (category: ICategory) => {
    setCategories((categories) => [
      ...categories.filter((c) => c.name !== category.name),
    ]);
  };

  return (
    <SafeAreaView style={styles.container}>
      <Heading name={'Categories'} />
      <View style={styles.input}>
        <TextInput
          style={styles.textInput}
          placeholder={'Add a category'}
          onChangeText={(category) => setCategory(category)}
        />
        <Button title={'Add'} onPress={onAdd} />
      </View>
      <FlashList
        data={categories}
        renderItem={({ item }) => (
          <Category category={{ name: item.name }} onDelete={removeCategory} />
        )}
        estimatedItemSize={10}
      />
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: 'white',
    height: '100%',
  },
  input: {
    flexDirection: 'row',
    justifyContent: 'center',
    gap: 10,
    marginBottom: 50,
  },
  textInput: {
    width: 120,
  },
});
