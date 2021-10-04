#Annotated code
number_vector<-c(1,2,3)
number_vector[2]

number_vector[c(3,2,1)]

other_vector<-c(1,2,3)

string_vector<-c("this is a string", "this is another string", "this is the last string")
string_vector[c(1,2,3)]
string_vector[1]
string_vector[2]
string_vector[3]

data.frame(string_vector)
data.frame(string_vector,string_vector) #Two columns
#also
data.frame(first_column=string_vector,second_column=string_vector)#This also gives you two columns

test_list<-list("string")
test_list[1]
test_list[2]<-"another string"
test_list[2]
test_list


test_list[[1]][2]<-"another string"
test_list

c(test_list,2)
str(test_list)
test_list[[1]][2]<-"another string"

data_frame_1<-data.frame(letters)