import os, threadpool
echo("Chat application started")

if paramCount() == 0:
    quit("Please specify the server address, e.g. ./client localhost")

let serverAddr = paramStr(1)
echo("Connecting to ", serverAddr)

while true:
    let message = spawn readLine(stdin)
    echo("Sending \"", ^message, "\"")