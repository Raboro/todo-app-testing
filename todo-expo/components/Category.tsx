import type { ICategory } from '@/data/ICategory';
import { Button, StyleSheet, Text, View } from 'react-native';

interface CategoryProps {
  category: ICategory;
  onDelete: (category: ICategory) => void;
}

export function Category(props: CategoryProps) {
  return (
    <View style={styles.container}>
      <Text style={styles.category}>{props.category.name}</Text>
      <Button title="Remove" onPress={() => props.onDelete(props.category)} />
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
    marginBottom: 10,
  },
  category: {
    fontWeight: 'bold',
  },
});
