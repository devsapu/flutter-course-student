import {StyleSheet, Text, View} from 'react-native';

type LessonCardProps = {
  emoji: string;
  title: string;
  body: string;
};

export function LessonCard({emoji, title, body}: LessonCardProps) {
  return (
    <View style={styles.card}>
      <Text style={styles.emoji}>{emoji}</Text>
      <Text style={styles.title}>{title}</Text>
      <Text style={styles.body}>{body}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  card: {
    backgroundColor: '#FFFFFF',
    borderRadius: 12,
    padding: 16,
    borderWidth: 1,
    borderColor: '#E2E8F0',
  },
  emoji: {
    fontSize: 28,
    marginBottom: 6,
  },
  title: {
    fontSize: 17,
    fontWeight: '600',
    color: '#1A2B3C',
    marginBottom: 6,
  },
  body: {
    fontSize: 14,
    color: '#4A5D6E',
    lineHeight: 20,
  },
});
