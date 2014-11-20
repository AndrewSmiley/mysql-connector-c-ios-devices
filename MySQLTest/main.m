//
//  main.m
//  MySQLTest
//
//  Created by Andrew Smiley on 11/19/14.
//  Copyright (c) 2014 Andrew Smiley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <stdio.h>
#import "mysql.h"

int main(int argc, char * argv[]) {
    MYSQL conn;
    
    MYSQL_RES *res;
    MYSQL_ROW row;
    char *server = "hostname";
    char *user = "user";
    char *password = "pass"; /* set me first */
    char *database = "db";
    mysql_init(&conn);
    /* Connect to database */
    if (!mysql_real_connect(&conn, server,
                            user, password, NULL, 3306, NULL, 0)) {
        NSLog(@"We're not connected");
        NSLog([NSString stringWithFormat:@" ERROR CODE %u: %s", mysql_errno(&conn),mysql_error(&conn) ]);
//                NSLog([NSString stringWithFormat:@" ERROR CODE %u: %s", mysql_errno(my),mysql_error(conn) ]);
    }else{
        NSLog(@"We must have clicked..");
    }
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
