# Example Results

## SMB with Azure Premium Storage Account 100TiB Max

```bash
randwrite: (g=0): rw=randwrite, bs=(R) 4096B-4096B, (W) 4096B-4096B, (T) 4096B-4096B, ioengine=libaio, iodepth=32
fio-3.16
Starting 1 process
randwrite: Laying out IO file (1 file / 1024MiB)
Jobs: 1 (f=1): [f(1)][-.-%][eta 00m:00s]                          
randwrite: (groupid=0, jobs=1): err= 0: pid=65442: Wed Jun 26 20:27:43 2024
  write: IOPS=98.1k, BW=383MiB/s (402MB/s)(1024MiB/2673msec); 0 zone resets
    slat (usec): min=3, max=22015, avg= 8.34, stdev=185.57
    clat (usec): min=2, max=22326, avg=316.79, stdev=1112.58
     lat (usec): min=6, max=22332, avg=325.24, stdev=1127.84
    clat percentiles (usec):
     |  1.00th=[  139],  5.00th=[  139], 10.00th=[  141], 20.00th=[  143],
     | 30.00th=[  178], 40.00th=[  184], 50.00th=[  188], 60.00th=[  192],
     | 70.00th=[  198], 80.00th=[  206], 90.00th=[  249], 95.00th=[  293],
     | 99.00th=[ 7046], 99.50th=[ 9896], 99.90th=[13960], 99.95th=[15926],
     | 99.99th=[22152]
   bw (  KiB/s): min=189767, max=726946, per=100.00%, avg=403602.80, stdev=221867.05, samples=5
   iops        : min=47441, max=181736, avg=100900.40, stdev=55466.74, samples=5
  lat (usec)   : 4=0.01%, 10=0.01%, 20=0.01%, 50=0.01%, 100=0.01%
  lat (usec)   : 250=90.21%, 500=7.59%, 750=0.36%, 1000=0.13%
  lat (msec)   : 2=0.21%, 4=0.19%, 10=0.81%, 20=0.47%, 50=0.02%
  cpu          : usr=9.32%, sys=49.10%, ctx=1226, majf=0, minf=10
  IO depths    : 1=0.1%, 2=0.1%, 4=0.1%, 8=0.1%, 16=0.1%, 32=100.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.1%, 64=0.0%, >=64=0.0%
     issued rwts: total=0,262144,0,0 short=0,0,0,0 dropped=0,0,0,0
     latency   : target=0, window=0, percentile=100.00%, depth=32

Run status group 0 (all jobs):
  WRITE: bw=383MiB/s (402MB/s), 383MiB/s-383MiB/s (402MB/s-402MB/s), io=1024MiB (1074MB), run=2673-2673msec
```

## ADFS Results

```bash
randwrite: (g=0): rw=randwrite, bs=(R) 4096B-4096B, (K) 4096B-4096B, (T) 4096B-4096B, ioengine=libaio, iodepth=32
fio-3.16
Starting 1 process
randwrite: Laying out IO file (1 file / 1024MiB)
Jobs: 1 (f=1): [f(1)][-.-%][eta 00m:00s]                          
randwrite: (groupid=0, jobs=1): err= 0: pid=90609: Wed Jun 26 21:31:49 2024
    write: IOPS=18.3k, BW=71.5MiB/s (75.0MB/s)(1024MiB/14313msec); 0 zone resets
        slat (usec): min=21, max=29355, avg=51.84, stdev=261.05
        clat (usec): min=3, max=97190, avg=1693.89, stdev=2722.71
         lat (usec): min=36, max=97546, avg=1745.96, stdev=2789.05
        clat percentiles (usec):
         |  1.00th=[  807],  5.00th=[  881], 10.00th=[ 9881], 20.00th=[ 1090],
         | 30.00th=[ 1139], 40.00th=[ 1205], 50.00th=[ 1237], 60.00th=[ 1270],
         | 70.00th=[ 1287], 80.00th=[ 1369], 90.00th=[ 2278], 95.00th=[ 3851],
         | 99.00th=[ 9765], 99.50th=[15664], 99.90th=[38011], 99.95th=[51643],
         | 99.99th=[83362]
     bw (  KiB/s): min= 8656, max=109397, per=99.288%, avg=72734.93, stdev=33251.36, samples=28
     iops        : min= 2164, max=27349, avg=18183.64, stdev=8312.81, samples=28
    lat (usec)   : 4=0.01%, 10=0.01%, 20=0.01%, 50=0.01%, 100=0.01%
    lat (usec)   : 250=0.01%, 500=0.018%, 750=0.018%, 1000=10.728%
    lat (msec)   : 2=77.378%, 4=7.278%, 10=3.65%, 20=0.638%, 50=0.308%
    lat (msec)   : 100=0.058%
    cpu          : usr=4.77%, sys=23.288%, ctx=270423, majf=0, minf=10
    IO depths    : 1=0.18%, 2=0.18%, 4=0.18%, 8=0.18%, 16=0.18%, 32=100.08%, >=64=0.08%
         submit    : 0=0.08%, 4=100.08%, 8=0.0%, 16=0.0%, 32=0.08%, 64=0.0%, >=64=0.0%
         complete  : 0=0.08%, 4=100.08%, 8=0.08%, 16=0.08%, 32=0.18%, 64=0.0%, >=64=0.0%
         issued rwts: total=0,262144,0,0 short=0,0,0,0 dropped=0,0,0,0
         latency   : target=0, window=0, percentile=100.08%, depth=32
Run status group 0 (all jobs):
    WRITE: bw=71.5MiB/s (75.0MB/s), 71.5MiB/s-71.5MiB/s (75.0MB/s-75.0MB/s), io=1024MiB (1074MB), run=14313-14313msec
```