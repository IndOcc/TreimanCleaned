dt <- read.table("70-80-dual/DTA466.file0003.CEN70.DBLCOD", quote="", sep="&")

# 1970 industry code from 1970 Census file.
dt$ind70_prelim <- substr(dt$V1, 3, 5)
# Industry allocated if code present. Codes may be A, B, or C. 
dt$ind70alloc <- substr(dt$V1, 6, 6)

# 1970 occupation code from 1970 Census file.
dt$occ70_prelim <- substr(dt$V1, 9, 11)
# Occupation allocated if code present. Codes may be A, B, or C.
dt$occ70alloc <- substr(dt$V1, 12, 12)

# Sex from 1970 Census file: M - male, F - female
dt$sex70 <- substr(dt$V1, 17, 17)
# Sex allocated if * entered
dt$sex70alloc <- substr(dt$V1, 18, 18)

# State, serial is unique by state, handwritten note "Find out what this is - not FIPS"
dt$state <- substr(dt$V1, 23, 24)
dt$serial <- substr(dt$V1, 23, 30)

# Transcribed Industry Code
dt$ind_code <- substr(dt$V1, 34, 36)

# Household codes assigned in transcription
# 1 = Occupied
# 2 = Group Quarters
# 3 = Missing digit(s) transcribed from previous household
# 4 = Vacant
# 5 = No person's in labor force for household
# 6 = ASN transcribed from previous household
# "It is possible to have 2 or more codes assigned to a house-hold or Group Quarters. Code(s) may be right or left justified in the field
dt$hh_cat <- substr(dt$V1, 37, 41)

# Transcribed industry code (again)
dt$ind_code_2 <- substr(dt$V1, 42, 44)

# Broad industry sort
# 1 = Manufacturing
# 2 = Wholesale Trade
# 3 = Retail Trade
# 4 -Other industries
dt$ind_broad <- substr(dt$V1, 49, 49)

# Transcribed occupation code
dt$occ_code <- substr(dt$V1, 52, 54)

# Transcribed class of worker
dt$class <- substr(dt$V1, 55, 55)

# Transcribed person number
dt$person_number <- substr(dt$V1, 56, 56)

# Transcribed relationship code
dt$relation_code <- substr(dt$V1, 57, 57)

# Transcribed age in years
dt$age <- substr(dt$V1, 58, 59)

# Transcribed sex (again)
dt$sex_2 <- substr(dt$V1, 60, 60)

# Relationship codes: H - head, W - wife, C - child, O - other relative, N - not related. 
dt$relationship_code <- substr(dt$V1, 71, 71)
# Relationship allocated if * entered
dt$relationship_alloc <- substr(dt$V1, 72, 72)

# Race: W - White, N - Negro, O - all other
dt$race <-substr(dt$V1, 77, 77)
# Race allocated if * entered
dt$race_allocated <- substr(dt$V1, 78, 78)

# Age in years, 16-99 (again)
dt$age_2 <- substr(dt$V1, 82, 83)
# Age allocated if "A" entered
dt$age_allocated <- substr(dt$V1, 84, 84)

# Highest grade completed
# One digit grade followed by a letter designating level.
# 1E to 8E for elementary
# IH to 4H for high school
# 1C to bc for college
# Note: In a review of records, "NA" also appeared in this field.
dt$school <- substr(dt$V1, 88, 89)

# Unlabeled, but perhaps has to do with allocating school field
dt$school2 <- substr(dt$V1, 90, 90)

# Employment Status Recode
# 1 - Employed
# 2 - Unemployed
dt$emp_status <- substr(dt$V1, 95, 95)
# Employmen status allocated if * entered.
dt$emp_status_alloc <- substr(dt$V1, 96, 96)

# Class of worker
# 0 = Private
# I - Federal government
# 2 - State government
# 3 - Local government
# 4 - Self-employed, not incorporated
# 5 - Self-employed, incorporated
# 6 - Without pay
dt$class_of_worker <- substr(dt$V1, 101, 101)
# 101 is labeled for both class of worker and class of worker allocated if * entered
# It appears to be class of worker

# 102 does not appear to be related but it does contain some content that is not described in the codebook
dt$uk14 <- substr(dt$V1, 102, 106)

# Hours worked during Census reference week.
# 0 - 1 to 14 hours 
# 2 - 15 to 34 hours
# 3 - 35 to 39 hours
# 4 - 40 hours
# 5 - 41 to 48 hours
# 6 - 49 to 59 hours
# 7 - 60 hours or more
dt$hours <- substr(dt$V1, 107, 107)
# Hours allocated if * entered
dt$hours_alloc <- substr(dt$V1, 108, 108)

