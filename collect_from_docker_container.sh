set -ex && mkdir -p ./build/release/bin
set -ex && docker create --name beldex-gui-container beldex-gui-image
set -ex && docker cp beldex-gui-container:/src/build/release/bin/ ./build/release/
set -ex && docker rm beldex-gui-container
