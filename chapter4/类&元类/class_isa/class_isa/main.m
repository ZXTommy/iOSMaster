//
//  main.m
//  class_isa
//
//  Created by zx on 2021/8/4.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <objc/runtime.h>
#import "ZXPerson.h"

int main(int argc, char * argv[]) {
    
    
//    ZXPerson *zxp = [[ZXPerson alloc]init];
//    Class c1 = zxp.class;
//    Class c2 = [ZXPerson class];
//    NSLog(@"%p   ,  %p",c1,c2);
    
//    查看自定义对象的类和元类的内存值
    ZXPerson *zxp = [[ZXPerson alloc]init];
    Class Class_ZXPerson = object_getClass(zxp);  //object_getClass需要引入 <objc/runtime.h>;
    Class MateClass_ZXPerson = object_getClass(Class_ZXPerson);
    Class RootMateClass_ZXPerson = object_getClass(MateClass_ZXPerson);
    NSLog(@"\n ZXPerson = %p \n ZXPerson的元类 = %p \n ZXPerson的根元类 = %p  \n ",Class_ZXPerson,MateClass_ZXPerson,
           RootMateClass_ZXPerson);
    
//    查看自定义对象的类和元类的内存值
    ZXHuman *zxh = [[ZXHuman alloc]init];
    Class Class_ZXHuman = object_getClass(zxh);  //object_getClass需要引入 <objc/runtime.h>;
    Class MateClass_ZXHuman = object_getClass(Class_ZXHuman);
    Class RootMateClass_ZXHuman = object_getClass(MateClass_ZXHuman);
    NSLog(@"\n ZXHuman = %p \n ZXHuman的元类 = %p \n ZXHuman的根元类 = %p  \n ",Class_ZXHuman,MateClass_ZXHuman,
         RootMateClass_ZXHuman);
    
//    查看NSObject对象的类和元类的内存值
    NSObject *obj = [[NSObject alloc]init];
    Class Class_NSObject = object_getClass(obj);
    Class MateClass_NSObject = object_getClass(Class_NSObject);
    Class RootMateClass_NSObject = object_getClass(MateClass_NSObject);
    NSLog(@"\n NSObject = %p \n NSObject的元类 = %p \n NSObject的根元类 = %p  \n ",Class_NSObject,MateClass_NSObject,
          RootMateClass_NSObject);
    
    
    //查看自定义类的继承链条
    Class SuperClass1_ZXPerson = class_getSuperclass(ZXPerson.class);
    Class SuperClass2_ZXPerson = class_getSuperclass(SuperClass1_ZXPerson);
    Class SuperClass3_ZXPerson = class_getSuperclass(SuperClass2_ZXPerson);
    NSLog(@"\n ZXPerson父类 = %@ 地址：%p \n ZXPerson2级父类 =  %@ 地址：%p \n ZXPerson3父类 =  %@  地址：%p \n ",
          SuperClass1_ZXPerson,SuperClass1_ZXPerson,
          SuperClass2_ZXPerson,SuperClass2_ZXPerson,
          SuperClass3_ZXPerson,SuperClass3_ZXPerson);
        
    //查看自定义类的元类的继承链条
//    Class MateClass2_ZXPerson = object_getClass(ZXPerson.class);  //拿到ZXPerson的元类
    Class SuperClass1_MateClassZXPerson = class_getSuperclass(MateClass_ZXPerson);
    Class SuperClass2_MateClassZXPerson = class_getSuperclass(SuperClass1_MateClassZXPerson);
    Class SuperClass3_MateClassZXPerson = class_getSuperclass(SuperClass2_MateClassZXPerson);
    Class SuperClass4_MateClassZXPerson = class_getSuperclass(SuperClass3_MateClassZXPerson);
    NSLog(@"\n ZXPerson元类父类 = %@ 地址：%p  \n ZXPerson2级元类父类 =  %@ 地址：%p  \n ZXPerson3元类父类 =  %@  地址：%p \n ZXPerson4元类父类 =  %@  地址：%p \n",
          SuperClass1_MateClassZXPerson,SuperClass1_MateClassZXPerson,
          SuperClass2_MateClassZXPerson,SuperClass2_MateClassZXPerson,
          SuperClass3_MateClassZXPerson,SuperClass3_MateClassZXPerson,
          SuperClass4_MateClassZXPerson,SuperClass4_MateClassZXPerson);
    
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
