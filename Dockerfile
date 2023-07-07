FROM centos:7
RUN yum -y update
#This command exposes a defined port for external traffic.
EXPOSE 5900

#These commands set global environmental variables. Another example would be setting your $PATH variable.
ENV LC_ALL=en_US.utf8
ENV LANG=en_US.utf8


#yum is a linux based package manager. The -y command simply says 'yes' to any prompts the yum command makes
RUN yum -y install python3
RUN yum -y install epel-release
RUN yum -y install python3-devel
RUN yum -y groupinstall 'Development tools'
RUN yum -y install autoconf automake cmake gcc gcc-c++ git make pkgconfig ninja-build alsa-lib-devel pulseaudio-libs-devel libX11-devel libXext-devel libXrandr-devel liXcursor-devel libXfixes-devel libXi-devel libXScrSaver-devel dbus-devel ibus-devel fcitx-devel systemd-devel mesa-libGL-devel libxkbcommon-devel-mesa-libGLES-devel libdrm-devel mesa-libgbm-devel libsamplerate-devel
RUN yum -y install gcc
RUN yum -y install yum-utils
RUN yum -y install python3-devel
RUN yum -y install mesa-libGLU-devel
RUN yum -y install mesa-libGL-devel
RUN yum -y install mesa-dri-drivers
RUN yum -y install mesa-libGLw-devel.x86_64
RUN yum -y install mesa-libGL-devel
RUN yum -y install -y mtdev
RUN yum -y install zlib
RUN yum -y install eog dbus-x11
RUN dbus-uuidgen > /var/lib/dbus/machine-id
RUN yum -y install tigervnc-server xorg-x11-fonts-Type1
RUN yum -y install Xvfb
RUN yum -y groupinstall 'GNOME Desktop'

RUN pip3.6 install --user Cython
RUN pip3.6 install --upgrade pip setuptools virtualenv
RUN pip3.6 install --user install docutils
RUN pip3.6 install --user pygments
RUN pip3.6 install --user kivy==2.0.0
RUN pip3.6 list
RUN mkdir -p /var/run/dbus
RUN mkdir /home/work
WORKDIR /home/work

COPY imageGen.py /home/work
COPY cmds.sh /home/work


RUN echo "=========="
RUN echo $LIBGL_ALWAYS_INDIRECT
RUN echo "=========="

CMD ["./cmds.sh"]