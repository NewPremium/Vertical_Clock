for i in range(0, 60):
    if i >= 0 and i < 10:
        i="0%s"%i
    i=str(i)
    file = open("%s.txt" %i , "r", encoding = 'UTF-8')
    hosts = file.read()
    file.close()
    file = open("%s.txt" %i, "w", encoding = 'UTF-8')
    file.write(hosts.replace("echo.", ""))
    file.close()
print("끝!")