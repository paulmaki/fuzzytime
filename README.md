This simple gem outputs time in a "fuzzy" manner. 

Note: this is my first gem so please do tell if you find anything wrong with it!

It takes the Time class as input or defaults to the current local time if no time is provided. 

Example usage: 

```ruby
require 'fuzzytime'

t = Time.local(2012,1,1,0,0)
Fuzzytime.fuzzy_time(t) => "midnight"

t = Time.local(2012,3,17,4,20)
Fuzzytime.fuzzy_time(t) => "20 past 4"

t = Time.local(2012,3,17,9,45)
Fuzzytime.fuzzy_time(t) => "quarter til 10"

t = Time.local(2012,1,1,12,0)
Fuzzytime.fuzzy_time(t) => "noon"

t = Time.local(2012,3,17,17,15)
Fuzzytime.fuzzy_time(t) => "quarter past 5"
```
