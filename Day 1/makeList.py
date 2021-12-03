array = []
with open("this.txt", "r") as f:
    for line in f:
        array.append(int(line.rstrip()))
print(array)
