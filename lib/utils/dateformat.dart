class DateFormat {
  static humanLanguageFormat(DateTime date) {
    final now = DateTime.now();
    final diference = now.difference(date).inDays;
    print(diference);
    if (diference == 0)
      return date.hour.toString() + " " + date.minute.toString();
    if (diference == 1) return "Ayer";
    if (diference >= 2 && diference <= 7) return "Hace $diference días";
    if (diference >= 8 && diference <= 14) return "Hace 2 semanas";
    if (diference >= 15 && diference <= 21) return "Hace 3 semanas";
    if (diference >= 22 && diference <= 28) return "Hace 1 mes";
    return date.day.toString() +
        "-" +
        date.month.toString() +
        "-" +
        date.year.toString();
  }
}
