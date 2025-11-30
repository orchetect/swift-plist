# Property List Formats

Property list files can be encoded in different data formats.

## Overview

`PList` can save in either `.xml` or `.binary` format.

> Apple's Property List Documentation
>
> "The static representation of a property list, which is used for storage, can be either XML or binary data. (The binary version is a more compact form of the XML property list.) In XML, each type is represented by a certain element."

## References

- [Apple's Property List Documentation](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/PropertyLists/AboutPropertyLists/AboutPropertyLists.html)

## Topics

### Format

- ``PListFormat``

### PList save

- ``PListProtocol/save(toFileAtPath:format:)``
- ``PListProtocol/save(toFileAtURL:format:)``
