#SSH 远程登入 Ubuntu 机
ssh username@192.168.0.1

#将 文件/文件夹 从远程 Ubuntu 机拷至本地(scp)
scp -r username@192.168.0.1:/home/username/remotefile.txt

#将 文件/文件夹 从本地拷至远程 Ubuntu 机(scp)
scp -r localfile.txt username@192.168.0.1:/home/username/

#将 文件/文件夹 从远程 Ubuntu 机拷至本地(rsync)

rsync -v -u -a --delete --rsh=ssh --stats username@192.168.0.1:/home/username/remotefile.txt .

#将 文件/文件夹 从本地拷至远程 Ubuntu 机(rsync)
rsync -v -u -a --delete --rsh=ssh --stats localfile.txt username@192.168.0.1:/home/username/
