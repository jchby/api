for f in * ; do
    if [[ $f =~ ^(.+)-(.+)$ ]]; then
        #echo ${a/data/User}  代表把$a的data字符串替换成User
        #参照 https://wxnacy.com/2018/06/20/shell-replace/
        #https://stackoverflow.com/questions/3306007/replace-a-string-in-shell-script-using-a-variable
	mv $f ${f//-/}
        echo "rename -> "$f
    else
        echo "original -> "$f
    fi
done
