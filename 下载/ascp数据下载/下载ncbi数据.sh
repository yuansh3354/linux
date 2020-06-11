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


##下载ncbi数据
cat SRR_Acc_List.txt|while read a 
do
	t1=${a:0:3};t2=${a:0:6};
	echo "$t1/$t2/$a/$a.sra" >> id.txt ;
done
 
cat id.txt|while read id
do
ascp -QT -l 300m -P33001  -i ${wkd}/asperaweb_id_dsa.openssh \
anonftp@ftp.ncbi.nlm.nih.gov:/sra/sra-instant/reads/ByRun/sra/${id}  ./
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


