item(title=title.control_panel vis=@key.shift() image=\uE0F3 cmd='shell:::{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}')
//item(title=loc.all_control_panel_items image=\uE0F3 cmd='shell:::{ED7BA470-8E54-465E-825C-99712043E01C}')
item(title=title.run vis=@key.shift() image=\uE14B cmd='shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}')
menu(where=sys.ver.major >= 10 vis=@key.shift() title=title.settings sep=sep.before image=\uE0F3)
{
	// https://docs.microsoft.com/en-us/windows/uwp/launch-resume/launch-settings-app
	//item(title='system' image=inherit cmd='ms-settings:')
	item(title='about' image=inherit cmd='ms-settings:about')
	//item(title='your-info' image=inherit cmd='ms-settings:yourinfo')
	//item(title='system-info' image=inherit cmd-line='/K systeminfo')
	//item(title='search' cmd='search-ms:' image=inherit)
	//item(title='usb' image=inherit cmd='ms-settings:usb')
	item(title='windows-update' image=inherit cmd='ms-settings:windowsupdate')
	item(title='windows-defender' image=inherit cmd='ms-settings:windowsdefender')
	menu(title='apps' image=inherit)
	{
		item(title='apps-features' image=inherit cmd='ms-settings:appsfeatures')
		item(title='default-apps' image=inherit cmd='ms-settings:defaultapps')
		item(title='optional-features' image=inherit cmd='ms-settings:optionalfeatures')
		//item(title='startup' image=inherit cmd='ms-settings:startupapps')
	}
	menu(title='personalization' image=inherit)
	{
		item(title='personalization' image=inherit cmd='ms-settings:personalization')
		item(title='lockscreen' image=inherit cmd='ms-settings:lockscreen')
		item(title='background' image=inherit cmd='ms-settings:personalization-background')
		item(title='colors' image=inherit cmd='ms-settings:colors')
		item(title='themes' image=inherit cmd='ms-settings:themes')
		item(title='start' image=inherit cmd='ms-settings:personalization-start')
		item(title='taskbar' image=inherit cmd='ms-settings:taskbar')
	}
	menu(title='network' image=inherit)
	{
		item(title='status' image=inherit cmd='ms-settings:network-status')
		item(title='ethernet' image=inherit cmd='ms-settings:network-ethernet')
		item(title='connections' image=inherit cmd='shell:::{7007ACC7-3202-11D1-AAD2-00805FC1270E}')
	}
}