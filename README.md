# git_squash
a simple bash script to perform git squash without pain

## **Installation**

1. Make sure you have Git installed on your machine.
2. Download or clone the script to your local machine.
3. Open a terminal window and navigate to the directory where the script is located.
4. Make the script executable by running the following command:

    ```bash
    
    chmod +x git_squash.sh
    ```


## **Creating an alias**

1. Open your **`.profile`** file in a text editor by running the following command:

    ```bash
    
    vi ~/.profile
    ```

   Note: On some systems (such as macOS), the file may be named **`.bash_profile`** instead of **`.profile`**.

2. Add the following line to the bottom of the file:

    ```bash
    
    alias git-squash="/path/to/script/directory/git_squash.sh"
    ```

   Replace **`/path/to/script/directory`** with the full path to the directory where the script is located. Save and close the file.

   This will create an alias for the script called **`git-squash`**.

3. Source your **`.profile`** file by running the following command:

    ```bash
    
    source ~/.profile
    ```

   This will reload your **`.profile`** file and make the **`git-squash`** alias available in your terminal.


## **Usage**

To use the script, follow these steps:

1. Open a terminal window and navigate to the directory where your Git repository is located.
2. Checkout the feature branch that you want to merge into the main branch.
3. Run the script with the following command:

    ```bash
    
    git-squash <feature-branch> <main-branch>
    ```

   Replace  **`<feature-branch>`** with the name of the branch that you want to merge and **`<main-branch>`** with the name of the main branch.

   For example, if you want to merge a feature branch named "feature-123" into a main branch named "main", run the following commands:

    ```bash
    git-squash feature-123 main
    ```

4. The script will create a backup of the feature branch, create a temporary branch from the main branch, squash the feature branch into the temporary branch, commit the changes, and then point the feature branch to the temporary branch. It will then **force push** the updated feature branch to the remote repository and delete the temporary branch.

That's it! The script should merge the feature branch into the main branch with a squash commit.
