import {Pressable, StyleSheet, Text} from 'react-native';

type PrimaryButtonProps = {
  label: string;
  onPress: () => void;
};

export function PrimaryButton({label, onPress}: PrimaryButtonProps) {
  return (
    <Pressable
      onPress={onPress}
      style={({pressed}) => [styles.button, pressed && styles.pressed]}>
      <Text style={styles.label}>{label}</Text>
    </Pressable>
  );
}

const styles = StyleSheet.create({
  button: {
    backgroundColor: '#2E7D4F',
    borderRadius: 10,
    paddingVertical: 14,
    paddingHorizontal: 16,
    alignItems: 'center',
  },
  pressed: {
    opacity: 0.85,
  },
  label: {
    color: '#FFFFFF',
    fontSize: 15,
    fontWeight: '600',
    textAlign: 'center',
  },
});
