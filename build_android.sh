NDK_PATH=${ANDROID_NDK}
SWIFT_PATH=/home/eki/Project/swift-project/toolchain/5.9/usr/bin
SWIFT_TOOLCHAIN_PATH=/home/eki/Project/swift-project/toolchain
utils/build-script \
    -R \
    --android \
    --android-ndk $NDK_PATH \
    --android-arch aarch64 \
    --android-api-level 23 \
    --stdlib-deployment-targets=android-aarch64 \
    --native-swift-tools-path=$SWIFT_PATH \
    --native-clang-tools-path=$SWIFT_PATH \
    --build-swift-tools=0 \
    --build-llvm=0 \
    --skip-build-cmark \
    --reconfigure 
    
#--installable-package "${SWIFT_TOOLCHAIN_PATH}/swift-android-ndk-aarch64.tar.gz"
#--install-prefix "${SWIFT_TOOLCHAIN_PATH}/swift-android-ndk-aarch64-install" \
#--install-destdir "${SWIFT_TOOLCHAIN_PATH}/swift-android-ndk-aarch64-sdk" \


