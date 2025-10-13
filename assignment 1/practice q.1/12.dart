void main() {
  double distance = 25; // in kilometers
  double speed = 40;    // in km/h

  double timeInHours = distance / speed;       // time in hours
  double timeInMinutes = timeInHours * 60;    // convert hours to minutes

  print('Time taken to reach office: ${timeInMinutes.toStringAsFixed(2)} minutes');
}
