import {ScrollView, StyleSheet, Text, View} from 'react-native';
import {SafeAreaView} from 'react-native-safe-area-context';
import {CounterDemo} from '../components/CounterDemo';
import {LessonCard} from '../components/LessonCard';
import {PrimaryButton} from '../components/PrimaryButton';
import {WelcomeHeader} from '../components/WelcomeHeader';

export function HomeScreen() {
  return (
    <SafeAreaView style={styles.safe} edges={['top', 'left', 'right']}>
      <ScrollView contentContainerStyle={styles.content}>
        <WelcomeHeader
          title="ICET React Native Intro"
          subtitle="Week 8 — components, JSX, and your first screen"
        />

        <LessonCard
          emoji="📁"
          title="Project structure"
          body="App.tsx is the entry. Screens live in src/screens/. Reusable UI lives in src/components/."
        />

        <LessonCard
          emoji="🧩"
          title="Components"
          body="Each file exports a function that returns JSX — similar to a Flutter Widget class."
        />

        <CounterDemo />

        <View style={styles.footer}>
          <PrimaryButton
            label="I read the structure — next: edit a component"
            onPress={() => {}}
          />
          <Text style={styles.hint}>
            In class you will change WelcomeHeader and add your own component.
          </Text>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  safe: {
    flex: 1,
    backgroundColor: '#F4F7FB',
  },
  content: {
    padding: 20,
    paddingBottom: 32,
    gap: 16,
  },
  footer: {
    marginTop: 8,
    gap: 10,
  },
  hint: {
    fontSize: 13,
    color: '#5C6B7A',
    textAlign: 'center',
  },
});
