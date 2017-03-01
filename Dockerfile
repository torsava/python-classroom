FROM fedora:rawhide
LABEL MAINTAINER "Miro Hroncok <mhroncok@redhat.com>, Tomas Orsava <torsava@redhat.com>"

ENV NAME=python-classroom VERSION=0.1 RELEASE=1 ARCH=
LABEL BZComponent="$NAME" \
      Name="$FGC/$NAME" \
      Version="$VERSION" \
      Release="$RELEASE.$DISTTAG" \
      Architecture="$ARCH" \
      Summary="Ready to use container for teaching and learning Python" \

RUN dnf -y --setopt=tsflags=nodocs --setopt=install_weak_deps=false \
    install @python-classroom && dnf clean all

CMD ["/bin/bash"]
