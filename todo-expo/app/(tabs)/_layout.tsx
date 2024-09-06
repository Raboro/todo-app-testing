import { TabBarIcon } from '@/components/TabBarIcon/TabBarIcon';
import { Tabs } from 'expo-router';
import React from 'react';

import '@/i18n/i18n';

export default function TabLayout() {
  return (
    <Tabs
      screenOptions={{
        headerShown: false,
      }}
    >
      <Tabs.Screen
        name="index"
        options={{
          title: 'Todos',
          tabBarIcon: ({ color }) => (
            <TabBarIcon name={'checkbox'} color={color} />
          ),
        }}
      />
      <Tabs.Screen
        name="categories"
        options={{
          title: 'Categories',
          tabBarIcon: ({ color }) => (
            <TabBarIcon name={'library'} color={color} />
          ),
        }}
      />
    </Tabs>
  );
}
