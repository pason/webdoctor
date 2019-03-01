Given is a csv file of weekly doctors schedule avability.

Data Structures: 
Doctor: represents doctor's data e.g. full_name

Weekly_Schedule: represents schedule's data for given week, data are injected via DI from Csv::Parser

The CSV data are parsed by `Csv::Parser` into Hash `{ week_day => [Doctor(#1), Doctor(#2), ...] }`
The given weekly data hash is stored in `Weekly_Schedule` model. 
Avalibity data for given day are obtained by executing `find_doctor` method on `Weekly_Schedule` object.

Author: Slawomir Pason
