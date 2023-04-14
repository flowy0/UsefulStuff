################################################################################################
#	Script to organize pictures uploaded from Mobile Devices to Dropbox's Camera Upload folder
#	Daniel Spillere Andrade - https://danielandrade.net/2014/02/16/script-to-organize-dropboxs-camera-upload-folder/
#   modified to move to folder2
#	added additional file format - ORF
#   added summary count
#   modified to work without changing to photo directory
#   added used of dotenv
#   cleaned up variables
################################################################################################

import os, time
import glob

# get Home folder path
HOME_DIR = os.getenv("HOME")

#Define Pictures Folder
#You may have to change this!
folder = HOME_DIR  + '/Dropbox/Camera Uploads/'
folder2 = HOME_DIR  + '/Dropbox/Photos/'
# print(folder)
 
fileFormats = ['JPG','jpg', 'MOV', 'mov', 'PNG', 'png', 'mp4', 'MP4', 'ORF', 'orf']
months = ['January','February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
picPath = []
count=0
#Generate list of files
for formats in fileFormats:
	picPath = picPath + glob.glob(folder + "*."+formats)
 
for files in picPath:
	picName = files.split('/')
	filename = picName[-1][:-4].split(' ')
	date = filename[0].split('-')

	dateYear = date[0]
	dateMonth = date[1]

	month = months[int(dateMonth)-1]
	monthNum = str(int(dateMonth)).zfill(2) 

	# define folder/file paths
	folder_year = folder2 + dateYear
	folder_month = monthNum + '-' + month
	target_folder = folder_year  + '/' + folder_month
	target_file = target_folder  + "/" + picName[-1]

	#folder exists? if not, create them!
	if not os.path.exists(folder_year ):
	    print ('Making dir:' + folder_year )
	    os.makedirs(folder_year)
	
	if not os.path.exists(folder_year  + '/' + folder_month):
	    print ('Making dir:' + folder_year  + '/' + folder_month)
	    os.makedirs(folder_year  + '/' + folder_month)

	#Move files
	print ('Move: ' + files + ' --> ' +  target_folder )
	os.rename(folder+ "/" + picName[-1], target_file)
	count=count+1

print ("Done :" + str(count) + " files organised" )

