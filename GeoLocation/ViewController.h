//
//  ViewController.h
//  GeoLocation
//
//  Created by Ishwarya Lakshmi on 8/20/16.
//  Copyright (c) 2016 StarTypo. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *latitude;
@property (weak, nonatomic) IBOutlet UILabel *longitude;
@property (weak, nonatomic) IBOutlet UILabel *altitude;
@property (weak, nonatomic) IBOutlet UILabel *speed;
@property (strong, nonatomic) CLLocationManager *locationManager;

@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@end
