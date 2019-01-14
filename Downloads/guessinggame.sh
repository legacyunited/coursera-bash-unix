files=4
test=0
echo "Welcome to Guessing Game!"

function guessinggame {

while [[ test -eq 0 ]]
do
	echo "Can you guess how many files are in the current directory? (Hint: You have infinite guesses.)"
	read response
	if [[ response -eq $files ]]
	then
		echo "You got it!"
		echo "And, thanks for playing!"
		test=1
	elif [[ response -lt $files ]] 
	then
		echo "Try guessing higher"
	elif [[ response -gt $files ]]
	then
		echo "Try guessing lower"
	fi
done
}

guessinggame

