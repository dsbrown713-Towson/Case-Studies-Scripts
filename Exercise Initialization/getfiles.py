Filename
smb_client = SMBClient(ip='', username='zathras', password='password1!', servername='admin-file-server', share_name='commonshare')
smb_client._connect()
response = smb_client._download(Filename)
