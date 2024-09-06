import { SafeAreaView, Text, View, StyleSheet } from 'react-native';
import SelectDropdown from 'react-native-select-dropdown';
import i18 from 'i18next';
import { languages } from '@/i18n/i18n';

export default function SettingsScreen() {

    const changeLanguage = (language: string) => {
        i18.changeLanguage(language);
    } 

    return <SafeAreaView style={styles.container}>
        <View style={styles.innerContainer}>
            <SelectDropdown 
                data={languages}
                onSelect={(selectedItem) => changeLanguage(selectedItem)}
                renderButton={(selectedItem) => {
                    return (
                    <View style={styles.dropdownButtonStyle}>
                        <Text style={styles.dropdownButtonTxtStyle}>
                        {selectedItem ?? 'en'}
                        </Text>
                    </View>
                    );
                }}
                renderItem={(item, isSelected) => {
                    return (
                    <View style={{...styles.dropdownItemStyle, ...(isSelected && {backgroundColor: '#D2D9DF'})}}>
                        <Text style={styles.dropdownItemTxtStyle}>{item}</Text>
                    </View>
                    )
                }}
                showsVerticalScrollIndicator={false}
                dropdownStyle={styles.dropdownMenuStyle}
            />
        </View>
    </SafeAreaView>;
}

const styles = StyleSheet.create({
    container: {
      backgroundColor: 'white',
      height: '100%',
    },
    innerContainer: {
      margin: 110
    },
    dropdownButtonStyle: {
      width: 200,
      height: 50,
      backgroundColor: '#E9ECEF',
      borderRadius: 12,
      flexDirection: 'row',
      justifyContent: 'center',
      alignItems: 'center',
      paddingHorizontal: 12,
    },
    dropdownButtonTxtStyle: {
      flex: 1,
      fontSize: 18,
      fontWeight: '500',
      color: '#151E26',
    },
    dropdownMenuStyle: {
      backgroundColor: '#E9ECEF',
      borderRadius: 8,
    },
    dropdownItemStyle: {
      width: '100%',
      flexDirection: 'row',
      paddingHorizontal: 12,
      justifyContent: 'center',
      alignItems: 'center',
      paddingVertical: 8,
    },
    dropdownItemTxtStyle: {
      flex: 1,
      fontSize: 18,
      fontWeight: '500',
      color: '#151E26',
    },
  });