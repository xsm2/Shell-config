menu(type='Taskbar' where=window.is_taskbar||sel.count mode=mode.multiple title=title.go_to sep=sep.both image=\uE14A)
{
	menu(title='Carpeta' expanded=true image=\uE1F4) //title='Folder'
	{
		//item(title='Windows' image=inherit cmd=sys.dir)
		//item(title='System' image=inherit cmd=sys.bin)
		item(title='Program Files' image=inherit cmd=sys.prog)
		item(title='Program Files x86' image=inherit cmd=sys.prog32)
		//item(title='ProgramData' image=inherit cmd=sys.programdata)
		item(title='Applications' image=inherit cmd='shell:appsfolder')
		//item(title='Users' image=inherit cmd=sys.users)
		separator
		//item(title='@user.name@@@sys.name' vis=label)
		//item(title='Desktop' image=inherit cmd=user.desktop)
		//item(title='Downloads' image=inherit cmd=user.downloads)
		//item(title='Pictures' image=inherit cmd=user.pictures)
		//item(title='Documents' image=inherit cmd=user.documents)
		item(title='Startmenu' image=inherit cmd=user.startmenu)
		//item(title='Profile' image=inherit cmd=user.dir)
		item(title='AppData' image=inherit cmd=user.appdata)
		//item(title='Temp' image=inherit cmd=user.temp)
		sep
		item(title='Nilesoft Shell' image=\uE1F4 cmd='explorer.exe' args='C:\Program Files\Nilesoft Shell')
		item(title='Nilesoft Shell Git' image=\uE1F4 cmd='explorer.exe' args='%USERPROFILE%\Documents\Shell\config\en')
		sep
		item(title='Juegos' image=\uE1F4 cmd='explorer.exe' args='D:\Documentos\Juegos')
		item(title='SteamApps' image=\uE1F4 cmd='explorer.exe' args='C:\Program Files (x86)\Steam\steamapps\common')
		item(title='HDRProfile' image=\uE1F4 cmd='explorer.exe' args='D:\Documentos\Programas\HDRProfile')
		sep
	}
	
}