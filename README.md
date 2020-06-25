# ![Linux-Performance-Tuning](https://www.linkedin.com/learning/linux-performance-tuning?u=2113185) by ![Kevin Dankwardt](https://www.linkedin.com/in/kevindankwardt/?trk=lil_course) in LinkedIN Learning

## 1. Performance Overview
### 1.1 What do we mean by performance?

### 1.2 Timing techniques
![loop1.sh](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/loop1.sh) <br>
\$ time ./loop1.sh <br>
real    0m41.758s <br>
user    0m23.055s <br>
sys     0m17.396s <br>
50000 operations in 41.7 sec. => 1199 operations/sec <br>
 <br>
![loop2.sh](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/loop2.sh) <br>
13597 operations in 10 sec. => 1360 operations/sec <br> 
<br>
#### Response Time. How long it takes to get a response. <br>
![ask.sh](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/ask.sh) ![ans.sh](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/ans.sh)<br>
\$ ./ask.sh <br>
ans=hi back to you, elapsed = 4 <br>
#### The strace Command
\$ strace -c -o /tmp/s.out ./loop1.sh <br>
\$ head -4 /tmp/s.out <br>
![img](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/head%20-4.png) <br>
### 1.3 Timing techniques solution

### 1.4 The proc filesystem
$ sudo mount -t proc proc /proc <br>

### 1.5 Packages for performance
\$ gnome-system-monitor <br>
![gnome system monitor](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/gnome-system-monitor.png) <br>
#### sysstat 
cifsiostat; iostat; mpstat; mfsiostat-sysstat; pidstat; sar (system activity report) <br>
#### procps-ng
free; pmap; ps; slabtop; snice; tload; top; uptime; vmstat; watch; <br>
#### perf
\$ cd / <br>
\$ sudo perf record find / -xdev -name core>/dev/null 2>&1 <br>
\$ sudo perf report <br>
![perf report](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/perf%20report.png) <br>

### 1.6 Performance Co-Pilot and Tuna
#### Perfomance Co-Pilot (PCP) Setup
Install these packages: <br>
&#9679; pcp <br>
&#9679; pcp-gui <br>
&#9679; pcp-webjs <br>
&#9679; pcp-webapi <br>
&#9679; pcp-doc <br>
Review a basic introduction in section 1: <br>
&#9679; man pcpintro <br>
\$ sudo systemctl enable pmcd pmlogger <br>
\$ sudo systemctl start pmcd pmlogger <br>
#### PCP Extensions
##### Perfomance Metric Domain Agents (PMDAs)
apache; kvm; memcache; mysql; proc; systemd; weblog <br>
\$ sudo yum install pcp-pmda-systemd <br>
\$ cd /var/lib/pcp/pmdas/systemd <br>
#### Tuna
\$ pmstat <br>
![pmstat](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/pmstat.png) <br>
\$ pminfo | more <br>
\$ pminfo -T mem.util.dirty<br>
<br>
mem.util.dirty<br>
Help:<br>
Memory which is waiting to get written back to the disk<br>
\$ pmchart <br>
![pmchart](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/pmchart.png) <br>
\$ tuna <br>
![tuna](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/tuna.png) <br>

### 1.7 SystemTap and Berkeley Packet Filter
Install the systemtap-client package <br>
Example scripts located in
&#9679; /usr/share/systemtap/examples <br>

## 2 CPU Bottlenecks
### 2.1 top for CPU usage(Viewed)
\$ top <br>
![top](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/top.png) <br>

### 2.2 sar for CPU(Viewed)
System Activity Reporter (sar) <br>
![sar](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/sar.png) <br>
\$ sar -q 5 3 <br>
\$ sar -u 5 3 <br>
\$ sar -u ALL 5 3 <br>

### 2.3 /proc/cpuinfo(Viewed)
\$ more /proc/cpuinfo <br>
![/proc/cpuinfo](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/more%20_proc_cpuinfo.png) <br>
\$ sudo lshw - Linux Hardware Lister <br>
\$ lscpu <br>

### 2.4 Scheduling: nice, priorities, and process classes
Other; Batch; Idle; Real time <br>

### 2.5 Throughput vs. response time

### 2.6 The Linux kernel and responsiveness

## 3. Memory Bottlenecks
### 3.1 What is a memory leak?

### 3.2 /proc/meminfo, free, and swap space
\$ more /proc/meminfo <br>
![proc meminfo](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/proc%20meminfo.png) <br>
\$ free <br>
![free](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/free.png) <br>
\$ swapon -s <br>
![swapon](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/swapon.png) <br>
\$ sudo swapoff -a 

### 3.3 top and htop for memory usage
\$ top <br>
![top](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/top.png) <br>
\$ htop <br>
![top](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/htop.png) <br>

### 3.4 CPU caches and page caches
![diskcachw](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/diskcache.sh) <br>
$ sudo ./diskcache.sh <br> 
пример скорости работы с кешем и без него. 1 очистить кэш, 0 - не очишать кешь <br>

### 3.5 Page sizes and page faults

### 3.6 Challenge: Finding memory bottlenecks

### 3.7 Solution: Finding memory bottlenecks

## 4. Disk Bottlenecks
### 4.1 Hard disks and SSD behavior
### 4.2 sar and atop tools and disk utilization
####sar<br>
&#9679; B - paging statistic <br>
&#9679; b - I/O and transfer rate <br>
&#9679; d - activity for each block device <br>
&#9679; p - for device name instead of major/minor number<br>
\$ sudo sar -d 5 2 <br>
\$ sudo sar -dp 2 2 <br>
\$ sudo sar -B 2 2 <br>
\$ sudo sar -b 5 2 <br>

#### atop
\$ atop <br>
![atop](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/atop.png) <br>


### 4.3 Filesystem types and performance
![Linux filesystems](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/img/Linux%20filesystems.png) <br>
### 4.4 Challenge: Disk bottlenecks
### 4.5 Solution: Disk bottlenecks
## 5. Next steps
&#9679; PCP (Perfomance Co-Pilot) <br>
&#9679; BPF (Berkley Packet Filter) <br>
&#9679; sar <br>

