# KnoDL-Match
Service for matching two data sets

The matcher is a service for matching two data sets (each set with an arbitrary structure) to identify pairs of the most similar elements in them (one element from different sets). The result is output in pairs of the most corresponding elements and a special numerical measure of their compliance. Our measure of matches is an independent value, and in such a way, we can compare it between the results of several different comparisons.

demo can be downloaded:
docker pull knodlang/knodl:demo

API
# Functions
POST    /fnFuzzyMatch               controllers.FunctionController.fuzzyMatch(request: Request)

The Fuzzy Match command allows you to compare 2 Knobits, by means of a fuzzy comparison of previously compiled databases.
It can issue several statuses, namely:                              
OK - if the comparison was successful,                              
ERROR - if an error occurred during the comparison,                 
INVALID ARGUMENT - invalid input argument,                          
NOT FOUND BY TOKEN-the comparison failed, due to the fact that no argument was found for the token.       
