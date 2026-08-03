#! /bin/sh

echo "
$(sed -n 's/^PRETTY_NAME="//p' /etc/os-release | cut -f1 -d'"' | tr '[:upper:]' '[:lower:]')
$(uname -r)
$(uptime -p | sed "s/up //")
$(expac -Q "%n" | wc -l) packages
$(df -h / --output=used,size | awk 'NR==2 {print $1 "/" $2}')"
