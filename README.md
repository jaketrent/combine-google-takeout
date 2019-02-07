
## Why

[Google Takeout](https://support.google.com/accounts/answer/3024190?hl=en) splits up your exported data into multiple zip files, depending on the size of your account.

This utility collects and combines the resources that I think are worth saving out of this trove of data.

## What is collected

- Gmail mail
- Contacts
- Drive files
- YouTube videos

More is collected by Google, and `combine.sh` is simple enough that you could modify it to combine whatever other resources you think are interesting.

## To use

Export your data using Google Takeout.

The exports will be generated eventually and links to download sent to you.  Download all zips and put them in a directory.

```
git clone git@github.com:jaketrent/combine-google-takeout.git
mv combine-google-takeout/combine.sh ~/dirWithTakeoutZips
cd ~/dirWithTakeoutZips
sh combine.sh
```

The script will unzip the takeout .zips, create new directories for collected artifacts, and then move selected files into new directories.

Artifacts gathered are output to stdout.  If you wanted to log and audit the file list, try:

```
sh combine.sh > takeout.log
```
