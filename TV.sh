#!/bin/bash
echo "This will change the MPAA cert from TV-14 to GB-12 etc"
echo "This will do it for all NFO files under this script"
echo "### CTRL+C to stop me, you have 5 seconds ###"
sleep 2
echo "5..."
sleep 2
echo "4..."
sleep 2
echo "3..."
sleep 2
echo "2..."
sleep 2
echo "1..."
sleep 2
echo "0..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>TV-Y</>GB-U</g'
echo "Done TV-Y..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>TV-Y7</>GB-U</g'
echo "Done TV-Y7..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>TV-G</>GB-U</g'
echo "Done TV-G..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>TV-PG</>GB-PG</g'
echo "Done TV-PG..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>TV-14</>GB-12A</g'
echo "Done TV-14..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>TV-MA</>GB-18</g'
echo "Done TV-MA..."

echo "Done"
