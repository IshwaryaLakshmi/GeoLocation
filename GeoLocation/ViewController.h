//
//  ViewController.h
//  GeoLocation
//
//  Created by Ishwarya Lakshmi on 8/20/16.
//  Copyright (c) 2016 StarTypo. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *latitude;
@property (weak, nonatomic) IBOutlet UILabel *longitude;
@property (weak, nonatomic) IBOutlet UILabel *altitude;
@property (weak, nonatomic) IBOutlet UILabel *speed;
@property (weak, nonatomic) CLLocationManager *locationManager;
@end


