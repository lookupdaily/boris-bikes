# Boris Bikes #

London's Boris Bikes (well, 'Santander Cycles') are awesome. Anyone can hire out a bike and ride it around London.

This programme simulates a boris bike docking station - allowing the user to release and dock bikes, and report broken bikes when docking. 

I created this programme as part of a challenge at [Makers Academy](https://github.com/makersacademy). See [How I built it](#How-i-built-it) for more information on the programme's requirements.

* [Getting started](#Getting-Started)
* [Useage](#useage)
* [Running tests](#Running-tests)
* [How I built it](#How-i-built-it)
* [Credits](#credits)


## Getting Started ##

1. Fork this repo, and clone to your local machine. Navigate into the folder. 
2. Run the command `gem install bundle` (if you don't have bundle already) 
3. When the installation completes, run `bundle`

## Useage ##

This programme is run on ruby within a REPL such as irb or pry. You can replace irb below with your preferred REPL.

From inside the boris-bikes directory type the following in your command line:

```shell
$ irb
  > require './lib/dockingstation.rb'
  > docking_station = DockingStation.new
  > bike = Bike.new
```

A docking station has a default capacity of 20, but you can specify a larger capacity on creation:

```
docking_station = DockingStation.new(30)
```

**Example useage**
```shell
$ irb
  > docking_station.dock(bike)
  > docking_station.release_bike
  > docking_station.report_faulty(bike)
```

The docking station will raise an error if:
- You try to dock a bike but it is full
- You try to release a bike but it is empty
- You try to release a broken bike

## Running tests ##

1. Navigate to top level of project directory (path/boris-bikes)
2. In your command line type:

```shell
$ rspec
```

## How I built it ##

This programme was built using Pair Programming and Test Driven Development. I worked with a different pair from my cohort each day to complete the challenge, creating a programme to meet the requirements of the given [User Stories](#User-stories) below. 

### Concepts applied ###

- Domain modelling
- Writing feature tests and unit tests to plan code
- TDD cycle: RED - GREEN - REFACTOR
- Encapsulation
- Single Responsibility Principle
- No magic numbers
- Version control with git
- Debugging
- Ruby exceptions
- Ruby instance variables
- Ruby private methods

### User Stories ###

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
```

## Credits ##

Created in response to User Stories and brief from [Makers Academy](https://makers.tech/). 

