TAG="localhost/test1234:`readlink result | awk -F '/' '{print $4}' | awk -F '-' '{print $1}'`"

# get generated name, and remove that image 
set -x
podman rmi -f "$TAG";
set +x
# podman rmi 

# remove old link to build image tar
rm result;

nix-build ./c.nix ;
podman load -i ./result;

# set TAG with new result
TAG="localhost/test1234:`readlink result | awk -F '/' '{print $4}' | awk -F '-' '{print $1}'`"

# run new image, with generated name
podman run "$TAG";
# podman run test123;

