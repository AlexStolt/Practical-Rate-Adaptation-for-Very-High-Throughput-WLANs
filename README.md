# Practical Rate Adaptation for Very High Throughput WLANs
Implementation of [this](https://ieeexplore.ieee.org/document/6415107) paper in Ath9K Driver

### Patch Files
* **two_streams.patch**: Patch files for the suggested L3S algorithm implementation with two streams
* **three_streams.patch**: Patch files for our first implemented extention for three streams
* **hostap.patch**: Patch file of the access point configuration for the two cases mentioned above
* **sgi_three_streams.patch**: Patch files for our final implemented extention for additional SGI streams
* **sgi_hostap.patch**: Patch file of the access point configuration for the case mentioned above

### Code
* **original**: The original .c and .h files for Minstrel algorithm
* **two_streams**: The .c and .h files for the suggested L3S algorithm implementation with two streams
* **three_streams**: The .c and .h files for first implemented extention for three streams
* **sgi_three_streams**: The .c and .h files for our final implemented extention for additional SGI streams

### Scripts
* **utilities.sh**: Script containing basic utilities to automate compilation and excecution.


Example: The command ```./utilities STA 2 test``` creates a station at 192.168.2.2 and connects it to a station called "test". For more info just visit the script and notice where which parameter is used.
                           
### Report
**Wireless Communications.pdf**: Our final report including descriptions for basic and extended implementations

### Statistics 
* **statistics.xlsx**: Statistics from ```iperf``` are included in this Excel file. This file show the peak throughput that L3S and Minstrel achieve on the same channel.
