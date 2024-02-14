#Date and Time


# TIME

Time.utc_now
# ~T[02:54:31.818202]


# Criando um time com o sigil ~T
~T[23:55:55.000000]

t = ~T[23:55:55.123456]
t.hour # 23
t.minute # 55
t.second # 55
t.microsecond #{123456, 6}
t.day #(KeyError) key :day not found in: ~T[23:55:55.123456]

# DATE
Date.utc_today
~D[2024-02-14]

{:ok, date} = Date.new(2024, 02, 14)
#{:ok, ~D[2024-02-14]}

Date.day_of_week(date)
# 3
# começa a contar no domingo com indice 0
# então domingo(0), segunda(1), terca(2), quarta(3)


iex(20)> Calendar.get_time_zone_database
# Calendar.UTCOnlyTimeZoneDatabase


#TIMEZONE Database of elixir
# https://github.com/lau/tzdata
