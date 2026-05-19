import {useState} from 'react';
import {StyleSheet, Text, View} from 'react-native';
import {PrimaryButton} from './PrimaryButton';

/** Minimal state demo — compare to Flutter setState / StatefulWidget. */
export function CounterDemo() {
  const [count, setCount] = useState(0);

  return (
    <View style={styles.card}>
      <Text style={styles.title}>State with useState</Text>
      <Text style={styles.count}>{count}</Text>
      <View style={styles.row}>
        <PrimaryButton label="-1" onPress={() => setCount(c => c - 1)} />
        <PrimaryButton label="+1" onPress={() => setCount(c => c + 1)} />
      </View>
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
    gap: 12,
  },
  title: {
    fontSize: 17,
    fontWeight: '600',
    color: '#1A2B3C',
  },
  count: {
    fontSize: 36,
    fontWeight: '700',
    textAlign: 'center',
    color: '#1B3A5C',
  },
  row: {
    flexDirection: 'row',
    gap: 12,
    justifyContent: 'center',
  },
});
