dd if=/dev/zero of=bigfile bs=1M count=4000
time sync
#time grep x bigfile
time dd if=bigfile bs=4k of=/dev/null
echo Enter 0 or 1 to drop caches
read line
if [ $line -eq 1 ]
then
    echo 3 > /proc/sys/vm/drop_caches
fi
time dd if=bigfile bs=4k of=/dev/null
#time grep x bigfile
