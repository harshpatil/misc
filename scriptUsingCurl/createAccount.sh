cat input.txt | while read line
do
arr=($line)
curl -v "http://localhost:8888/socialNetwork/createAccount" -H Content-Type:application/json -d "{\"firstName\": \"${arr[0]}\",\"lastName\":\"${arr[1]}\"}"
done
