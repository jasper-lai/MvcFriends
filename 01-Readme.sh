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

# ========== 3.. 暫存所有變更 ============

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
