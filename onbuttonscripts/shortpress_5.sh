#! /bin/sh
# This script copies the flight pud data to /data/ftp/internal_000/Bebop_Drone/media/
# This script also grabs the gps_nmea_out incase the navdata is bad

echo "Copying .pud files to /media"
# Orange LED during copy
(BLDC_Test_Bench -G 1 1 0 >/dev/null) &
cp /data/ftp/internal_000/Bebop_Drone/navdata/* /data/ftp/internal_000/Bebop_Drone/media/
BLDC_Test_Bench -G 0 1 0 >/dev/null

# Save /tmp/gps_nmea_out (This takes forever)
# (BLDC_Test_Bench -G 1 1 0 >/dev/null) &
# cp /tmp/gps_nmea_out /data/ftp/internal_000/Bebop_Drone/media/

# Change LED back to green
BLDC_Test_Bench -G 0 1 0 >/dev/null