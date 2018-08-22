## satRday_site_template

### How to use me

#### Mirror the repository

1. Open Git Bash.

2. Create a bare clone of the repository.

  ```
  git clone --bare satRdays/satRday_site_template.git
  ```

3. Mirror-push to the new repository.

```
cd satRday_site_template.git
git push --mirror https://github.com/satRdays/[cityYEAR].git
```

4. Remove the temporary local repository you created in step 1.

```
cd ..
rm -rf satRdays/satRday_site_template.git
```
