rm server
rm server.o

g++ -fpermissive -g -I ../../include -std=c++11 -o server.o -c server.cpp
echo "Server done"
g++ -g -o server server.o ../../mtcp_lib.o -pthread
sudo gdb ./server
