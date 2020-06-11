# Global variable
#########################################################
wkd='/Volumes/Lexar/project'
proxy
curl cip.cc
#########################################################

start=$(date +%s) #脚本启始时间
echo "脚本开始执行"
echo "开始时间："`date` 
#########################################################
# Main program
cd /Volumes/Elements/reference/gtf/gencode
wget ftp://ftp.ensembl.org/pub/current_gtf/homo_sapiens/Homo_sapiens.GRCh38.90.gtf.gz## hg38

wget ftp://ftp.ensembl.org/pub/release-75/gtf/homo_sapiens/Homo_sapiens.GRCh37.75.gtf.gz## hg19

 
unproxy
curl cip.cc



#########################################################

end=$(date +%s) #脚本终止时间
take=$(( end - start ))
h=$(( take / 3600 ))
m=$((( take - 3600 * h ) / 60 ))
s=$((( take - 3600 * h - 60 * m )))
echo 脚本运行完毕，用时 ${h} 小时 ${m} 分钟 ${s} 秒
echo "结束时间："`date` 
echo -e "\a"
sleep 0.3
echo -e "\a"
sleep 0.3
echo -e "\a"
#########################################################


