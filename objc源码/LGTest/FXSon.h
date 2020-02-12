//
//  FXSon.h
//  LGTest
//
//  Created by mac on 2020/2/3.
//

#import "FXFather.h"

NS_ASSUME_NONNULL_BEGIN

@interface FXSon : FXFather

- (void)doInstanceBySon;
+ (void)doClassBySon;

- (void)doInstanceNoImplementation;
+ (void)doClassNoImplementation;

@end

NS_ASSUME_NONNULL_END
