#!/bin/bash

#  File name: install.sh
#  Date:      2013/10/14
#  Author:    xgao@redhat.com


# install the required packages
rpm='python python-kerberos krb5-workstation'
for i in $rpm
do
    if  test -z `rpm -qa $i`
    then
        echo "install $i ..."
        yum -y install $i
    else
        echo "$i exist"
    fi
done

# config tcms.conf
echo "config tcms.conf ..."
robotfile="/etc/tcms.conf"
cp /robotx/tcms.conf $robotfile

# config krb5
echo "config krb5 ..."
krbfile="/etc/krb5.conf"
echo "copy krb5.conf to /etc"
cp /robotx/krb5.conf $krbfile

# install nitrate.py
echo "install nitrate ..."
pythonpath=`python -c "from distutils.sysconfig import get_python_lib;\
                        print get_python_lib()"`
nitratefile="robotx/nitrate.py"
nitrate=${pythonpath}/${nitratefile}
if [ -f "$nitrate" ]
then
    echo "nitrate already installed"
else
    cp $nitratefile $pythonpath
fi

# install robotx
pip install robotx

echo "Done"
