//
//  ZXCar.h
//  ZXObjcBuild
//
//  Created by zx on 2021/10/9.
//

#import <Foundation/Foundation.h>
#import "ZXEngine.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZXCar : NSObject
{
    NSString    *name;
    ZXEngine    *engine;
}
@property (nonatomic,strong) NSString *height;
@property (nonatomic,strong) NSString *width;
@end


NS_ASSUME_NONNULL_END
