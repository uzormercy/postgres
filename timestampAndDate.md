    # Timestamp and Date

```SELECT NOW();```

    This will return date and timestamp of the current date and time in UTC

```SELECT NOW()::Date```

    This will output only data
```SELECT NOW()::TIME```

    This will output only timestamp of the current date and time
##

    Subtracting and adding for time and date
##
    Subtracting
```SELECT NOW() - INTERVAL '1 YEAR';```

```SELECT NOW() - INTERVAL '1 MONTHS';```

```SELECT NOW() - INTERVAL '1 DAYS';```

##
    Adding
```SELECT NOW() + INTERVAL '1 YEAR';```

```SELECT NOW() + INTERVAL '10 MONTHS';```

```SELECT NOW() + INTERVAL '5 DAYS';```

    Casting

```SELECT NOW()::DATE + INTERVAL '1 YEAR';```

```SELECT NOW()::DATE + INTERVAL '10 MONTHS';```

```SELECT NOW()::DATE + INTERVAL '5 DAYS';```
#
```SELECT NOW()::TIME + INTERVAL '1 YEAR';```

```SELECT NOW()::TIME + INTERVAL '10 MONTHS';```

```SELECT NOW()::TIME + INTERVAL '5 DAYS';```
#

```SELECT (NOW() + INTERVAL '5 MONTHS')::DATE;```

    Extracting a specific value from the date

```SELECT EXTRACT(YEAR FROM NOW());```

    This will extract the year only from the current date

```SELECT EXTRACT(MONTH FROM NOW());```

```SELECT EXTRACT(DAY FROM NOW());```

```SELECT EXTRACT(DOW FROM NOW());``` // Day of the week

```SELECT EXTRACT(CENTURY FROM NOW());```
