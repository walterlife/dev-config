# dev-tmux-config

## 说明
平时工作时，在linux平台上开发所涉及的相关配置和使用

## vim
+ 该目录下包含了平时自己使用的vim插件配件，使用bundle 管理， 使用

```bash
cp -r vim ~/.vimrc && cd ~/ && ln -fs .vim/comm.vim .vimrc 
```

## tmux
+ tmux.conf 是 tmux的配置文件，使用

```bash
cp tmux.conf ~/.tmux.conf
```

+ tmux 的介绍和使用 可以参看 http://blog.jobbole.com/87278/

## maven
+ archetype-catalog.xml  是创建 maven project 时使用本地 tag 文件

```bash
mvn archetype:generate -D:DarchetypeCatalog=local 
```
+ 参考 http://chenrongrong.info/2015/05/23/maven-generate.html
+ 如何使用 nexus 搭建私服 开一参考本人博客 http://walterlife.github.io/2015/06/12/linux%20%E4%B8%8Amaven+nexus%20%E6%9E%84%E5%BB%BA%E7%8E%AF%E5%A2%83%E6%90%AD%E5%BB%BA/
