//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/content/internal/LocalPhoto.java
//

#ifndef _ImActorModelEntityContentInternalLocalPhoto_H_
#define _ImActorModelEntityContentInternalLocalPhoto_H_

#include "J2ObjC_header.h"
#include "im/actor/model/entity/content/internal/LocalDocument.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelEntityContentInternalLocalFastThumb;

@interface ImActorModelEntityContentInternalLocalPhoto : ImActorModelEntityContentInternalLocalDocument

#pragma mark Public

- (instancetype)initWithBSBserValues:(BSBserValues *)values;

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithNSString:(NSString *)fileName
                    withNSString:(NSString *)fileDescriptor
                         withInt:(jint)fileSize
                    withNSString:(NSString *)mimeType
withImActorModelEntityContentInternalLocalFastThumb:(ImActorModelEntityContentInternalLocalFastThumb *)fastThumb
                         withInt:(jint)w
                         withInt:(jint)h;

- (jint)getH;

- (jint)getW;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelEntityContentInternalLocalPhoto)

FOUNDATION_EXPORT void ImActorModelEntityContentInternalLocalPhoto_initWithNSString_withNSString_withInt_withNSString_withImActorModelEntityContentInternalLocalFastThumb_withInt_withInt_(ImActorModelEntityContentInternalLocalPhoto *self, NSString *fileName, NSString *fileDescriptor, jint fileSize, NSString *mimeType, ImActorModelEntityContentInternalLocalFastThumb *fastThumb, jint w, jint h);

FOUNDATION_EXPORT ImActorModelEntityContentInternalLocalPhoto *new_ImActorModelEntityContentInternalLocalPhoto_initWithNSString_withNSString_withInt_withNSString_withImActorModelEntityContentInternalLocalFastThumb_withInt_withInt_(NSString *fileName, NSString *fileDescriptor, jint fileSize, NSString *mimeType, ImActorModelEntityContentInternalLocalFastThumb *fastThumb, jint w, jint h) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelEntityContentInternalLocalPhoto_initWithByteArray_(ImActorModelEntityContentInternalLocalPhoto *self, IOSByteArray *data);

FOUNDATION_EXPORT ImActorModelEntityContentInternalLocalPhoto *new_ImActorModelEntityContentInternalLocalPhoto_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelEntityContentInternalLocalPhoto_initWithBSBserValues_(ImActorModelEntityContentInternalLocalPhoto *self, BSBserValues *values);

FOUNDATION_EXPORT ImActorModelEntityContentInternalLocalPhoto *new_ImActorModelEntityContentInternalLocalPhoto_initWithBSBserValues_(BSBserValues *values) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelEntityContentInternalLocalPhoto)

#endif // _ImActorModelEntityContentInternalLocalPhoto_H_
