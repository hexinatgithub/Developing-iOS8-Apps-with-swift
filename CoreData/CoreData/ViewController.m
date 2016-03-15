//
//  ViewController.m
//  CoreData
//
//  Created by 何鑫 on 16/3/5.
//  Copyright © 2016年 HX.Inc. All rights reserved.
//

#import "ViewController.h"
#import <CoreData/CoreData.h>
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSURL *documentsDirectory = [[fileManager URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    NSString *documentName = @"MyDocument";
    NSURL *url = [documentsDirectory URLByAppendingPathComponent:documentName];
    UIManagedDocument *document = [[UIManagedDocument alloc] initWithFileURL:url];
    self.document = document;
    if ([[NSFileManager defaultManager] fileExistsAtPath:[url path]]) {
        [document openWithCompletionHandler:^(BOOL success) {
            NSLog(@"success = %d, state = %lu", success, (unsigned long)document.documentState);
            [self documentIsReady];
        }];
    } else {
        [document saveToURL:url forSaveOperation:UIDocumentSaveForCreating completionHandler:^(BOOL success) {
//            [document openWithCompletionHandler:^(BOOL success) {
                [self documentIsReady];
//            }];
        }];
    }
}

-(void)documentIsReady {
    NSLog(@"%lu", (unsigned long)self.document.documentState);
    if (self.document.documentState == UIDocumentStateNormal) {
        NSManagedObjectContext *content = self.document.managedObjectContext;
        Person *person1 = [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:content];
        person1.name = @"hehe";
        Person *person2 = [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:content];
        person2.name = @"hehe2";
        if ([content save:nil]) {
            NSLog(@"Save");
        } else {
            NSLog(@"fail");
        }
    }
}

-(void)query {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Person"];
    request.fetchBatchSize = 10;
    request.fetchLimit = 20;
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    request.sortDescriptors = @[sortDescriptor];
    request.predicate = nil;
    NSArray *persons = [self.document.managedObjectContext executeFetchRequest:request error:nil];
    for (Person *person in persons) {
        NSLog(person.name);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    [self query];
}

@end
