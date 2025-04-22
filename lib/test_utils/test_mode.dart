/// Global variable that indicates if the application is in test mode
bool isInTestMode = false;

void enableTestMode() {
  isInTestMode = true;
  print('Test mode enabled');
}

void disableTestMode() {
  isInTestMode = false;
  print('Test mode disabled');
} 