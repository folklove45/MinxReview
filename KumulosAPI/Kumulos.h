//
//  Kumulos.h
//  Kumulos
//
//  Created by Kumulos Bindings Compiler on May 22, 2016
//

#import <Foundation/Foundation.h>
#import "libKumulos.h"


@class Kumulos;
@protocol KumulosDelegate <kumulosProxyDelegate>
@optional

 
- (void) kumulosAPI:(Kumulos*)kumulos apiOperation:(KSAPIOperation*)operation createPhotosDidCompleteWithResult:(NSNumber*)newRecordID;
 
- (void) kumulosAPI:(Kumulos*)kumulos apiOperation:(KSAPIOperation*)operation deletePhotosDidCompleteWithResult:(NSNumber*)affectedRows;
 
- (void) kumulosAPI:(Kumulos*)kumulos apiOperation:(KSAPIOperation*)operation selectPhotosDidCompleteWithResult:(NSArray*)theResults;
 
- (void) kumulosAPI:(Kumulos*)kumulos apiOperation:(KSAPIOperation*)operation updatePhotosDidCompleteWithResult:(NSNumber*)affectedRows;
 
- (void) kumulosAPI:(Kumulos*)kumulos apiOperation:(KSAPIOperation*)operation createPostDidCompleteWithResult:(NSNumber*)newRecordID;
 
- (void) kumulosAPI:(Kumulos*)kumulos apiOperation:(KSAPIOperation*)operation deletePostsDidCompleteWithResult:(NSNumber*)affectedRows;
 
- (void) kumulosAPI:(Kumulos*)kumulos apiOperation:(KSAPIOperation*)operation selectPostsDidCompleteWithResult:(NSArray*)theResults;
 
- (void) kumulosAPI:(Kumulos*)kumulos apiOperation:(KSAPIOperation*)operation updatePostsDidCompleteWithResult:(NSNumber*)affectedRows;
 
- (void) kumulosAPI:(Kumulos*)kumulos apiOperation:(KSAPIOperation*)operation createUserDidCompleteWithResult:(NSNumber*)newRecordID;
 
- (void) kumulosAPI:(Kumulos*)kumulos apiOperation:(KSAPIOperation*)operation deleteUserDidCompleteWithResult:(NSNumber*)affectedRows;
 
- (void) kumulosAPI:(Kumulos*)kumulos apiOperation:(KSAPIOperation*)operation selectUserDidCompleteWithResult:(NSArray*)theResults;
 
- (void) kumulosAPI:(Kumulos*)kumulos apiOperation:(KSAPIOperation*)operation updateUserDidCompleteWithResult:(NSNumber*)affectedRows;

@end

@interface Kumulos : kumulosProxy {
    NSString* theAPIKey;
    NSString* theSecretKey;
}

-(Kumulos*)init;
-(Kumulos*)initWithAPIKey:(NSString*)APIKey andSecretKey:(NSString*)secretKey;

   
-(KSAPIOperation*) createPhotosWithImageData:(NSData*)imageData;
    
   
-(KSAPIOperation*) deletePhotosWithImageData:(NSData*)imageData;
    
   
-(KSAPIOperation*) selectPhotosWithImageData:(NSData*)imageData;
    
   
-(KSAPIOperation*) updatePhotosWithImageData:(NSData*)imageData;
    
   
-(KSAPIOperation*) createPostWithPostname:(NSString*)postname andDescription:(NSString*)description andImageData:(NSData*)imageData andPostOwner:(NSUInteger)postOwner;
    
   
-(KSAPIOperation*) deletePostsWithPostname:(NSString*)postname andDescription:(NSString*)description;
    
   
-(KSAPIOperation*) selectPostsWithPostname:(NSString*)postname andDescription:(NSString*)description andPostOwner:(NSUInteger)postOwner;
    
   
-(KSAPIOperation*) updatePostsWithPostname:(NSString*)postname andDescription:(NSString*)description;
    
   
-(KSAPIOperation*) createUserWithUsername:(NSString*)username andPassword:(NSString*)password andEmail:(NSString*)email;
    
   
-(KSAPIOperation*) deleteUserWithUsername:(NSString*)username andPassword:(NSString*)password andEmail:(NSString*)email;
    
   
-(KSAPIOperation*) selectUserWithUsername:(NSString*)username andPassword:(NSString*)password;
    
   
-(KSAPIOperation*) updateUserWithUsername:(NSString*)username andPassword:(NSString*)password;
    
            
@end