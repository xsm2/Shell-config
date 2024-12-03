// modify items
// Remove items by identifiers
modify(mode=mode.multiple
	where=this.id(id.restore_previous_versions,id.cast_to_device)
	vis=vis.remove)

modify(type="recyclebin" where=window.is_desktop and this.id==id.empty_recycle_bin pos=1 sep)

modify(find="unpin*" pos="bottom" menu="Pin/Unpin")
modify(find="pin*" pos="top" menu="Pin/Unpin")

modify(where=this.id==id.copy_as_path menu="administar ficheros")//"file manage"
modify(type="dir.back|drive.back" where=this.id==id.customize_this_folder pos=1 sep="top"  menu="administar ficheros")//menu="file manage")

modify(where=str.equals(this.name, ["open in terminal", "open linux shell here"]) || this.id==id.open_powershell_window_here
	pos="bottom" menu="Terminal")

modify(mode=mode.multiple
	where=this.id(
		id.send_to,
		id.share,
		id.create_shortcut,
		id.set_as_desktop_background,
		id.rotate_left,
		id.rotate_right,
		id.map_network_drive,
		id.disconnect_network_drive,
		id.format,
		id.eject,
		//id.give_access_to,
		id.include_in_library,
		id.print
	)
	pos=1 menu=title.more_options)

//Hidden
modify(find='Abrir en Terminal' vis=Hidden)
modify(find='Agregar a favoritos' vis=Hidden)
modify(find='Editar con Clipchamp' vis=Hidden)
modify(find='Copiar como ruta de acceso' vis=Hidden)
modify(find='"Editar"' vis=Hidden)
modify(find='"Edición"' vis=Hidden)
modify(where=this.id==id.give_access_to vis=Hidden)
modify(find='Abrir la ventana de PowerShell aquí' vis=Hidden)
modify(find='Nuevo' where=regex.match(sel.file, '.*\.doc.{0,1}') vis=Hidden) //elimina la opcion de nuevo de los words

//Terminal
modify(find='Git GUI Here' pos=pos.bottom menu='Terminal' title='Git GUI')
modify(find='Git Bash Here' pos=pos.bottom menu='Terminal' title='Git Bash')

//File Manage
modify(find='Personalizar esta carpeta' menu="administar ficheros")
modify(find='Conceder acceso a' menu="administar ficheros")

//Pin/Unpin
modify(find='Anclar a Inicio' menu="Anclar/Desanclar" pos=pos.top)
modify(find='Anclar a Acceso rápido' image=\uE0C9 menu="Anclar/Desanclar" pos=pos.top)
modify(find='Desanclar de Acceso rápido' image=\uE0C7 menu="Anclar/Desanclar")
modify(find='Eliminar de Acceso rápido' image=[[\uE0C9],[\uE038]] menu="Anclar/Desanclar")
modify(find='Anclar a la barra de tareas' menu="Anclar/Desanclar" pos=pos.top)
modify(find='Desanclar de Inicio' menu="Anclar/Desanclar")
modify(find='Desanclar desde Inicio' image=\uE0C7 menu="Anclar/Desanclar")

//More Options
modify(find='Abrir con Visual Studio' menu=title.more_options)
modify(find='NanaZip' menu=title.more_options)
modify(find='Firmar con AutoFirma' menu=title.more_options)
modify(find='Generar huella digital con AutoFirma' menu=title.more_options)
modify(find='Examinar con Microsoft Defender' menu=title.more_options)
modify(find='Girar a la' menu=title.more_options)
modify(find='Compartir' menu=title.more_options)
modify(find='Enviar a' menu=title.more_options)
modify(find='Restaurar versiones anteriores' menu=title.more_options)
modify(find='Transmitir en dispositivo' image=\uE1AC menu=title.more_options)
modify(find='Imprimir' menu=title.more_options)
modify(find='Incluir en biblioteca' menu=title.more_options)
modify(find='Crear acceso directo' menu=title.more_options)

//Icons
modify(find='Deshacer *' image=\uE04E)
modify(find='Rehacer *' image=\uE04C)

modify(find='*Abrir' image=\uE108)
modify(find='Desinstalar' image=[[\uE0BD, #e0041a],[\uE038, #e0041a]])
modify(find='Reparar' image=[[\uE0BD],[\uE082]])

modify(find='Nombre' image=\uE113)
modify(find='Fecha de Modificación' image=\uE1F0)
modify(find='Tipo' image=\uE0A0)
modify(find='Tamaño' image=\uE184)
modify(find='Ascendente' image=\uE009)
modify(find='Descendente' image=\uE00A)
modify(find='Más' image=\uE16D)
