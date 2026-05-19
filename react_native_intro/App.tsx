/**
 * Week 8 lab — entry point (like Flutter's main.dart → runApp).
 */
import {StatusBar, useColorScheme} from 'react-native';
import {SafeAreaProvider} from 'react-native-safe-area-context';
import {HomeScreen} from './src/screens/HomeScreen';

function App() {
  const isDarkMode = useColorScheme() === 'dark';

  return (
    <SafeAreaProvider>
      <StatusBar barStyle={isDarkMode ? 'light-content' : 'dark-content'} />
      <HomeScreen />
    </SafeAreaProvider>
  );
}

export default App;
