#!/bin/bash

echo "###"
echo "### configure-user-access.sh ### "
echo "###"

NOW=$(date +"%Y%m%d-%H%M%S")

echo "### Backup original /home/vagrant/.ssh/authorized_keys"
cp /home/vagrant/.ssh/authorized_keys /home/vagrant/.ssh/authorized_keys.$NOW.bak
chown vagrant:vagrant /home/vagrant/.ssh/authorized_keys.$NOW.bak

echo "### Add public key"
echo "> Add public key for arif"
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCc/JpeqhJWZIPjqakdjLu2PcuS/aEV8RYHeJj+R4q+nIHYNVMiC8f7y2oeWSgHebrUFqoRG9Le0GNf0TXtSIafjNPNCvOvLhZX+ghNozFJ47OUfjeGGv26al+bF2tzS9ETqmmFI7gTTGrP5j+D9BG3k6RMrWHSU+3oSFJxnthMeCqa7SWPxmLZ94cUF3HYhXE8P/Bfw7bkyMY8SC1zA9o2vag2qdoKFJN3LE4KxRX3MTG6H4gfVy5z8o+4taF3W/hspcmRxOUN7YDwh+Q2CPDLDkqXheqQePXaGAdqmwf0atdI4hjA7kvqcQeGIgRRg36luUVonivJc3Ht7wnlup/t arif" >> /home/vagrant/.ssh/authorized_keys

echo "> Add public key for mia"
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAsS3TR9XJhPEwMlWyHKFiXrbsGtkEdty3ixg9qZ5I0RJPu+1uCOJqdJTLsjUE7x6i0JMQtO+tZsOwRj2LqmFgJGlI1/4xTu5W/74YltPtOvMYg4B+1u5rJYRmcM349ILiJqeA/IZPgfkOipttpRoF7FKX55NMx4Zjc8KMaJP/8owjvkxWXNzkmaefq7FKKrxtTSlvTuiTAfFexfyRMfqh2MMlCMxrknusCU6VJO/sx7rK04vvIF0jDx+Jrgk36Qm5XzRXOGnW3NBjXUMgchDIvELwHO858uxELLjYfxH3XxUjPuf7/6ZOeMI33HCPIC88WbmeOkR+k+nI7qyL79gkFw== mia" >> /home/vagrant/.ssh/authorized_keys