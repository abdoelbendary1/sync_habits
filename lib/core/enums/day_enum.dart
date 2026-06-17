enum DayEnum {
  sunday('Sunday', 'Sun', 0),
  monday('Monday', 'Mon', 1),
  tuesday('Tuesday', 'Tue', 2),
  wednesday('Wednesday', 'Wed', 3),
  thursday('Thursday', 'Thu', 4),
  friday('Friday', 'Fri', 5),
  saturday('Saturday', 'Sat', 6);

  final String name;
  final String shortName;
  final int id;
  const DayEnum(this.name, this.shortName, this.id);
}
