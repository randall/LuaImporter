
#import <Foundation/Foundation.h>


Boolean GetMetadataForFile(void* thisInterface, 
			   CFMutableDictionaryRef cfAttributes,
			   CFStringRef contentTypeUTI,
			   CFStringRef pathToFile)

{
    Boolean ok = TRUE;

    @autoreleasepool {
        NSData *data = [NSData dataWithContentsOfFile:(__bridge NSString *)pathToFile];

        NSMutableDictionary *attributes = (__bridge NSMutableDictionary *)cfAttributes;
        [attributes setObject:[NSString stringWithUTF8String:[data bytes]] forKey:(id)kMDItemTextContent];

    }
    return ok;
}
