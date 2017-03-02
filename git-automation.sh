if [ "$#" -gt 0 ]	#checking if there is a commit message
then			#if there is a commit message, proceed to pus h to the archive			
    git pull
    git add --all
    git commit -m "$*"
    git push
else			#error message if ther is no commit message 
    echo "I will not push unless there is a commit message"
fi
