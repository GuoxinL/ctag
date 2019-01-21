if [ ! $1 ];
then
  echo "The first parameter is null."
  echo "Please execute 'ctag fix' or 'ctag period'"
  exit
fi

git tag -d `date +%Y%m%d`_$1_tag
git push origin :refs/tags/`date +%Y%m%d`_$1_tag
git tag `date +%Y%m%d`_$1_tag
git push origin `date +%Y%m%d`_$1_tag
