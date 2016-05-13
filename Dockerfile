FROM ubuntu

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install python-setuptools
RUN apt-get -y install build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev
RUN apt-get -y install libpq-dev python-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev
RUN apt-get -y install python3-dev
RUN apt-get -y install libffi-dev
RUN apt-get -y install python-numpy libicu-dev
RUN apt-get -y install python3-pip
RUN apt-get -y install lib32ncurses5-dev
RUN apt-get -y install libjpeg8-dev
RUN apt-get -y install git
ADD ./playground /ms-poc
WORKDIR /ms-poc
RUN pip3 install -U pip
RUN pip3 install -r requirements.txt
EXPOSE 8000
CMD python3 manage.py runserver 0.0.0.0:8000
