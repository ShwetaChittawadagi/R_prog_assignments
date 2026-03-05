library(tidyverse)
AE<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ae.csv")

#Select Core Identifiers from Any Domain
ae_1 <- AE |> select(STUDYID,USUBJID)

#Select All AE Variables from AE 
ae_all <- AE |> select(everything())

#Select All Date Variables
ae_date <- AE |> select(contains('DTC',ignore.case=FALSE))

#Select All Qualifiers in a Domain ,Only AE-specific columns
glimpse(AE)
ae_qual <- AE |> select(7:27) #ALL qualifiers

#Programmatic SDTM Selection putting a vector c("USUBJID", "AETERM", "AEDECOD", "AESTDTC", "AEENDTC")
vec<-c("USUBJID", "AETERM", "AEDECOD", "AESTDTC", "AEENDTC")
ae_vec<- AE |> select(vec)

#Reorder: Put Keys First STUDYID, DOMAIN, USUBJID, AESEQ
#ae_reord <- AE |> select(STUDYID, DOMAIN, USUBJID, AESEQ, everything())
#Shweta to Ganesh: The keys are already appearing first, please update requiremen

VS<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/vs.csv")                       

#Select Only Weight and Height from VS
vs_hw <- VS |> filter(VSTESTCD %in% c('HEIGHT', 'WEIGHT')) |> select(everything())

##By test name pattern????????-didnt understand the requirement

#Select All Test Codes like VSTESTCD,VSTEST
vs_test <- VS |> select(contains('TEST'))

#Select All Numeric Measurements + Subject ID
vs_num <- VS |> select(where(is.numeric),USUBJID)
glimpse(vs_num)

#Select Only Domain-Specific Columns
vs_spec <- VS |> select(5:16,-VISIT,-VISITNUM)

#Select All Result Columns from LB 'LBOR','LBST'
LB<-readr::read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/master/clinical_datasets/sdtm/daibetes/csv/lb.csv")
lb_res <- LB |> select(matches("LBOR|LBST",ignore.case = FALSE))

#Select All Result Columns from LB 'DY','DTC'
lb_dt <- LB |> select(matches("DTC|DY",ignore.case = FALSE))

#Select All Character Columns (Metadata Review)
lb_char <- LB |> select(where(is.character))

#Select All "Standardized" Variables like LBSTRESC,LBSTRESN,LBSTRESU
lb_st <- LB |> select(contains('BST'))

glimpse(LB)
glimpse(lb_char)

lb_num<- LB |> select(where(is.numeric))
glimpse(lb_num)

#Select Variables Using Regex (Advanced) using RES,RESN,RESC
lb_res<- LB |> select(matches('.*RES'))

#Select All Variables for Exposure (EX)
EX<-read_csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ex.csv")
ex_all <- EX |> select(everything())

#Select All Timing Variables i,e DTC,DY
ex_dt <- EX |> select(matches("DTC|DY",ignore.case = FALSE))
