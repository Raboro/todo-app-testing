import { StyleSheet, Text } from 'react-native';

interface HeadingProps {
  name: string;
}

export function Heading(props: Readonly<HeadingProps>) {
  return <Text style={styles.heading}>{props.name}</Text>;
}

const styles = StyleSheet.create({
  heading: {
    paddingTop: 10,
    paddingLeft: 20,
    fontSize: 20,
    fontWeight: 'bold',
    marginBottom: 50,
  },
});
