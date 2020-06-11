# Global variable
#########################################################
wkd="/Volumes/Elements/reference"
source activate rna
#########################################################

start=$(date +%s) #脚本启始时间
echo "脚本开始执行"
echo "开始时间："`date` 
#########################################################
# Main program

echo "开始构建hg19索引"
bwa index   -a bwtsw   -p  ${wkd}/index/bwa/hg19/hg19 ${wkd}/genome/hg19/hg19.fa 1>hg19.bwa_index.log 2>&1   
echo "开始构建hg38索引"
bwa index   -a bwtsw   -p ${wkd}/index/bwa/hg38/hg38 ${wkd}/genome/hg38/hg38.fa 1>hg38.bwa_index.log 2>&1   
echo "开始构建mm10索引"
bwa index   -a bwtsw   -p ${wkd}/index/bwa/mm10/mm10 ${wkd}/genome/mm10/mm10.fa 1>mm10.bwa_index.log 2>&1   
 




conda deactivate 
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


