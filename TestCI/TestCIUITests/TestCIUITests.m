//
//  TestCIUITests.m
//  TestCIUITests
//
//  Created by sluin on 16/2/5.
//  Copyright © 2016年 SenseTime. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TestCIUITests : XCTestCase

@end

@implementation TestCIUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTapSecondVCWhenSwitchIsOffWillShowAlert
{
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.navigationBars[@"FirstViewController"].staticTexts[@"FirstViewController"] tap];
    [app.buttons[@"SecondVC"] tap];
    
    XCUIElement *warningAlert = app.alerts[@"warning"];
    [warningAlert.staticTexts[@"turn on the switch to push the next view controller"] tap];
    [warningAlert.collectionViews.buttons[@"取消"] tap];
}

- (void)testTapSecondVCWhenSwitchIsOnWillPushSecondVC
{
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *firstviewcontrollerStaticText = app.navigationBars[@"FirstViewController"].staticTexts[@"FirstViewController"];
    [firstviewcontrollerStaticText tap];
    [app.switches[@"0"] tap];
    [app.buttons[@"SecondVC"] tap];
    
    XCUIElement *secondviewcontrollerNavigationBar = app.navigationBars[@"SecondViewController"];
    [secondviewcontrollerNavigationBar.staticTexts[@"SecondViewController"] tap];
    [[[[secondviewcontrollerNavigationBar childrenMatchingType:XCUIElementTypeButton] matchingIdentifier:@"Back"] elementBoundByIndex:0] tap];
    [firstviewcontrollerStaticText tap];
}

- (void)testTapLabelInSecondVCTheNumberWillIncrease
{
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.navigationBars[@"FirstViewController"].staticTexts[@"FirstViewController"] tap];
    [app.switches[@"0"] tap];
    [app.buttons[@"SecondVC"] tap];
    [app.navigationBars[@"SecondViewController"].staticTexts[@"SecondViewController"] tap];
    [app.staticTexts[@"0"] tap];
    [app.staticTexts[@"1"] tap];
    [app.staticTexts[@"2"] tap];
    [app.staticTexts[@"3"] tap];
    [app.staticTexts[@"4"] tap];
}









@end
