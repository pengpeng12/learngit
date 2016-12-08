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
         
         //
         
    */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
