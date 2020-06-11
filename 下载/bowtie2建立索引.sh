# Global variable
#########################################################
wkd='/Volumes/Elements/reference'
source activate rna
#########################################################

start=$(date +%s) #脚本启始时间
echo "脚本开始执行"
echo "开始时间："`date` 
#########################################################
# Main program

bowtie2-build ${wkd}/genome/hg38/hg38.fa ${wkd}/index/bowtie/hg38/ 1>hg38.bowtie_index.log 2>&1 

 



conda deactivate 

#########################################################

end=$(date +%s) #脚本终止时间
take=$(( end - start ))
h=$(( take / 3600 ))
m=$((( take - 3600 * h ) / 60 ))
s=$((( take - 3600 * h - 60 * m )))
echo 脚本运行完毕，用时 ${h} 小时 ${m} 分钟 ${s} 秒
echo "结束时间："`date` 
say "The program has finished running"
#########################################################

