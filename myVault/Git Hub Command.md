  ## By Mohamed

By Mohamed Elsayed

```md

- `git clone "link"`: This command is used to clone a remote repository to your local machine. The "link" parameter should be replaced with the URL of the remote repository you want to clone.
    
- `git status`: This command is used to check the status of your local repository. It shows which files have been modified, which files have been added to the staging area, and which files are not being tracked by Git.
    
- `git add "name of files"`: This command is used to add specific files to the staging area. You can replace "name of files" with the names of the files you want to add.
    
- `git add .` : This command is used to add all modified files to the staging area.
    
- `git reset head "name of file"`: This command is used to remove a file from the staging area. You can replace "name of file" with the name of the file you want to remove.
    
- `git commit -m "the message you want to write"`: This command is used to create a new commit with the changes you've made. The "-m" parameter is used to add a commit message, which should briefly describe the changes you've made.
```

![[Pasted image 20230712100209.png]]
```md

- `git branch`: This command is used to list all the branches in your local repository, and to show which branch you are currently on.
    
- `git remote -v`: This command is used to list the names and URLs of all the remote repositories your local repository is connected to.
    
- `git push -u nameofrepo nameofbranch`: This command is used to push your local commits to a remote repository. Replace "nameofrepo" with the name of the remote repository and "nameofbranch" with the name of the branch you want to push to.
    
- `git pull nameofrepo`: This command is used to download changes from a remote repository to your local repository. It retrieves all the changes from the remote repository and integrates them into your local repository.
    
- `git log`: This command is used to display the commit history of the current branch. It will show you the author, date, and commit message for each commit.
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
