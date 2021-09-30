#!/bin/bash
echo "This will change the MPAA cert from 12 or UK:12 to GB-12 etc"
echo "It will also tag empty movies with Not Rated"
echo "This will do it for all NFO files under this script"
echo "### CTRL+C to stop me, you have 3 seconds ###"
sleep 2
echo "3..."
sleep 2
echo "2..."
sleep 2
echo "1..."
sleep 2
echo "0..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>G</>GB-U</g'
echo "Done G..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>U</>GB-U</g'
echo "Done U..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>PG</>GB-PG</g'
echo "Done PG..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>12</>GB-12</g'
echo "Done 12..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>12A</>GB-12A</g'
echo "Done 12A..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>PG-13</>GB-12A</g'
echo "Done PG-13..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>15</>GB-15</g'
echo "Done 15..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>18</>GB-18</g'
echo "Done 18..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>R18</>GB-R18</g'
echo "Done R18..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>R</>GB-R18</g'
echo "Done R..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>UK:U</>GB-U</g'
echo "Done UK:U..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>UK:PG</>GB-PG</g'
echo "Done UK:PG..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>UK:12</>GB-12</g'
echo "Done UK:12..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>UK:12A</>GB-12A</g'
echo "Done UK:12A..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>UK:15</>GB-15</g'
echo "Done UK:15..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>UK:18</>GB-18</g'
echo "Done UK:18..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/>UK:R18</>GB-R18</g'
echo "Done UK:R18..."
find . -type f -name "*.nfo" -print0 | xargs -0 sed -i 's/<mpaa><\/mpaa>/<mpaa>NR<\/mpaa>/g'
echo "Done Empty Movies"
echo ""
echo "Done"
