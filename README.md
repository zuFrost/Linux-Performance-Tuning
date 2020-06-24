# Linux-Performance-Tuning
## 1.2 Timing techniques
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
Response Time. How long it takes to get a response. <br>
![ask.sh](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/ask.sh) ![ans.sh](https://github.com/zuFrost/Linux-Performance-Tuning/blob/master/ans.sh)<br>
\$ ./ask.sh <br>
ans=hi back to you, elapsed = 4 <br>
