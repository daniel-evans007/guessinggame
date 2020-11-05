echo "You have to correctly guess the number of files in this directory to be able to win this game"
echo "Good luck"
echo ""
count="$(find . -maxdepth 1 -type f -printf x | wc -c)"

function guessinggame {
while [[ 1 ]]
do
        echo "Guess the number of files, vas-y :"
        read guess
        if [[ $guess -eq count ]]
        then
                echo "Your guess is correct"
                break
        else
                echo "Try again :3"
        fi
done
}

guessinggame
