//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/messages/MessageDeleteActor.java
//

#ifndef _ImActorModelModulesMessagesMessageDeleteActor_H_
#define _ImActorModelModulesMessagesMessageDeleteActor_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

@class AMPeer;
@class IOSLongArray;
@class ImActorModelModulesModules;
@protocol JavaUtilList;

@interface ImActorModelModulesMessagesMessageDeleteActor : ImActorModelModulesUtilsModuleActor

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (void)onDeleteMessageWithAMPeer:(AMPeer *)peer
                 withJavaUtilList:(id<JavaUtilList>)rids;

- (void)onReceiveWithId:(id)message;

- (void)performDeleteWithAMPeer:(AMPeer *)peer
               withJavaUtilList:(id<JavaUtilList>)rids;

- (void)preStart;

#pragma mark Package-Private

- (void)saveStorage;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesMessageDeleteActor)

FOUNDATION_EXPORT void ImActorModelModulesMessagesMessageDeleteActor_initWithImActorModelModulesModules_(ImActorModelModulesMessagesMessageDeleteActor *self, ImActorModelModulesModules *modules);

FOUNDATION_EXPORT ImActorModelModulesMessagesMessageDeleteActor *new_ImActorModelModulesMessagesMessageDeleteActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesMessageDeleteActor)

@interface ImActorModelModulesMessagesMessageDeleteActor_DeleteMessage : NSObject

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
                 withLongArray:(IOSLongArray *)rids;

- (AMPeer *)getPeer;

- (IOSLongArray *)getRids;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesMessageDeleteActor_DeleteMessage)

FOUNDATION_EXPORT void ImActorModelModulesMessagesMessageDeleteActor_DeleteMessage_initWithAMPeer_withLongArray_(ImActorModelModulesMessagesMessageDeleteActor_DeleteMessage *self, AMPeer *peer, IOSLongArray *rids);

FOUNDATION_EXPORT ImActorModelModulesMessagesMessageDeleteActor_DeleteMessage *new_ImActorModelModulesMessagesMessageDeleteActor_DeleteMessage_initWithAMPeer_withLongArray_(AMPeer *peer, IOSLongArray *rids) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesMessageDeleteActor_DeleteMessage)

#endif // _ImActorModelModulesMessagesMessageDeleteActor_H_
