  ## By Mohamed Elsayed Rabie



```js

- `git clone "link"`: This command is used to clone a remote repository to your local machine. The "link" parameter should be replaced with the URL of the remote repository you want to clone.
    
- `git status`: This command is used to check the status of your local repository. It shows which files have been modified, which files have been added to the staging area, and which files are not being tracked by Git.
    
- `git add "name of files"`: This command is used to add specific files to the staging area. You can replace "name of files" with the names of the files you want to add.
    
- `git add .` : This command is used to add all modified files to the staging area.
    
- `git reset head "name of file"`: This command is used to remove a file from the staging area. You can replace "name of file" with the name of the file you want to remove.
    
- `git commit -m "the message you want to write"`: This command is used to create a new commit with the changes you've made. The "-m" parameter is used to add a commit message, which should briefly describe the changes you've made.

   
```


## get back in versions and changes

```js
- `git restore <file>` : this dispcard changed that not staged 
  يعني من الاخر بيمسح التعديلات الي مش مرفوعه ع الستديج

 - `git restore --staged <file>` : to make unstaged  
   after this if you want to discard these changes make git restore 

 - `git commit --amend` : to edit the last commit description

 - `git log -- oneline` : بيظهر اللوج بشكل احسن شويه 

 - `git diff` : get the difference between the working tree and stage area 

 - `git diff --staged` : this get the difference between staged area and the repo 
- `git diff <shaFirstOne> <shaSecondOne>`: this get difference between 2 commits

// Versions 

	- `git reset HEAD~1` : ده كدا بيرجع لاخر فيرجن 
	  and you can change number 1 to any number version
	  you can add option -- hard to reflict the changes to working tree directly       but this is dingerace

	  - git reflog : to see references operations 
	  -fast forward to back يعني انت رحعت للفيرجن الي فات وعايز ترجع تاني للي كنت فيها
	  git reset --hard HEAD@{1}  // ده كدا هيرجع للفيرجن دي تاني fast forward 
	  // واحد بيرجع والتاني بيخش قدام

```


![[Pasted image 20230712100209.png]]
```md

- `git branch`: This command is used to list all the branches in your local repository, and to show which branch you are currently on.
    
- `git remote -v`: This command is used to list the names and URLs of all the remote repositories your local repository is connected to.
    
- `git push -u nameofrepo nameofbranch`: This command is used to push your local commits to a remote repository. Replace "nameofrepo" with the name of the remote repository and "nameofbranch" with the name of the branch you want to push to.
    
- `git pull nameofrepo`: This command is used to download changes from a remote repository to your local repository. It retrieves all the changes from the remote repository and integrates them into your local repository.
    
- `git log --oneline`: This command is used to display the commit history of the current branch. It will show you the author, date, and commit message for each commit.
```

```sh
### …or create a new repository on the command line

echo "# firstFrameWork" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:MooSayed1/firstFrameWork.git
git push -u origin main
```
 # Shell secure key
 ```shell
git remote set-url origin https://github.com/OWNER/REPOSITORY.git
```
>to switch between HTTPS and SSH

```shell
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
to generate ssh key and connect by github

```shell
$ git remote -v
> origin  git@github.com:OWNER/REPOSITORY.git (fetch)
> origin  git@github.com:OWNER/REPOSITORY.git (push)
```
# 
```md
- `git help config`: This command is used to open the Git manual, which contains detailed information about configuring Git and other Git commands.
    
- `git config -l` or `git config --list`: This command is used to display a list of all the configuration settings in your Git installation.
    
- `git config --global user.name`: This command is used to display the username associated with your Git account.
    
- `git config --global user.name "user name"`: This command is used to set the username associated with your Git account.
    
- `git config --global user.email`: This command is used to display the email address associated with your Git account.
    
- `git config --global user.email "user email"`: This command is used to set the email address associated with your Git account.
    
- `git config --global --edit`: This command is used to open the Git configuration file in your default text editor, allowing you to edit the configuration settings directly.
```

## ```
# Alias

- `git config --global alias.AbbreviationOfCommand command`: This command is used to create an alias for a Git command. Replace "AbbreviationOfCommand" with the abbreviation you want to use for the command, and "command" with the full Git command you want to alias.

For example, if you want to create an alias for the `commit -m` command, you can use the following code:
```shell
git config --global alias.cm "commit -m"
```

#

Git is a popular version control system used in software development. GitHub is a web-based platform that provides hosting for Git repositories and also offers several other useful features. Here are some of the most commonly used Git Hub commands:
```md

- `git init`: Initializes a new Git repository locally.
- `git clone {repository URL}`: Creates a local copy of a remote repository.
- `git add {file}`: Adds the specified file to the staging area.
- `git commit -m "{commit message}"`: Commits changes to the repository with a specified commit message.
- `git push`: Pushes committed changes to the remote repository.
- `git pull`: Fetches and merges changes from the remote repository to the local repository.
- `git branch`: Lists all branches in the repository.
- `git checkout {branch name}`: Switches to the specified branch.
- `git merge {branch name}`: Merges the specified branch into the current branch.
- `git status`: Lists the current status of the repository.

These are just a few of the many commands available in Git and GitHub. For more information, consult the official documentation or search for online tutorials and guides. Happy coding!
```

# Branches 

```md
- `git branch nameofbranch`: This command is used to create a new branch with the name "nameofbranch". Replace "nameofbranch" with the name you want to give to your new branch.
    
- `git branch`: This command is used to list all the branches in your local repository.
    
- `git checkout nameofbranch`: This command is used to switch to the branch with the name "nameofbranch". Replace "nameofbranch" with the name of the branch you want to switch to.
    
- `git branch -d nameofbranch`: This command is used to delete the branch with the name "nameofbranch". However, if you have made changes in the branch that you have not merged, Git will not allow you to delete the branch. You will need to either merge the changes first or use the `-D` option to force the deletion.
    
- `git branch -D nameofbranch`: This command is used to force delete the branch with the name "nameofbranch", even if you have made changes in the branch and have not merged them.
    
- `git checkout -b nameofbranch`: This command is used to create a new branch with the name "nameofbranch" and switch to it in one step.
• `git branch -m newName` rename breach you are in it 
• `git merge nameofbranch`  merge master or the brach you are in by the branch you want
```
# 

