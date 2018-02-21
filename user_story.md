# challenge2 #

### nouns
- person
- bike
- docking station

### verbs
- use bike
- release bike
- bike working?


| Objects        | Messages        |
| -------------- |:---------------:|
| person         | use_bike        |
| bike           | is_working?     |   
| docking_station| release_bike    |   


### diagram

```
bike <-- is_working? --> true/false
docking_station <-- release_bike --> bike
```


# challenge4 #
- error type = NameError
- error file path = ./.rvm/rubies/ruby-2.4.1/bin/irb:11
- error line number = 1
- **error solution = initialize new class/constant called DockingStation**

# challenge5 #
- initialize rspec using ```rspec --init```
- create new spec file inside spec folder named docking_station_spec.rb
- ```describe DockingStation do end ```
- error message is same because we didnt initialize the class. we only wrote the test.
