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
apache; kvm; memcache; mysql; proc; systemd; weblog



