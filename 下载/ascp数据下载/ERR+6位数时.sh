# Global variable
#########################################################
wkd='/Volumes/Lexar/HCC_Rseq'
source activate base
cd $wkd
#########################################################

start=$(date +%s) #脚本启始时间
echo "脚本开始执行"
echo "开始时间："`date` 
#########################################################
# Main program

#下载ENA数据
#如果SRR_Acc_List记录的样本编号是类似ERR526291，即ERR+6位数时，运行以下代码下载数据
cat SRR_Acc_List.txt|while read id
do
x=$(echo $id | cut -b1-6)
echo $id
ascp -QT -l 300m -P33001  -i \
${wkd}/asperaweb_id_dsa.openssh \
era-fasp@fasp.sra.ebi.ac.uk:/vol1/fastq/$x/$id/ ./
done


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


