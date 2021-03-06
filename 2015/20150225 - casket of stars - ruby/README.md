Problem Statement
        The Casket of Star (sic) is a device in the Touhou universe. Its purpose is to generate energy rapidly. Initially it contains n stars in a row. The stars are labeled 0 through n-1 from the left to the right. You are given a int[] weight, where weight[i] is the weight of star i.





The following operation can be repeatedly used to generate energy:

    Choose a star x other than the very first star and the very last star.
    The x-th star disappears.
    This generates weight[x-1] * weight[x+1] units of energy.
    We decrease n and relabel the stars 0 through n-1 from the left to the right.







Your task is to use the device to generate as many units of energy as possible. Return the largest possible total amount of generated energy.
 
Definition
        
Class:  CasketOfStar
Method: maxEnergy
Parameters: int[]
Returns:    int
Method signature:   int maxEnergy(int[] weight)
(be sure your method is public)
    
 
Constraints
-   weight will contain between 3 and 50 elements, inclusive.
-   Each element in weight will be between 1 and 1,000, inclusive.
 
Examples
0)  
        

{1,2,3,4}

Returns: 12

We have only 2 choices:

    Make the "2" disappear first, and "3" next. The total energy is 1*3 + 1*4 = 7.
    Make the "3" disappear first, and "2" next. The total energy is 2*4 + 1*4 = 12.

So the answer is 12.
1)  
        

{100,2,1,3,100}

Returns: 10400

We proceed as follows: {100,2,1,3,100} => {100,1,3,100} => {100,3,100} => {100,100} The total energy is 100*1 + 100*3 + 100*100 = 10400.
2)  
        

{2,2,7,6,90,5,9}

Returns: 1818

3)  
        

{477,744,474,777,447,747,777,474}

Returns: 2937051

4)  
        

{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}

Returns: 13