Practical Rate Adaptation for
Very High Throughput WLANs

*********** [Submission Files] ***********

1. patch_files
* [two_streams.patch]:       Patch files for the suggested L3S algorithm implementation with two streams
* [three_streams.patch]:     Patch files for our first implemented extention for three streams
* [hostap.patch]:            Patch file of the access point configuration for the two cases mentioned above
* [sgi_three_streams.patch]: Patch files for our final implemented extention for additional SGI streams
* [sgi_hostap.patch]:        Patch file of the access point configuration for the case mentioned above

2. code
* [original]:          The original .c and .h files for Minstrel algorithm
* [two_streams]:       The .c and .h files for the suggested L3S algorithm implementation with two streams
* [three_streams]:     The .c and .h files for first implemented extention for three streams
* [sgi_three_streams]: The .c and .h files for our final implemented extention for additional SGI streams

3. scripts
* [utilities.sh]: Script containing basic utilities to automate compilation and excecution.
                  Example: The command "./utilities STA 2 test" creates a station at 192.168.2.2
                           and connects it to a station called "test".
                           For more info just visit the script and notice where which parameter is used.
                           
4. Wireless Communications.pdf: Our final report including descriptions for basic and extended implementations

5. statistics.xlsx: Statistics from "iperf" are included in this Excel file. This file show the 
                      peak throughput that L3S and Minstrel achieve on the same channel.



* Note: The iperf files are not included as text files since their results are into the Excel files and the final report. 
        In case the iperf files are needed send us an email at stalexandros@uth.gr or lstergios@uth.gr or nkoutsoukis@uth.gr 
        and we will send them as soon as possible. 
