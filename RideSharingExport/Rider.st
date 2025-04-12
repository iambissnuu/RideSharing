Object subclass: #Rider
    instanceVariableNames: 'riderID name requestedRides'
    classVariableNames: ''
    package: 'RideSharing'

Rider>>initializeWith: id name: aName
    riderID := id.
    name := aName.
    requestedRides := OrderedCollection new.

Rider>>requestRide: aRide
    requestedRides add: aRide.

Rider>>viewRides
    Transcript show: 'Rides for ', name; cr.
    requestedRides do: [:r |
        | line |
        line := 'Ride ID: ', (r rideID),
                ' | From: ', (r pickupLocation),
                ' | To: ', (r dropoffLocation),
                ' | Distance: ', (r distance asString),
                ' miles | Fare: $', (r fare asString).
        Transcript show: line; cr.
    ].