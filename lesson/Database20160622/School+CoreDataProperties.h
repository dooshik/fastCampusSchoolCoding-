//
//  School+CoreDataProperties.h
//  Database20160622
//
//  Created by User on 2016. 6. 22..
//  Copyright © 2016년 Shin. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "School.h"

NS_ASSUME_NONNULL_BEGIN

@interface School (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSSet<Student *> *students;

@end

@interface School (CoreDataGeneratedAccessors)

- (void)addStudentsObject:(Student *)value;
- (void)removeStudentsObject:(Student *)value;
- (void)addStudents:(NSSet<Student *> *)values;
- (void)removeStudents:(NSSet<Student *> *)values;

@end

NS_ASSUME_NONNULL_END
