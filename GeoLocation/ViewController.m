//
//  ViewController.m
//  GeoLocation
//
//  Created by Ishwarya Lakshmi on 8/20/16.
//  Copyright (c) 2016 StarTypo. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize locationManager;
@synthesize latitude;
@synthesize longitude;
@synthesize altitude;
@synthesize speed;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [super viewDidLoad];
    [super viewDidLoad];
    locationManager = [[CLLocationManager alloc]init]; // initializing locationManager
    locationManager.delegate = self; // we set the delegate of locationManager to self.
    locationManager.desiredAccuracy = kCLLocationAccuracyBest; // setting the accuracy
    
    [self.locationManager requestAlwaysAuthorization];
    [locationManager startUpdatingLocation];  //requesting location updates
    _mapView.showsUserLocation = YES;
    
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    UIAlertView *errorAlert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"There was an error retrieving your location" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [errorAlert show];
    NSLog(@"Error: %@",error.description);
}
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *crnLoc = [locations lastObject];
    latitude.text = [NSString stringWithFormat:@"%.8f",crnLoc.coordinate.latitude];
    longitude.text = [NSString stringWithFormat:@"%.8f",crnLoc.coordinate.longitude];
    altitude.text = [NSString stringWithFormat:@"%.0f m",crnLoc.altitude];
    speed.text = [NSString stringWithFormat:@"%.1f m/s", crnLoc.speed];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
