//
//  ViewController.m
//  learngit
//
//  Created by apple  on 16/9/7.
//  Copyright © 2016年 apple . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //本地项目上传GitHub
    //跳至本地项目根目录 git init -- git add . --  git commit -m "注释语句" 
    // (github创建项目并拷贝链接)git remote add origin https://github.com/pengpeng12/xiangmu
    // git pull origin master
    // git push -u origin master
    
    //用户主目录下的.gitconfig文件 别名配置文件
   /* git config --global user.name "Your name"
      git config --global user.email "email@example.com"
        git config --global alias.st status
        git config --golbal alias.ci commit
        git config --golbal alias.co checkout
        git config --golbal alias.br branch
      显示颜色 git --config --global color.ui true
      unstage撤销暂存区的修改 git config --global alias.unstage 'reset HEAD'
      显示最后一次提交的信息   git config --global alias.last 'log -1'
      按时间点彩色打印提交信息lg  git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
      
   /*查看别名配置文件 cat .gitconfig
        [user]
            email = ----@139.com
            name = ---12
        [color]
            ui = true
        [alias]
            lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
            st = status
            co = checkout
            ci = commit
            br = branch  
            
            每个git仓库下查看配置文件   $ cat .git/config 
                                        [core]
                                            bare = false
                                            filemode = true
                                            ignorecase = true
                                            precomposeunicode = true
                                            logallrefupdates = true
                                        [core]
                                            repositoryformatversion = 0
                                        [remote "origin"]
                                            url = https://github.com/pengpeng12/learngit.git
                                            fetch = +refs/heads/*:refs/remotes/origin/*
                                            
                                            
                                            


          //忽略特殊文件
       　.gitignore 文件配置   网址-- https://github.com/github/gitignore
         git add -f filename （强制添加，即使被ignore）
         git check-ignore -v filename   检查.gitignore是否写得有问题，需要找出来到底哪个规则写错了
         
         
         //标签管理
         1.git tag V2.0  用于新建一个标签，默认为HEAD，也可以指定一个commit id
         2.git tag -a V2.0 -m "版本2.0 几月几号特殊信息..." 可以指定标签信息
         3.git tag -s V2.0 -m "描述..." 可以用PGP签名标签 「需要安装gpg（GnuPG）」
         4.git tag 可以查看标签
         
         //操作标签
         git push origin V2.0 推送一个标签到远程
         git push origin --tags 推送全部本地标签到远程
         git tag -d V2.0 删除本地标签
         git push origin :refs/tags/V2.0 删除远程标签 （先删除本地再删除远程）
         
         //git常用命令
         git status 查看状态
         git diff filename 查看文件有什么不同的地方：git diff readme.txt
                                            diff --git a/readme.txt b/readme.txt
                                            index d267a1b..0454505 100644
                                            --- a/readme.txt
                                            +++ b/readme.txt
                                            @@ -1,4 +1,4 @@
                                             ========================
                                             Git is a version control system.
                                             Git is free software.
                                            -
                                            +jkkjfksfjkjskfjksjfkddkfks^M
         git log 查看
         git log --pretty=oneline
         git log --graph --pretty=oneline --abbrev -commit  查看分支的合并情况图
         git lg 配置好的别名有时间和颜色
         
         git reflog 查看历史命令，可以看到版本id
         跳转版本： 
         git reset --hard idname 跳到指定ID的版本
         git reset --hard "HEAD^" 跳到上一个版本
         git reset --hard "HEAD^^" 跳到上上个版本
         git reset --hard "HEAD~100" 跳到上100个版本
         
         //修改的东西 没有add 需要撤销时：
         git checkout -- filename  
         //修改的东西 已经add 需要撤销时：
         git reset HEAD filename 把add到暂存区的修改丢弃
         再用 git checkout -- filename 撤销本地的修改
         
         git diff HEAD -- filename 查看工作区和版本库里最新版本的区别
         
         //git删除文件 
         git rm filename
         git commit -m "描述..."
         如果删错了
         用git checkout -- filename 回到刚才的状态
         
         //分支管理
         git checkout -b dev   创建dev分支并切换到dev分支
         git branch   查看当前分支
         git checkout master   在dev上完成工作并提交完后，切换回master
         git merge dev   合并dev到master上 ，另外用 git merge --no-ff -m "描述..." dev  (这样可以看出合并记录)
         git branch -d dev  删除dev分支
         
         //Bug分支 
         正在dev分支工作还未完成无法提交，此时master分支需要修改bug
         git stash              先"储存"工作现场
         git checkout master    跳转至master分支 
         git checkout -b issue-101     在master分支上创建bug分支 issue-101
         修复bug-----完成后提交______ git add filename.m _____  git commit -m "fix bug101"
         回到master分支合并 issue-101分支：git checkout master
                                         git merge --no-ff -m "merged bug fix 101" issue-101
                                         git branch -d issue-101
         回到dev:   git checkout dev  用git status看下状态-----查看git stash list
                    git stash pop   恢复之前"储存"的现场 （恢复时也把stash内容也删了）
                    
                    
         //删除一个没有被合并过的分支：git branch -D dev-2 （强行删除） 
                                        
                                        
         //远程仓库    1.创建SSH Key
                        ssh-keygen -t rsa -C "1234567890@139.com"
                      在主用户目录下的.ssh中找到 id_rsa 和 id_rsa.pub文件
                登陆GitHub，添加"add SSH key",粘贴 id_rsa.pub文件的内容
                
                git remote add origin git@github.com:pengpeng12/项目名.git
                git push -u origin master
         
         克隆远程项目到本地： git clone git@github.com:pengpeng12/项目名.git
         
         
         //查看远程库的信息
         git remote  或者 git remote -v
         git push origin (branch-Name)   如果失败，先用 git pull
         伙伴要在dev分支上开发，就必须创建远程origin的dev到本地
         git checkout -b dev origin／dev
         git pull 如果失败，是因为没指定dev与远程origin／dev分支的链接，用：git branch --set-upstream dev origin/dev
         
         
    */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
