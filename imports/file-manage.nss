//tradu menu(where=sel.count>0 type='file|dir|drive|namespace|back' mode="multiple" title=loc.file_manage image=\uE253)
menu(where=sel.count>0 type='file|dir|drive|namespace|back' mode="multiple" title='Administar Ficheros' image=\uE253) //title='File Manage'
{
	menu(separator="after" title=title.copy_path image=icon.copy_path)
	{
		item(where=sel.count > 1 title='Copy (@sel.count) items selected' cmd=command.copy(sel(false, "\n")))
		item(mode="single" title=@sel.path tip=sel.path cmd=command.copy(sel.path))
		item(mode="single" type='file' separator="before" find='.lnk' title='open file location')
		separator
		item(mode="single" where=@sel.parent.len>3 title=sel.parent cmd=@command.copy(sel.parent))
		separator
		item(mode="single" type='file|dir|back.dir' title=sel.file.name cmd=command.copy(sel.file.name))
		item(mode="single" type='file' where=sel.file.len != sel.file.title.len title=@sel.file.title cmd=command.copy(sel.file.title))
		item(mode="single" type='file' where=sel.file.ext.len>0 title=sel.file.ext cmd=command.copy(sel.file.ext))
	}

	/*item(mode="single" type="file" title=loc.change_extension image=\uE0B5 cmd=if(input(loc.change_extension, "Type extension"),
		io.rename(sel.path, path.join(sel.dir, sel.file.title + "." + input.result))))*/

	menu(separator="after" image=\uE290 title=title.select)
	{
		item(title="Todo" image=icon.select_all cmd=command.select_all) //title="All"
		item(title="Invertir" image=icon.invert_selection cmd=command.invert_selection) //title="Invert" 
		item(title="Nada" image=icon.select_none cmd=command.select_none) //title="None"
	}

	/*item(type='file|dir|back.dir|drive' title=loc.take_ownership image=[\uE194,#f00] admin
		cmd args='/K takeown /f "@sel.path" @if(sel.type==1,null,"/r /d y") && icacls "@sel.path" /grant *S-1-5-32-544:F @if(sel.type==1,"/c /l","/t /c /l /q")')*/
	separator
	//tradu menu(title=loc.show_hide image=icon.show_hidden_files)
	menu(title="Mostrar/Ocultar" image=icon.show_hidden_files) //title="Show/Hide"
	{
		//tradu item(title=loc.system_files image=inherit cmd='@command.togglehidden')
		//tradu item(title=loc.file_name_extensions image=icon.show_file_extensions cmd='@command.toggleext')
		item(title="Archivos del sistema" image=inherit cmd='@command.togglehidden') //title="System files"
		item(title="Extension de archivos" image=icon.show_file_extensions cmd='@command.toggleext') //title="File name extensions"

	}

	//tradu menu(type='file|dir|back.dir' mode="single" title=loc.attributes image=icon.properties)
	menu(type='file|dir|back.dir' mode="single" title='Atributos' image=\uE0F6) //title='Attributes'
	{
		$atrr = io.attributes(sel.path)
		//tradu
		/*item(title=loc.hidden checked=io.attribute.hidden(atrr)
			cmd args='/c ATTRIB @if(io.attribute.hidden(atrr),"-","+")H "@sel.path"' window=hidden)

		item(title=loc.system checked=io.attribute.system(atrr)
			cmd args='/c ATTRIB @if(io.attribute.system(atrr),"-","+")S "@sel.path"' window=hidden)

		item(title=loc.readonly checked=io.attribute.readonly(atrr)
			cmd args='/c ATTRIB @if(io.attribute.readonly(atrr),"-","+")R "@sel.path"' window=hidden)

		item(title=loc.archive checked=io.attribute.archive(atrr)
			cmd args='/c ATTRIB @if(io.attribute.archive(atrr),"-","+")A "@sel.path"' window=hidden)
		separator
		item(title=loc.created keys=io.dt.created(sel.path, 'y/m/d') cmd=io.dt.created(sel.path,2000,1,1) vis=label)
		item(title=loc.modified keys=io.dt.modified(sel.path, 'y/m/d') cmd=io.dt.modified(sel.path,2000,1,1) vis=label)
		item(title=loc.accessed keys=io.dt.accessed(sel.path, 'y/m/d') cmd=io.dt.accessed(sel.path,2000,1,1) vis=label)*/
		item(title='Hidden' checked=io.attribute.hidden(atrr)
			cmd args='/c ATTRIB @if(io.attribute.hidden(atrr),"-","+")H "@sel.path"' window=hidden)
		
		item(title='System' checked=io.attribute.system(atrr)
			cmd args='/c ATTRIB @if(io.attribute.system(atrr),"-","+")S "@sel.path"' window=hidden)
			
		item(title='Read-Only' checked=io.attribute.readonly(atrr)
			cmd args='/c ATTRIB @if(io.attribute.readonly(atrr),"-","+")R "@sel.path"' window=hidden)
			
		item(title='Archive' checked=io.attribute.archive(atrr)
			cmd args='/c ATTRIB @if(io.attribute.archive(atrr),"-","+")A "@sel.path"' window=hidden)
		separator
		item(title="CREATED" keys=io.dt.created(sel.path, 'y/m/d') cmd=io.dt.created(sel.path,2000,1,1) vis=Label)
		item(title="MODIFIED" keys=io.dt.modified(sel.path, 'y/m/d') cmd=io.dt.modified(sel.path,2000,1,1) vis=Label)
		item(title="ACCESSED" keys=io.dt.accessed(sel.path, 'y/m/d') cmd=io.dt.accessed(sel.path,2000,1,1) vis=Label)
	}

	/*menu(mode="single" type='file' find='.dll|.ocx' separator="before" title=loc.register_erver image=\uea86)
	{
		item(title=loc.register admin cmd='regsvr32.exe' args='@sel.path.quote' invoke="multiple")
		item(title=loc.unregister admin cmd='regsvr32.exe' args='/u @sel.path.quote' invoke="multiple")
	}*/

	/*menu(mode="single" type='back' expanded=true)
	{
		menu(separator="before" title=loc.new_folder image=icon.new_folder)
		{
			item(title=loc.datetime cmd=io.dir.create(sys.datetime("ymdHMSs")))
			item(title=loc.guid cmd=io.dir.create(str.guid))
		}

		menu(title=loc.new_file image=icon.new_file)
		{
			$dt = sys.datetime("ymdHMSs")
			item(title='TXT' cmd=io.file.create('@(dt).txt', 'Hello World!'))
			item(title='XML' cmd=io.file.create('@(dt).xml', '<root>Hello World!</root>'))
			item(title='JSON' cmd=io.file.create('@(dt).json', '[]'))
			item(title='HTML' cmd=io.file.create('@(dt).html', "<html>\n\t<head>\n\t</head>\n\t<body>Hello World!\n\t</body>\n</html>"))
		}
	}*/

	item(where=!wnd.is_desktop title=title.folder_options image=icon.folder_options cmd=command.folder_options)
}