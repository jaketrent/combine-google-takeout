
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

for zip in *.zip; do
  printf "${YELLOW}[unzip]${NC} ${zip}\n"
  unzip -qq $zip -d `echo "$zip" | sed "s/.zip//"`
done

mkdir -p youtube;
for dir in */Takeout/YouTube; do
  for vid in $dir/videos/*.mp4; do
    printf "${RED}[youtube]${NC} ${vid}\n"
    cp "${vid}" youtube;
  done
done

mkdir -p drive;
for dir in */Takeout/Drive; do
  for doc in $dir/*; do
    printf "${GREEN}[drive]${NC} ${doc}\n"
    cp -R "${doc}" drive;
  done
done

mkdir -p contacts;
for vcf in */Takeout/Contacts/All\ Contacts/*; do
  printf "${BLUE}[contacts]${NC} ${vcf}\n"
  cp "${vcf}" contacts;
done

mkdir -p gmail;
mailbox=All\ mail\ Including\ Spam\ and\ Trash-013.mbox
printf "${CYAN}[gmail]${NC} ${mailbox}\n"
mv "${mailbox}" gmail;
