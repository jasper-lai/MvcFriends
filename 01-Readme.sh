# ================= [ Git and GitHub ] =======================

# ========== 1.. 初始化 ============

# ----- (1) command line -----
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git init
Initialized empty Git repository in D:/22-Projects.Git/52-ASP.NET Core/MvcFriends/.git/

# ----- (2) UI 操作 -----

# ========== 2.. 加入 .gitignore ============

# ----- (1) command line -----
# 建立完 .gitignore 後, 可以發現 需作版控的檔案數量, 由 392 個減為 94 個
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> dotnet new gitignore
範本「dotnet gitignore 檔案」已成功建立。

# ----- (2) UI 操作 -----

# ========== 3.. 暫存所有變更 (將所有檔案加入版控) ============

# ----- (1) command line -----
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git add .
warning: in the working copy of '.vscode/launch.json', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'Data/DatabaseContext.cs', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'Lib/Person.cs', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'Models/Friend.cs', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'wwwroot/lib/bootstrap/dist/css/bootstrap-grid.css', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'wwwroot/lib/bootstrap/dist/css/bootstrap-grid.min.css', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'wwwroot/lib/bootstrap/dist/css/bootstrap-grid.rtl.css', LF will be replaced by CRLF the next time Git touches it
...

# ------------
# 參考處理方式:
# ------------
# 經實測, 上述警告訊息並不影響程式修訂及版控, 只是提醒上述檔案是 LF 結尾, 如果有人修訂, 並上傳到 GitHub,
# 其它 Windows 端的使用者同步下來的時候, 會是 CRLF (under core.autocrlf=true)
#
# https://www.jasperstudy.com/2022/10/end-of-line-part-1-git_01716567172.html
# (傑士伯) 行尾結束字元探討(End of Line) PART 1 : Git
# https://www.jasperstudy.com/2022/10/end-of-line-part-2-vs-code_25.html
# (傑士伯) 行尾結束字元探討(End of Line) PART 2 : Vs Code
# 上述 2 篇會參考 蔡煥麟 及 Will保哥 的文章
# https://noelhsiao.medium.com/%E9%81%87%E5%88%B0-warning-lf-will-be-replaced-by-crlf-in-%E8%A9%B2%E6%80%8E%E9%BA%BC%E8%A7%A3-ab9882ee07be
# 發生原因: 如果團隊成員都在 Windows 的話 (注意: remote container 是 ubuntu 的話, 算是 Linux), 是不會出太大問題.
# https://www.aleksandrhovhannisyan.com/blog/crlf-vs-lf-normalizing-line-endings-in-git/
# If one developer uses Windows and another uses Mac or Linux, and they each save and commit the same files,
# they may see line ending changes in their Git diffs—a conversion from CRLF to LF or vice versa. 
# This leads to unnecessary noise due to single-character changes and can be quite annoying.
# For this reason, Git allows you to configure line endings in one of two ways: 
# ++ by changing your local Git settings or 
# ++ by adding a .gitattributes file to your project.

# 先回復一下: To unstage all changes for all files:
# https://stackoverflow.com/questions/348170/how-do-i-undo-git-add-before-commit
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git reset

# 這個方式也可以
PS D:\22-Projects.Git\52-ASP.NET Core\MvcApp01> git rm --cached *
rm '.gitignore'
rm '.vscode/launch.json'
rm '.vscode/settings.json'
rm '.vscode/tasks.json'
...

# git 系統層級的設定
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git config --system --list
http.sslcainfo=C:/Program Files/Git/mingw64/ssl/certs/ca-bundle.crt
http.sslbackend=openssl
diff.astextplain.textconv=astextplain
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
credential.helper=manager-core
core.editor="C:\\Program Files\\Notepad++\\notepad++.exe" -multiInst -notabbar -nosession -noPlugin
core.autocrlf=true
core.fscache=true
core.symlinks=false
pull.rebase=false
credential.https://dev.azure.com.usehttppath=true
init.defaultbranch=master

# git 使者層級的設定
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git config --global --list
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
user.name=jasper.lai
user.email=jasper.lai@gmail.com

