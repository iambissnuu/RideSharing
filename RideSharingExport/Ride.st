Ride subclass: #Ride
    instanceVariableNames: 'rideID pickupLocation dropoffLocation distance'
    classVariableNames: ''
    package: 'RideSharing'

Ride>>initializeWith: id pickup: pickup dropoff: dropoff distance: dist
    rideID := id.
    pickupLocation := pickup.
    dropoffLocation := dropoff.
    distance := dist.

Ride>>rideID
    ^ rideID

Ride>>pickupLocation
    ^ pickupLocation

Ride>>dropoffLocation
    ^ dropoffLocation

Ride>>distance
    ^ distance

Ride>>fare
    self subclassResponsibility

Ride>>rideDetails
    Transcript
        nextPutAll: 'Ride ID: ', rideID;
        nextPutAll: ' | From: ', pickupLocation;
        nextPutAll: ' | To: ', dropoffLocation;
        nextPutAll: ' | Distance: ', distance asString;
        nextPutAll: ' miles | Fare: $', (self fare) asString;
        cr.