--------统计照片缺少车辆-----------
IFS=$'\n'
date="4.28"
for i in `find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date" -mindepth 2 -type d  `
do
    num=`ls -l "$i" | wc -l`
    if [ "$num" -lt "8" ];
    then
        echo $i $num
    fi
done

--------统计当日收集车辆总路径------------
IFS=$'\n'
date="4.28"
find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date/" -mindepth 2 -type d | wc -l


-------------更改文件夹名称--------------------

IFS=$'\n'
date="4.28"
deepth="2"
for i in `find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date" -mindepth $deepth -type d  `
do
	mv "$i" `echo $i |sed 's/ //g'`
done
for i in `find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date" -mindepth $deepth -type d  `
do
	mv "$i" "${i/至/-}"
done
for i in `find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date" -mindepth $deepth -type d  `
do
	mv "$i" `echo "$i"|tr a-z A-z`
done
for i in `find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date" -mindepth $deepth -type d  `
do
	mv "$i" "${i/到/-}"
done
for i in `find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date" -mindepth $deepth -type d  `
do
	mv "$i" "${i/～/-}"
done
for i in `find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date" -mindepth $deepth -type d  `
do
	mv "$i" "${i/–/-}"
done
for i in `find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date" -mindepth $deepth -type d  `
do
	mv "$i" "${i/－/-}"
done
for i in `find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date" -mindepth $deepth -type d  `
do
	mv "$i" "${i/—/-}"
done



	
	

--------------拷贝扫描件------------------
IFS=$'\n'
date="4.27"
for i in `ls`
do
	num=${i%.*}
	dir=`find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date" -type d -name "*$num*"`
	cp -f $i $dir/7.jpg || echo $i
done


IFS=$'\n'
date="4.28"
for i in `ls`
do
	num=${i%.*}
	dir=`find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date" -type d -name "*$num*"`
	cp -f $i $dir/ || echo $i
done

---------------统计已收集车辆-----------
for date in 4.24 4.25 4.26 4.27 4.28
do
	for i in `find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date/" -mindepth 2 -type d`
	do
		echo ${i##*/} >> "C:\Users\Admin\Desktop\num.txt"
	done
done


for date in 4.24 4.25 4.26 4.27 4.28
do
	find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片/$date/" -mindepth 2 -type d | wc -l
done



for i in `find "C:\Users\Admin\Desktop\还贷中心照片\第二次测试车辆照片" -mindepth 3 -type d  `
do
    num=`ls -l "$i" | wc -l`
    if [ "$num" -lt "8" ];
    then
        echo $i $num
    fi
done