# 如果沒有跨平台的需求, 蔡煥麟 是建議將 單一 repository 設為 false
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\.git> git config core.autocrlf false
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\.git> cat config
[core]
        repositoryformatversion = 0
        filemode = false
        bare = false
        logallrefupdates = true
        symlinks = false
        ignorecase = true
        autocrlf = false      <== 多加了這個設定

# git 合併前述設定的最終結果
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\.git> git config --list
http.sslcainfo=C:/Program Files/Git/mingw64/ssl/certs/ca-bundle.crt
http.sslbackend=openssl
diff.astextplain.textconv=astextplain
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
credential.helper=manager-core
core.editor="C:\\Program Files\\Notepad++\\notepad++.exe" -multiInst -notabbar -nosession -noPlugin
core.autocrlf=true    <== 這個是 system 的設定
pull.rebase=false
credential.https://dev.azure.com.usehttppath=true
init.defaultbranch=master
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
user.name=jasper.lai
user.email=jasper.lai@gmail.com
core.repositoryformatversion=0
core.filemode=false
core.bare=false
core.logallrefupdates=true
core.symlinks=false
core.ignorecase=true
core.autocrlf=false      <== 這個是 .git/config 裡的設定, 會蓋掉 global 的

# 重新儲存變更, 就沒有再出現警告訊息
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git add .

# ----- (2) UI 操作 -----
# 不會出現警告訊息

# 移掉 repository level 的 autocrlf 設定, 回到 user or system level
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends\.git> git config --unset core.autocrlf        


PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git config --list
http.sslcainfo=C:/Program Files/Git/mingw64/ssl/certs/ca-bundle.crt
http.sslbackend=openssl
diff.astextplain.textconv=astextplain
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
credential.helper=manager-core
core.editor="C:\\Program Files\\Notepad++\\notepad++.exe" -multiInst -notabbar -nosession -noPlugin
core.autocrlf=true
core.fscache=true
core.symlinks=false
pull.rebase=false
credential.https://dev.azure.com.usehttppath=true
init.defaultbranch=master
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
user.name=jasper.lai
user.email=jasper.lai@gmail.com
core.repositoryformatversion=0
core.filemode=false
core.bare=false
core.logallrefupdates=true
core.symlinks=false
core.ignorecase=true
......               <== core.autocrlf 已經消失了

# 查一下最後的結果是 true
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git config core.autocrlf
true                          

# 再加入 暫存區 (staged)
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git add .
warning: in the working copy of '.vscode/launch.json', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'Data/DatabaseContext.cs', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'Lib/Person.cs', LF will be replaced by CRLF the next time Git touches it

# ========== 4..提交認可 ============

# ----- (1) Command Line -----
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git commit -m "Initial Commit"
[master (root-commit) d4be6b0] Initial Commit
 95 files changed, 76270 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 .vscode/launch.json
 create mode 100644 .vscode/tasks.json
 create mode 100644 00-Readme.sh
 create mode 100644 01-Readme.sh
 create mode 100644 Controllers/FriendsController.cs

# 想要移掉 commit, 但出現錯誤
# https://gitbook.tw/chapters/using-git/reset-commit
# https://blog.csdn.net/voledmort/article/details/100794005
# 該倉庫到目前為止只有commit過一次代碼，故已經是head版本，也會報這樣的錯，無需關心直接 commit 或者 rm即可
# https://www.atlassian.com/git/tutorials/resetting-checking-out-and-reverting
# For this reason, git revert should be used to undo changes on a public branch, 
#              and git reset should be reserved for undoing changes on a private branch. 
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git log --oneline
c1787be (HEAD -> master) Initial Commit

PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git reset c1787be^
fatal: ambiguous argument 'c1787be^': unknown revision or path not in the working tree.
Use '--' to separate paths from revisions, like this:
'git <command> [<revision>...] -- [<file>...]'