# Week worked in 1969
# 0 - 13 weeks or less
# 1 - 14 to 26 weeks
# 2 - 27 to 39 weeks
# 3 - 40 to 47 weeks
# 4 - 48 to 49 weeks
# 5 - 50 to 52 weeks
dt$weeks_worked <- substr(dt$V1, 113, 113)
# Weeks worked allocated if * entered
dt$weeks_worked_allocated <- substr(dt$V1, 114, 114)

# Earnings in thousands of dollars
# Earnings
# None: A
# Under $1,000: 0
# 1,000 to $98,000: 1 to 98
# $99,000 or more: 99
dt$earnings <- substr(dt$V1, 118, 119)

# Allocation codes for earnings
# Blank - no allocation
# A - With wage and salary income only, allocated
# B - With self-employment income only, allocated
#### UNLABELED With both wage and salary income and self employment income
# C - Wage and salary allocated
# D - Self-employment allocated
# F - Both allocated
dt$class_of_worker_alloc <- substr(dt$V1, 120, 120)

# Corrected industry code assigned shortly after transcription, before 1980 Census
dt$corr_ind_70_1 <- substr(dt$V1, 123, 125)

# Corrected occupation code assigned shortly after transcription, before 1980 Census
dt$corr_occ_70_1 <- substr(dt$V1, 129, 131)

# Corrected class of worker assigned shortly after transcription, before 1980 Census
dt$corr_class_70_1 <- substr(dt$V1, 138, 138)

# 1970 industry code. If different from code in word 1, corrected at the time 1980 code was assigned after 1980 Census
dt$ind_70_final <- substr(dt$V1, 139, 141)

# 1980 industry code assigned after 1980 Census
dt$ind_80 <- substr(dt$V1, 142, 144)

# 1970 occupation. If different from code in word 2, corrected at the time 1980 code was assigned after 1980 Census
dt$occ_70_final <- substr(dt$V1, 145, 147)

# 1980 occupation code assigned after 1980 Census
dt$occ_80 <- substr(dt$V1, 148, 150)

# FIPS state code (Labeled 154-156 but it's only 2)
dt$state_fips <- substr(dt$V1, 155, 156)

# Imputed Industry Codes *Codes which were not imputed may be blank or zero filled.
dt$imp_ind_1 <- substr(dt$V1, 157, 159) # Code1
dt$imp_ind_2 <- substr(dt$V1, 160, 162) # Code2
dt$imp_ind_3 <- substr(dt$V1, 163, 165) # Code3
dt$imp_ind_4 <- substr(dt$V1, 166, 168) # Code4
dt$imp_ind_5 <- substr(dt$V1, 169, 171) # Code5

# Imputed Occupation Codes *Codes which were not imputed may be blank or zero filled. 
dt$imp_occ_1 <- substr(dt$V1, 172, 174) # Code1
dt$imp_occ_2 <- substr(dt$V1, 175, 177) # Code2
dt$imp_occ_3 <- substr(dt$V1, 178, 180) # Code3
dt$imp_occ_4 <- substr(dt$V1, 181, 183) # Code4
dt$imp_occ_5 <- substr(dt$V1, 184, 186) # Code5

# Unknown: Unlabeled, contain nothing but spaces or quotes
#dt$uk01 <- substr(dt$V1, 1, 2)
#dt$uk02 <- substr(dt$V1, 7, 8)
#dt$uk03 <- substr(dt$V1, 13, 16)
#dt$uk04 <- substr(dt$V1, 19, 22)
#dt$uk05 <- substr(dt$V1, 31, 33)
#dt$uk06 <- substr(dt$V1, 45, 48)
#dt$uk07 <- substr(dt$V1, 50, 51)
# 61-66 were used to sort file cards way back when
#dt$uk08 <- substr(dt$V1, 61, 70)
#dt$uk09 <- substr(dt$V1, 73, 76)
#dt$uk10 <- substr(dt$V1, 79, 81)
#dt$uk11 <- substr(dt$V1, 85, 87)
#dt$uk12 <- substr(dt$V1, 91, 94)
#dt$uk13 <- substr(dt$V1, 97, 100)
#dt$uk15 <- substr(dt$V1, 109, 112)
#dt$uk16 <- substr(dt$V1, 115, 117)
#dt$uk17 <- substr(dt$V1, 121, 122)
#dt$uk18 <- substr(dt$V1, 126, 128)
#dt$uk19 <- substr(dt$V1, 132, 137)
#dt$uk20 <- substr(dt$V1, 151, 153)


write.csv(dt, file = "Treiman_File_clean.csv")


#####################################
#exploring unmatched prelim and ind_70_final codes:
dt$test_equal<- as.integer(dt$ind70_prelim) == as.integer(dt$ind_70_final)

#also look at ind_code and ind_code_true differences

