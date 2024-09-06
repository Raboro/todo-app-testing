import { SafeAreaView, Text, View, StyleSheet } from 'react-native';
import SelectDropdown from 'react-native-select-dropdown';
import i18 from 'i18next';
import { languages } from '@/i18n/i18n';

export default function SettingsScreen() {

    const changeLanguage = (language: string) => {
        i18.changeLanguage(language);
    } 

    return <SafeAreaView>
        <SelectDropdown 
            data={languages}
            onSelect={(selectedItem) => changeLanguage(selectedItem)}
            renderButton={(selectedItem) => {
                return (
                  <View style={styles.dropdownButtonStyle}>
                    <Text style={styles.dropdownButtonTxtStyle}>
                      {selectedItem}
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
    </SafeAreaView>;
}

const styles = StyleSheet.create({
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
    dropdownButtonArrowStyle: {
      fontSize: 28,
    },
    dropdownButtonIconStyle: {
      fontSize: 28,
      marginRight: 8,
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
    dropdownItemIconStyle: {
      fontSize: 28,
      marginRight: 8,
    },
  });