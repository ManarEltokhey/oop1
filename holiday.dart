
class Holiday {
 late String name;
  late int day;
  late String month;
  Holiday(String name, int day, String month) {
    this.name = name;
    this.day = day;
    this.month = month;
  }
  bool inSameMonth(Holiday h1, Holiday h2) {
    if (h1.month == h2.month) {
      return true;
    } else {
      return false;
    }
  }
  double avgDate(List<Holiday> holidays) {
    int sum = 0;
    for (int i = 0; i < holidays.length; i++) {
      sum = sum + holidays[i].day;
    }
    return sum / holidays.length;
  }
}
void main() {
  Holiday h1 = Holiday("independence day", 4, "July");
  Holiday h2 = Holiday("christmas", 25, "December");
  Holiday h3 = Holiday("another holiday", 10, "July");
  print(h1.inSameMonth(h1, h2));
  print(h1.inSameMonth(h1, h3));
  List<Holiday> holidays = [h1, h2, h3];
  print(h1.avgDate(holidays));
}
