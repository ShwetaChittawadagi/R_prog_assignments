#Chapter 2 Module 2 :
  #1) Write a regular function for adding the two number passing the value dynamically as a arguments
  #Method 1:
  addn<-function(){
    a<- scan()
    b<- scan()
    print(a+b)
  }
  addn()
  
  #Method 2:
  a<-scan()
  b<-scan()
  addn<-function(){
   z<- a+b
   print(z)
  }
  addn()
  
  #Doubt: Why is the input asking value twice for above codes?
  #Doubt: Seek clarity reg assignment no.5 in same module
  
 #BMI question related doubt: Ans:  
  x<-readline("Input a number:  ") #It takes input in character. but to conver use as.interger
  
#Chapter 2 Module 3:
   #Assignment no.1:
    #Q1:
    x<-10
  print(x)
  
  #Q2:
  a<-5
  b<-3
  c<-a+b
  print(c)
  
  #Q3:
  Shweta<-"R Programming"
  typeof(Shweta)
  class(Shweta)
  
  #Q4:
  numr<-"TRUE"
  as.numeric(numr)

  #Q5:
  x <- 10
  x <- x + 5
  x
#Output: 15
  
  #Q6:
  x <- 100
  x <- "Hundred"
  class(x)
#Output: "Character"
  
  # Q7:
  x <- 5
  x <- TRUE
  x <- "Done"
  x
  typeof(x)

  # Q8:
  my_var<-1
  .myVar<-1
  #2value<-1-------invalid variable name<-starts with a number
  value_2<-1
  #my-value<-1-------invalid variable name<-includes a special character
  
  #Q9
  #Try assigning a value to a reserved word. What happens?
  if <- 10
  # Error: unexpected assignment in "  if <-"
  
   #Q10
    #Create a variable and check:
    m<-10
    class(m)  
    typeof(m)
    str(m)

    #Q11
    x <- 10L
    class(x)
    typeof(x)
    #Explain the difference.---Class and typeof for both are different as 'x' is an interger in Q11.
    
    #Q12
    a <- 4
    b <- 2
    c <- a + b * 3
    c
    #Explain how operator precedence affects the result.---It multiplies first and then adds
    
    #Q13
    #Rewrite Q12 using parentheses to change the result.---It adds first due to brackets and then multiplies
    c <- (a + b) * 3
    c
    
    #ASSIGNMENT 6: Variable Scope (Very Important)
    #---------------------------------------------
    #Q14
    x <- 10
    f <- function() {
      x <- 5
      x
    }
    f()
    x
    #Explain both outputs.--Outside the function x=10 is a global variable, when re-assigned inside it is a local variable and the scope of x=5 is within the function and when printed it gives teh value as 5, but as x=10 is a global variable, when called outside function, it gives the values as 10.
    
    
    #Q15
    x <- 1
    f <- function() {
      x <<- x + 1 # the double '<<' symbol is reassigning the value of 'x' even when its a global variable
    }
    f()
    x
    #What changed and why?--Answer provided above^^
    
    #ASSIGNMENT 7: Variables in Loops
    #Q16
    sum <- 0
    for (i in 1:5) {
      sum <- sum + i
    }
    sum
    #Explain how the variable changes in each iteration.--Answer provided below:
    
    Before entering 'for' loop
    sum=0
    
    First iteration:
      i=1
    sum=0+1
    sum=1
    
    Second iteration:
      i=2
    sum=1+2
    sum=3
    
    Third iteration:
      i=3
    sum=3+3
    sum=6
    
    Fourth iteration:
      i=4
    sum=6+4
    sum=10
    
    Fift & the last iteration:
      i=5
    sum=10+5
    sum=15---And hence the values of sun after coming out of 'for' loop is 15.
    
    #Q17
    #What happens if sum is not initialized before the loop?# Error message indicating teh object is not found
    for (i in 1:5) {
      amnt <- amnt + i #providing different object-'amnt' as its considering sum value from previous assignment
    }
    amnt
    
    #ASSIGNMENT 8: Variables with Vectors & Objects
    #Q18
    x <- c(1, 2, 3)
    y <- x
    y[1] <- 100
    x
    
    #Why does x not change? # Value is updated only in vector 'y' so values in 'x' vector won't change.
    
    #Q19
    #Create a vector variable and calculate:
    Mean
    Maximum
    Length
    
    #Answer provided below:
    
    a<-c(1,NULL,"Shweta", 5L)
    a
    summary(a)  #--This summary() applied for 'a' gives only Length, class & Mode values like below as the vector is of type-character and cannot determine Mean/Maximum.
    
    #>     summary(a)
    #Length     Class      Mode 
    #3 character character
    
    
    b<-c(1,2,4,5)
    b
    summary(b)  #--This summary() applied for 'b' gives all statistical values like below including Mean & Maximum 
    
    #>     summary(b)
    #Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    #1.00    1.75    3.00    3.00    4.25    5.00 
    
    #ASSIGNMENT 9: Variable Existence & Removal
   ## -------------------------------------------  ->is this an escape character or something like a carriage return? 
      #Q20
    x <- 10
    exists('x')
    rm(x)
    exists('x') 
    
    #Explain the output.
    Q21
    #Remove all variables from the environment using one command.#Answer provided below:
    rm(list = ls())
    
    #ASSIGNMENT 10: Common Variable Mistakes
    #Q22
    mean <- 5
    mean(c(1,2,3))
        #What is the issue? How do you fix it? #The above second code doesn't create a variable called 'mean' but instead gives the mean of teh listed values as '<-' symbol is not used while declaring.
    
    #Q23
    x <- 10
    y <- x
    rm(x)
    y
    #Why does y still exist? #Because a new oblect/variable 'y' is created and is assigne diwth the values stored in 'x' and inside rm() we have provided only 'x' which means it will remove teh variable 'x' without atouching variable 'y'
    
    #ASSIGNMENT 11: Tricky / Interview-Level
    #Q24
    x <- 5
    y <- x <- 10
    x
    y
    #Explain assignment associations. # initially 'x' is created with a value 5, later 'y' is created to store the value from reassigned 'x'(which is now storing the value as 10), hence y value is now 10

    #Q25
    x <- c(1,2,3)
    for (x in 5:7) {
      print(x)
    }
    x
    #What is the final value of x and why?#Final value is 7, as the loop rewrites the x value and ends with x=7
    
    #ASSIGNMENT 12: Real-World Style
    #Q26
    #Create variables:
    weight (kg)
    height (meters)
    #Calculate BMI using variables.
 
    ## How to provide statement as "Input height/weight in meters/kgs" while asking input for weight and height?
    w<-scan()
    h<-scan()
    sqrhgt<-h*h
    sqrhgt
    BMI<- (w/sqrhgt)
    BMI
    
    #Q27
    #Create variables to store:
    #Subject ID
    Subject_ID<-"SUBJ_01"
    
    #Visit number
    Visit_number<-"VISIT_2"
    
    #Lab value
    Lab_value<-"LAB=120"
    
    #Create a formatted string like: "SUBJ_01 | VISIT_2 | LAB=120"
    print(Strng<-paste(Subject_ID,Visit_number,Lab_value, sep='|'),quote=FALSE)
    

    #OPTIONAL WRITING TASKS
    #Q28
    #Write 3 best practices for naming variables in R.
    #Answer:
    #1.Should start with an alphabet and should not start with a number or underscore, 2. Should not include special character, 3. Should not be a keyword
    
    #Q29
    #Explain the difference between local and global variables in your own words.
    #Answer: Local variable have limited scope(i.e withing the function they are created in and assigned in), however global variable has larger scope(i.e across the program thrie assigned value remain same unless reassigned)
    
    #Q30
    #Explain why '<<-' should be used carefully
    #Answer--It has the risk of reassigning a new value to already declared variable and can change its nature, hence should be used carefully.

    
    
    
