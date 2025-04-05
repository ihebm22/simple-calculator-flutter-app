

class Record{
    DateTime dateTime;
    String value;

    Record({
      required this.dateTime,
    required this.value
    });
    

void displayRecord(){
    print("Date: ${dateTime.toString()}, Value: $value");
  }
  @override
  String toString() {
    return 'Record(dateTime: $dateTime, value: $value)';
  }


}