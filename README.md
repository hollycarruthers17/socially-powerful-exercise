# Socially Powerful Exercise

Part I: SQL

Your first task is to find the best salesperson so you can award him/her with a chocolate fountain. You look at the database and see that there are 4 tables: Transaction, Item, Salesperson, and Client as represented by the diagram below.




Transaction - contains all transactions that happen at Willy Wonka's chocolate factory, including the salesperson, client, item, quantity, and time.

Item - contains all items that the chocolate factory sells

Salesperson - contains all members of the chocolate factory sales force

Client - contains all clients who purchase from the chocolate factory


Please write a query to get the names of clients that the salesperson "Charlie Bucket" has sold to.
You are in charge of calculating the total monetary value of candy that was sold this year, but you cannot do this based on the information that is currently given. What field(s) need to be added for you to be able to calculate this? Which table should these field(s) be added to?
Please write a query to get the name of the salesperson who has sold the most "Wonka Bars" this year.


Part II: Data Analysis

The chocolate factory has created this plot of all 100 Wonka Bar transactions to track the order sizes. The y-axis corresponds to order size.



Here are the essential data points:
max: 100
upper quartile: 70
median: 55
lower quartile: 50
min: 30
average (mean): 60

Which of the following is TRUE?
There were no orders for more than 100 Wonka Bars
50 orders were for 55 Wonka Bars, 50 orders were for 55 Wonka Bars
50 orders were for 60 Wonka Bars, 50 orders were for 60 Wonka Bars
There were as many orders for 50 55 Wonka Bars as there were for 55 70 Wonka Bars
55 Wonka Bars was the most common order size





The Oompa Loompas at the factory enjoy eating runts.

There are 5 flavors of Runts: Banana, Grape, Orange, Strawberry, and Green Apple.
Each box has an equal number of these flavors.
Orange Runts can be toxic to Oompa Loompas and turn them green when there is an allergic reaction. There is a 30% chance of Oompa Loompas turning green from Orange Runts.
Green Apple Runts always turn an Oompa Loompa green, but they are perfectly safe when eating Green Apple Runts.
All other Runts don't have side effects for Oompa Loompas.

A blindfolded Oompa Loompa randomly selects a Runt from the box and eats
it. She turns green. What is the probability that she ate an Orange Runt that
she's allergic to?



In the case of an allergic reaction, after a few hours, the green color turns into
a specific shade based on the severity of the reaction. To treat the allergic
reaction, you can give the Oompa Loompa a Gobstopper, which usually works,
but doesn't always.

There are two types of allergic reactions:
Sea Green, which indicates a mild reaction;
Plutonium Green, which indicates a severe reaction
There are two types of Gobstopper: the Fast-acting Gobstopper and the Never-ending Gobstopper.
Note: all the sugar from the Never-ending Gobstopper is bad for teeth though, according to the dentist

The sick bay at the factory records the following data, listed as S/N P% :

S = number of patients successfully treated
N = number of patients who have received the treatment
P% = percentage of patients who were successfully treated



Do you notice anything interesting within the data?
Which Gobstopper do you think is more effective at treating the allergic
reaction? What makes you think this?
What if instead, the table looked like this:



How would this change your opinion on which Gobstopper is more effective if
it does at all?
