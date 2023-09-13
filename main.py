#What_We_Do = int(input("Hi! I will be doing your schedule today! How can I help? \n 1) Find your classification. \n 2) Find your next semester classes. \n 3) Find your estimated graduation year."))


#class Classes:

#  def __init__(self, index, name, Prerequisites):
 #   self.index = index
 #   self.name = name
 #   self.Prerequisites = Prerequisites


#def transcript():
#  return


#def PreRequisites():
#  return

PreRequisities_Modeling = 0
index_Modeling = 0
name_Modeling = 0

All_Classes = []
Classes_Finished = []
PreReq_Queue = []
Semester_1 = []
Semester_2 = []
Semester_3 = []
Semester_4 = []
Semester_5 = []
Semester_6 = []
Semester_7 = []
Semester_8 = []

with open('List_of_Classes.txt') as f:
  for line in f:
    index, name, PreRequisites = line.rstrip().split('.')
    print (index, PreRequisites)
    All_Classes.append(index)
    #if index in PreRequisites:
     # Semester_1.append(PreRequisites)
      #Semester_2.append(index)
    #else:
    #  Semester_8.append(PreRequisites)
  with open('List_of_Requirements.txt') as x:
    for line in x:
      index, name, hours = line.rstrip().split('.')
      hours = float(hours)
      print (index, hours)
print(Semester_1)
#print(Semester_2)
#print(All_Classes)