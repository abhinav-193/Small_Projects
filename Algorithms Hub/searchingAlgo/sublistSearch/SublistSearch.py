
test_list = [2, 4, 5, 8, 9]
sub_list = [10, 5, 4]
 
print ("Original list : " + str(test_list))
print ("Original sub list : " + str(sub_list))
 
flag = 0
if(all(x in test_list for x in sub_list)):
    flag = 1
     
if (flag) :
    print ("Yes, list is subset of other.")
else :
    print ("No, list is not subset of other.")