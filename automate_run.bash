#change your directory

INPUT_DIR=/Users/samanthadawson/Documents/data-shell/molecules
RESULTS_DIR=/Users/samanthadawson/Documents/data-shell/results

#do not change from here unless you know what you are doing!


#first remove previous versions so as not to concatanate into an existing file
rm -rf $RESULTS_DIR/
mkdir $RESULTS_DIR 


#then gets the number of line counts in each file, sorts them, and pulls out the smallest
for filename in $INPUT_DIR/*.pdb 
 do
  wc -l $filename | sort -n | head -n 1 >> $RESULTS_DIR/lengths.txt 
done

cat $RESULTS_DIR/lengths.txt
