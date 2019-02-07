
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
NC='\033[0m'

mkdir -p youtube;
for dir in */YouTube; do
  for vid in $dir/videos/*.mp4; do
    printf "${RED}[youtube]${NC} ${vid}\n"
    cp "${vid}" youtube;
  done
done

mkdir -p drive;
for dir in */Drive; do
  for doc in $dir/*; do
    printf "${GREEN}[drive]${NC} ${doc}\n"
    cp -R "${doc}" drive;
  done
done

mkdir -p contacts;
for vcf in */Contacts/All\ Contacts/*; do
  printf "${BLUE}[contacts]${NC} ${vcf}\n"
  cp "${vcf}" contacts;
done

mkdir -p gmail;
mailbox=All\ mail\ Including\ Spam\ and\ Trash-013.mbox
printf "${CYAN}[gmail]${NC} ${mailbox}\n"
mv "${mailbox}" gmail;
