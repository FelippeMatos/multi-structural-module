while getopts p:s: flag
do
    case "${flag}" in
        p) PROJECT=${OPTARG};;
        s) SCHEME=${OPTARG};;
    esac
done


ARCHIVE_iOS_FILENAME=$SCHEME-iOS.xcarchive
ARCHIVE_SIMULATOR_FILENAME=$SCHEME-simulator.xcarchive
XCFRAMEWORK_FILENAME=$SCHEME.xcframework

rm -f archives/$ARCHVE_iOS_FILENAME
rm -f archives/$ARCHIVE_SIMULATOR_FILENAME
rm -rf build/$XCFRAMEWORK_FILENAME

xcodebuild archive \
  -project $PROJECT \
  -scheme $SCHEME \
  -sdk iphoneos \
  -archivePath "archives/$ARCHIVE_iOS_FILENAME" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO
  
xcodebuild archive \
  -project $PROJECT \
  -scheme $SCHEME \
  -sdk iphonesimulator \
  -archivePath "archives/$ARCHIVE_SIMULATOR_FILENAME" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO

xcodebuild -create-xcframework \
    -framework archives/$ARCHIVE_iOS_FILENAME/Products/Library/Frameworks/$SCHEME.framework \
   -framework archives/$ARCHIVE_SIMULATOR_FILENAME/Products/Library/Frameworks/$SCHEME.framework \
  -output build/$XCFRAMEWORK_FILENAME
