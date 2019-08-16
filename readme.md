# 欢迎使用 GoBat

**GoBat是一个在windows下对Go1.8版本以下的项目环境做设置的工具**

主要功能是在windows右键菜单增加Go命令行的入口，在项目文件夹空白处右键即可打开GoBat，默认设置GOPATH为当前文件夹，并设置当前文件夹的bin目录到全局path环境变量，值得提示的是这些变量仅仅在这个GoBat里有效，不影响任何东西。当你使用go get 第三方时，下载的文件将会在当前目录下的src目录里。并可使用ls,cat命令。

## 如何使用

将GoBat.cmd和GoBat.reg复制到Go的根目录，windows下一般在C:\go。
并修改Gobat.reg里面的路径到当前文件夹。

    Windows Registry Editor Version 5.00

	[HKEY_CLASSES_ROOT\Directory\Background\shell\go_bat]
	@="GoBat"
	"icon"="C:\\Go\\favicon.ico"

	[HKEY_CLASSES_ROOT\Directory\Background\shell\go_bat\command]
	@="C:\\Go\\GoBat.cmd"

需要注意的是注册表文件里的路径是双反斜杠的，这个reg的作用是增加右键菜单项和指定它的图标，修改完成后双击打开注册。在任意文件夹下右击鼠标你将看到GoBat项，点击并使用它，希望给你们带来便捷。值得一提的是，在windows10或前几个版本，就可以按住shift+鼠标右键也能在当前目录呼出命令行或者PowerShell界面，甚至安装了WSL linux子系统的win10还能呼出Linux shell，但显而易见的是它并没有设置临时环境变量便于开发的功能。还有一点，至于为什么没有做一键安装工具，是因为这是个小众工具，go语言开发者本来就不多，仅仅是我用而已，我也不知道是否有其他更好的解决方案，安装不是很麻烦，安装一次用几年，还能让小白了解windows，一举多得。

