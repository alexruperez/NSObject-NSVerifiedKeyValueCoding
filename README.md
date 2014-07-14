NSObject+NSVerifiedKeyValueCoding
================

In some cases, when you download a JSON object from an API, some field is null or empty, and you check:
```objective-c
if ([JSON valueForKeyPath:aKey]) ...
```
it returns a NSNull object instead nil, thus a non-null object which pass the "if" checking but it's really nothing,
with this method you'll not have more NSNull shit anymore.

```objective-c
- (id)verifiedValueForKeyPath:(id)aKey;
```

Also check [NSDictionary+Verified](https://github.com/alexruperez/NSDictionary-Verified)!

Also check [NSArray+Verified](https://github.com/alexruperez/NSArray-Verified)!
