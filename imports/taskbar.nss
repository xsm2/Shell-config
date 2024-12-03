menu(type='taskbar' expanded=true vis=not(key.shift()))
{
	item(title='Terminal' image=icon.run_with_powershell cmd='wt.exe' arg='-d "@sel.path\."')
}
menu(type="taskbar" vis=key.shift() or key.lbutton() pos=0 title=app.name image=\uE249)
{
	item(title="config" image=\uE10A cmd='"@app.cfg"')
	item(title="manager" image=\uE0F3 admin cmd='"@app.exe"')
	item(title="directory" image=\uE0E8 cmd='"@app.dir"')
	item(title="version\t"+@app.ver vis=label col=1)
	item(title="docs" image=\uE1C4 cmd='https://nilesoft.org/docs')
	item(title="donate" image=\uE1A7 cmd='https://nilesoft.org/donate')
}
menu(where=@(this.count == 0) type="taskbar" image=icon.settings expanded=true)
{
	menu(title="Apps" image=\uE254)
	{
		//item(title='Paint' image=\uE116 cmd='mspaint')
		//item(title='Edge' image cmd='@sys.prog32\Microsoft\Edge\Application\msedge.exe')
		//item(title='Calculator' image=\ue1e7 cmd='calc.exe')
		item(title=str.res('regedit.exe,-16') image=\uE142 cmd='regedit.exe')
		//sep
		//item(title='WinSCP' image cmd='D:\config\Programs\network\WinSCP\WinSCP.exe')
		//item(title="GitHubDesktop" image cmd='D:\config\Programs\dev\github\GitHubDesktop.exe')
		item(title='Administrador de Discos' image=\uE091 cmd='diskmgmt.msc')
		item(title='Administrador de Dispositivos' image=\uE15A cmd='devmgmt.msc')
		item(title='Visor de Eventos' image=\uE1C2 cmd='eventvwr')
		item(title='Restaurar AutoActions' vis=key.shift() image=\uE0A0 cmd='wt.exe' 
			args='new-tab cmd /c taskkill/im AutoActions.exe /T /F && D:\Documentos\Programas\HDRProfile\RestoreBackUp.bat && D:\Documentos\Programas\HDRProfile\AutoActions.exe'
		)
	}
	menu(title='Ventanas' image=\uE1FB) //title=title.windows
	{
		item(title=title.cascade_windows cmd=command.cascade_windows)
		item(title=title.Show_windows_stacked cmd=command.Show_windows_stacked)
		//item(title=title.Show_windows_side_by_side cmd=command.Show_windows_side_by_side)
		sep
		item(title=title.minimize_all_windows cmd=command.minimize_all_windows)
		item(title=title.restore_all_windows cmd=command.restore_all_windows)
	}
	item(title=title.desktop vis=@key.shift() image=icon.desktop cmd=command.toggle_desktop)
	item(title='Reiniciar el explorador' vis=@key.shift() image=\uE025 cmd=command.restart_explorer) //title=title.exit_explorer
	import 'gotoConfig.nss'
	item(title=title.settings vis=not(@key.shift())  image=icon.settings(auto, image.color1) cmd='ms-settings:')
	item(title=title.task_manager sep=both image=icon.task_manager cmd='taskmgr.exe')
	item(title=title.taskbar_Settings sep=both image=inherit cmd='ms-settings:taskbar')
}