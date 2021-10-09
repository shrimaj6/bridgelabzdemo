function getMonth () {
	case $1 in
	0)
	
	echo "Jan";
	;;
	1)
	
	echo "Feb";
	;;
		
	2)

	echo "Mar";
	;;

	3)

	echo "Apr";
	;;

	4)

	echo "May";
	;;

	5)

	echo "Jun";
	;;

	6)
	
	echo "Jul";
	;;

	7)
	
	echo "Aug";
	;;

	8)

	echo "Sep";
	;;

	9)

	echo "Oct";
	;;

	10)

	echo "Nov";
	;;

	11)

	echo "Dec";
	;;

	esac
}
	declare -a birthday;
	declare -a years;
	for (( i=0; i<50; i++ ))
	do
		year=$((RANDOM%2));
		month=$((RANDOM%12));
		birthday[$i]=$month;
		if [ $year -eq 1 ]
		then
			years[$i]=92;
		else
			years[$i]=93;
		fi
	done
	echo "output";
	count=0;
	for (( i=0;i<12;i++ ))
	do
		a=0;
		b=0;
		for (( k=0;k<50;k++ ))
		do

			if [ $((${birthday[k]})) -eq $i ]
			then
				yr=$((${years[k]}));
				if [ $yr -eq 92 ]
				then
					a=$((a+1));
				else
					b=$((b+1));
				fi
			fi;
		done
		mnt=$( getMonth $i );
		if [ $a -gt 0 ]
		then
			echo -n "birthday[$mnt";
			echo "92] = $a";
		fi
		if [ $b -gt 0 ]
		then
			echo -n "birthday[$mnt";
			echo "93] = $b";
		fi
		count=$(($count+$a+$b));
done
echo "Total People = $count";
