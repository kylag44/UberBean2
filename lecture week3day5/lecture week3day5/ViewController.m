//
//  ViewController.m
//  lecture week3day5
//
//  Created by Kyla  on 2018-08-17.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "ViewController.h"
@import CoreLocation;
@import MapKit;

@interface ViewController () <CLLocationManagerDelegate>
@property (nonatomic, strong) CLLocationManager *locMgr;

@property (weak, nonatomic) IBOutlet MKMapView *mapView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.locMgr = [[CLLocationManager alloc] init];
    self.locMgr.desiredAccuracy = kCLLocationAccuracyKilometer;
    self.locMgr.distanceFilter = kCLDistanceFilterNone;
    self.locMgr.delegate = self;
    
    [self.locMgr requestWhenInUseAuthorization];
    
    [self.locMgr stopUpdatingLocation];
}
/////make sure you add mapkit in the first file as well! where your name and eerything is !!!!!!



@end
