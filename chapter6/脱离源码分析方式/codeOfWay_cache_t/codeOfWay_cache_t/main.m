//
//  main.m
//  codeOfWay_cache_t
//
//  Created by zx on 2022/3/9.
//

#import <Foundation/Foundation.h>
#import "ZXPerson.h"

//简化后---------------------

typedef uint32_t zx_mask_t;  // x86_64 & arm64 asm are less efficient with 16-bits

struct zx_bucket_t {
    SEL _sel;
    IMP _imp;
};

struct zx_cache_t {
    //uintptr_t _bucketsAndMaybeMask;   //uintptr_t类型无符号存放指针地址，所以占8字节  源码中通过此变量来获取buckets
    struct zx_bucket_t *_buckets;     //这里我们直接用zx_bucket_t来进行对应
    zx_mask_t    _maybeMask;       //实际是uint32_t类型占4字节
    uint16_t  _flags;           //占2字节
    uint16_t  _occupied;        //占2字节
};

struct zx_class_data_bits_t {
    // Values are the FAST_ flags above.
    uintptr_t bits;
};

struct zx_objc_class {
    Class ISA;                  //这里需要注意【类型转换的时候是一一对应的，所以需要加上源码从objc_object继承过来的ISA】
    Class superclass;
    struct zx_cache_t cache;             // formerly cache pointer and vtable
    struct zx_class_data_bits_t bits;    // class_rw_t * plus custom rr/alloc flags
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        ZXPerson *zxp = [ZXPerson alloc];
        Class zxClass = [zxp class];
//        [zxClass eat];
        [zxp drink];
        [zxp drink2];
        [zxp drink3];
        [zxp drink4];
        [zxp drink5];
        
        struct zx_objc_class *zx_class_stc = (__bridge struct zx_objc_class *)(zxClass);
        NSLog(@"%hu %u",zx_class_stc->cache._occupied,zx_class_stc->cache._maybeMask);
        
        for (zx_mask_t i = 0; i<zx_class_stc->cache._maybeMask; i++) {
            struct zx_bucket_t item = zx_class_stc->cache._buckets[i];
            NSLog(@"%@  ---  %p",NSStringFromSelector(item._sel) ,item._imp);
        }
        
        NSLog(@"--------");
    }
    return 0;
}
