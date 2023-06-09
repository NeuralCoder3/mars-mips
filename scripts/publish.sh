# publish to github page

if [ -d "public" ]; then
  git worktree remove public
fi
git worktree add -B gh-pages public origin/gh-pages

./scripts/bundle.sh ./public

cd public
current_branch=$(git symbolic-ref --short -q HEAD)
if [ "$current_branch" != "gh-pages" ]; then
  echo "Expected build folder to be on gh-pages branch."
  exit 1
fi

git add . && git commit -m "Publishing to gh-pages (publish.sh)"
git push --force origin gh-pages

cd ..
git worktree remove public
