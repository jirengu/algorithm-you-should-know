rm -rf _book
gitbook build
cp assets/circle.yml _book/circle.yml
cd _book
git init
git add -A
git commit -m 'update book'
git push -f git@github.com:jirengu/algorithm-you-should-know.git master:gh-pages