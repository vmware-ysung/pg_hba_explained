[ipa]
%{ for index,ip in myipa ~}
myipa ansible_host=${ip}
%{ endfor ~}
[masters]
%{ for index,ip in master ~}
master-${index+1} ansible_host=${ip}
%{ endfor ~}
[clients]
%{ for ip in client ~}
client ansible_host=${ip}
%{ endfor ~}