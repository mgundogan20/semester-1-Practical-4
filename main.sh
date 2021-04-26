#!/bin/bash

#### Q1 #### 
cat htmls.txt | sed -E "s/^<.*?[> ].*?<\/(.*?)>/\1/"

#### Q2 #### 
cat htmls.txt | sed -E "s/^<.*?[> ](.*?)<\/.*?>/\1/"


#### Q3 #### 
cat words.txt | grep ".*[Aa].*[Aa].*[Aa].*"

#### Q4 #### 
cat words.txt | grep ".*[Aa].*[Aa].*[Aa].*" | sed -E "s/.*(..)$/\1/" | sort | uniq -c | sort -n | tail

#### Q5 #### 
cat ssh_log.txt | grep -E "^Invalid" | sed -E "s/^Invalid user with username (.*) at time.*$/\1/" | sort | uniq -c | sort -n | tail -n5

#### Q6 #### 
cat ssh_log.txt | grep -E "^Blocked" | sed -E "s/^Blocked user with username (.*) at time.*$/\1/" | sort | uniq -c | sort -n | tail -n5

#### Q7 #### 
cat ssh_log.txt | sed -E "s/^(Invalid|Blocked) user with username (.*) at time.*$/\2/" | sort | uniq -c | sort -n | tail -n5




