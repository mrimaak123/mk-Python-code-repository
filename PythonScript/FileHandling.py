try:
    words = []
    with open ("C:\\MrinmoyLearning\\PythonScript\\files\\test.txt") as input_file:
        for line in input_file:
            line = line.strip()
            #print(line)
            if len(line) < 4: continue
            if "quicken" not in line:
                print(line)
                words.append(line)
    print(words)

    with open('C:\\MrinmoyLearning\\PythonScript\\files\\testoutput.txt','w') as output_file:
        for word in words:
            output_file.write(word + "\n")
            
except:
    print("Some error happen")
    raise
 
#else:
    
#finally:
    
