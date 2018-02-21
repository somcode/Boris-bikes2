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

# challenge6 #
- created a lib directory inside project repo
- within lib directory we created ```docking_station.rb``` where we initialize the class.
- we added ```require 'docking_station'``` at the top of docking_station_spec.rb
- we didnt get any error message because we initialized DockingStation class and we've told spec file where to find it.

# challenge7 #
- noticed that using ```require 'filename'``` does not take us to the path; therefore we had to use absolute path ```require './lib/docking_station.rb'```
- we don't see an error anymore because we now have initialised the class and we are able to create DockingStation objects.
- calling ```docking_station.release_bike``` gives an ```undefined method``` because we have not defined a ```release_bike``` method, yet
