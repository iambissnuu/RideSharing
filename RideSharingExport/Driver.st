Object subclass: #Driver
    instanceVariableNames: 'driverID name rating assignedRides'
    classVariableNames: ''
    package: 'RideSharing'

Driver>>initializeWith: id name: aName rating: aRating
    driverID := id.
    name := aName.
    rating := aRating.
    assignedRides := OrderedCollection new.

Driver>>addRide: aRide
    assignedRides add: aRide.

Driver>>getDriverInfo
    Transcript show: 'Driver ID: ', driverID, ' | Name: ', name, ' | Rating: ', rating asString; cr.
    assignedRides do: [:r | r rideDetails].