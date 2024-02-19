#! /bin/sh
# This script copies the flight pud data to /data/ftp/internal_000/Bebop_Drone/media/

echo "Copying .pud files to /media"
# Orange LED during copy
(BLDC_Test_Bench -G 1 1 0 >/dev/null) &
cp /data/ftp/internal_000/Bebop_Drone/academy/* /data/ftp/internal_000/Bebop_Drone/media/

# Change LED back to green
BLDC_Test_Bench -G 0 1 0 >/dev/null