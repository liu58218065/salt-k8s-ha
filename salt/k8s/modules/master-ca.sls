# -*- coding: utf-8 -*-
#******************************************
# Author:       iokubernetes
# Email:        yang-li@live.cn
# Organization: iokubernetes.github.io
# Description:  Kubernetes Ca
#******************************************

include:
  - modules.cfssl

ca-config:
  cmd.run:
    - name: cd /srv/salt/k8s/files/cfssl-1.2/ && /opt/kubernetes/bin/cfssl gencert -initca ca-csr.json | /opt/kubernetes/bin/cfssljson -bare ca
    - unless: test -f /srv/salt/k8s/files/cfssl-1.2/ca.pem
