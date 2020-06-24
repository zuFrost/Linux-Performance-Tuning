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

