import {StyleSheet, Text, View} from 'react-native';

type WelcomeHeaderProps = {
  title: string;
  subtitle: string;
};

/** Reusable header — compare to a small Flutter StatelessWidget. */
export function WelcomeHeader({title, subtitle}: WelcomeHeaderProps) {
  return (
    <View style={styles.card}>
      <Text style={styles.emoji}>⚛️</Text>
      <Text style={styles.title}>{title}</Text>
      <Text style={styles.subtitle}>{subtitle}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  card: {
    backgroundColor: '#1B3A5C',
    borderRadius: 16,
    padding: 20,
    alignItems: 'center',
  },
  emoji: {
    fontSize: 40,
    marginBottom: 8,
  },
  title: {
    fontSize: 22,
    fontWeight: '700',
    color: '#FFFFFF',
    textAlign: 'center',
  },
  subtitle: {
    marginTop: 8,
    fontSize: 15,
    color: '#C8D9E8',
    textAlign: 'center',
    lineHeight: 22,
  },
});