# 修改一下文件, 作 commit 看看能否回到前一個 commit
# --> 取消一個 commit, 把該 commit 的相關檔案, 全部回放到工作區 (非 stage 區, 也非 local repository 區)
# --> 目的: 把前一個 commit 的修訂取回工作目錄, 進行修改, 再 commit 回去
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git log --oneline
f4e13b0 (HEAD -> master) 01-Readme.sh modified
c1787be Initial Commit

PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git reset f4e13b0^
Unstaged changes after reset:
M       01-Readme.sh

PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   01-Readme.sh

no changes added to commit (use "git add" and/or "git commit -a")

# ----- (2) UI 操作 -----


# ========== 5.. 在 GitHub 建立 repository ============
# (圖片) 略

# ========== 6.. 將 local repository 送到 GitHub ============

PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git remote add origin https://github.com/jasper-lai/MvcFriends.git

PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git push -u origin master
Enumerating objects: 127, done.
Counting objects: 100% (127/127), done.
Delta compression using up to 8 threads
Compressing objects: 100% (120/120), done.
Writing objects: 100% (127/127), 981.67 KiB | 506.00 KiB/s, done.
Total 127 (delta 36), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (36/36), done.
To https://github.com/jasper-lai/MvcFriends.git
 * [new branch]      master -> master
branch 'master' set up to track 'origin/master'.


# ========== 7.. 建立分支 ============

# 目前在 master
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git branch 
* master

# 建立 feature1 分支, 但仍在 master 分支上
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git branch feature1
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git branch
  feature1
* master
# 切換至 feature1 分支
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git checkout feature1
Switched to branch 'feature1'
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git branch
* feature1
  master

# 建立 feature2 分支, 並切換至 feature2 分支
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git checkout -b feature2
Switched to a new branch 'feature2'
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git branch
  feature1
* feature2
  master

# 修改文件, 進行 commit
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git commit -m "01-Readme.sh in feature2 modified"
[feature2 7941927] 01-Readme.sh in feature2 modified
 1 file changed, 54 insertions(+)

# 將 feature2 的修訂, 送交到 GitHub
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git push -u origin feature2
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 901 bytes | 180.00 KiB/s, done.
Total 3 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
remote: 
remote: Create a pull request for 'feature2' on GitHub by visiting:
remote:      https://github.com/jasper-lai/MvcFriends/pull/new/feature2
remote:
To https://github.com/jasper-lai/MvcFriends.git
 * [new branch]      feature2 -> feature2
branch 'feature2' set up to track 'origin/feature2'.

# ========== 8.. 合併分支 ============

# 切回 master 分支
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git checkout master
Switched to branch 'master'
Your branch is up to date with 'origin/master'.

# 將 feature2 合併至 master
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git merge feature2
Updating 44c6a0d..7941927
Fast-forward
 01-Readme.sh | 54 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)
 
# 合併後上傳至 GitHub
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git push 
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/jasper-lai/MvcFriends.git
   44c6a0d..7941927  master -> master

# 切至 feature2, 並修訂文件, 利用 UI 上傳至 GitHub
PS D:\22-Projects.Git\52-ASP.NET Core\MvcFriends> git checkout feature2
Switched to branch 'feature2'
Your branch is up to date with 'origin/feature2'.


# ========= [[附錄]] ==========

# clone 保哥的 github
PS D:\22-Projects.Git\52-ASP.NET Core> cd Will
PS D:\22-Projects.Git\52-ASP.NET Core\Will> git clone https://github.com/doggy8088/frontend-tools.git
Cloning into 'frontend-tools'...
remote: Enumerating objects: 598, done.
Receiving objects:  98% (587/598)ed 0 (delta 0), pack-reused 598
Receiving objects: 100% (598/598), 89.48 KiB | 338.00 KiB/s, done.
Resolving deltas: 100% (186/186), done.

PS D:\22-Projects.Git\52-ASP.NET Core\Will> cd frontend-tools
PS D:\22-Projects.Git\52-ASP.NET Core\Will> git status
On branch master
Your branch is up to date with 'origin/master'.

nothing to commit, working tree clean


# ++++++
# 待實證: 找一台 Linux 主機試試 git checkout or git clone
# ++++++
