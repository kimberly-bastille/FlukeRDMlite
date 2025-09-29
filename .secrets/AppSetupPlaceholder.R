#  A place to store things
# I don't want to put the DST user list of emails into the repository.
# I don't want to put the google drive paths into the repository



#library(googledrive)
#library(googlesheets4)
drive_auth(cache = ".secrets", email = TRUE)
gs4_auth(cache = ".secrets", email = TRUE)

drive_path<-"PATH_TO_DRIVE/"

to_run_path<-"PATH_TO_DRIVE/REGULATIONS_TO_RUN/"
questionable_path<-"PATH_TO_DRIVE/REGULATIONS_TO_VALIDATE"




# Read in RecDST Users
# From google drive
#DST_user_list<-"https://docs.google.com/spreadsheets/path_to_spreadsheet"
#Approved_Emails<-read_sheet(DST_user_list)
#Approved_Emails<-Approved_Emails %>%
#  select(Email_Address)%>%
#  mutate(Email_Address=tolower(Email_Address))
#readr::write_csv(Approved_Emails, file = here::here(".secrets","Approved_Emails.csv"))


#from the .secrets folder
Approved_Emails<-readr::read_csv( file = here::here(".secrets","Approved_Emails.csv"),col_select="Email_Address", col_types="c")
Approved_Emails<-Approved_Emails %>%
    mutate(Email_Address=tolower(Email_Address))%>%
    pull(Email_Address)


