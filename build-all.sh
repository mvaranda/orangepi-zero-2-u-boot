
echo "*********************************************"
echo "*                                           *"
echo "*              Build Armbian                *"
echo "*                                           *"
echo "*********************************************"


pushd ./armbian-build
#./compile.sh BOARD=orangepizero2 BRANCH=current RELEASE=jammy
# Ubuntu is offline as it fails to fetch: https://packages.ubuntu.com/jammy-updates/arm64/base-files/download

#./compile.sh BOARD=orangepizero2 BRANCH=current RELEASE=focal EXPERT=yes

# Note: jammy does not work as ubuntu repo is not always online... using bullseye
#       However, fails if I try to have desktop manager... need to select console
./compile.sh BOARD=orangepizero2 BRANCH=current RELEASE=bullseye EXPERT=yes

popd
