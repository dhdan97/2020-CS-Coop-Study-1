mv file1.txt new_file1.txt
mv file2.txt new_file2.txt

rm *.bak

for file in `ls *.py`
do
	lines  = `wc -l < $file`
	echo $file

	if [$lines -ge 10 ]
	then
		long_name = "long_"$file
		echo "greater than or equal to 10"
		`mv $file $long_name`
	else
		short_name = "short_"$file
		echo "less than 10"
		`mv $file $short_name`
	fi
done

read -p "Waiting to exit": wait_var
