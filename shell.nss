settings
{
	priority=1
	exclude.where = !process.is_explorer
	showdelay = 200
	// Options to allow modification of system items
	modify.remove.duplicate=1
	tip.enabled=true
}

// localization
//import lang 'imports/lang/en.nss'

import 'imports/theme.nss'
import 'imports/images.nss'
import 'imports/modify.nss'

//tradu menu(mode="multiple" title=loc.pin_unpin image=icon.pin)
menu(mode="multiple" title="Anclar/Desanclar" image=icon.pin)
{
}

menu(mode="multiple" title=title.more_options image=icon.more_options)
{
}

modify(where=this.title.length > 31 menu=title.more_options)

import 'imports/terminal.nss'
import 'imports/file-manage.nss'
//import 'imports/develop.nss'
import 'imports/goto.nss'
import 'imports/taskbar.nss'

item(title='Desarrollo' image=\uE272 sep=bottom position=top cmd='wt.exe' args='-d "@sel.path\." ; %USERPROFILE%\AppData\Local\Programs\Microsoft VS Code\Code.exe "@sel.path"'
	where=(@sel.parent=='%USERPROFILE%\Documents')
)

item(title='Mover a Instaladores' image=\uE0E0 sep=bottom position=top 
	find='.exe|.msi|.zip|.rar|.7z' where=(@sel.parent=='%USERPROFILE%\Downloads')
	cmd=io.move(sel.path, path.combine('D:\Instaladores',sel.name))
	//cmd='wt.exe' args='Powershell -c move /Y @sel.path.quote "D:\Instaladores"'
	//cmd='wt.exe' args='Powershell -c Move-Item -Path @sel.path.quote -Destination "D:\Instaladores"'

)
