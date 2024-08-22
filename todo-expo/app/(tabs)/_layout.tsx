import { TabBarIcon } from '@/components/navigation/TabBarIcon';
import { Tabs } from 'expo-router';
import React from 'react';


export default function TabLayout() {

  return (
    <Tabs
      screenOptions={{
        headerShown: false,
      }}>
      <Tabs.Screen
        name="index"
        options={{
          title: 'Home',
          tabBarIcon: ({ color }) => (
            <TabBarIcon name={'checkbox'} color={color} />
          ),
        }}
      />
      <Tabs.Screen
        name="explore"
        options={{
          title: 'Explore',
          tabBarIcon: ({ color }) => (
            <TabBarIcon name={'library'} color={color} />
          ),
        }}
      />
    </Tabs>
  );
}
