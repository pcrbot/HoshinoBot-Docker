import json
import urllib.request

url = 'https://api.github.com/repos/Mrs4s/go-cqhttp/releases'
resp = urllib.request.urlopen(url).read().decode('utf-8')
version = json.loads(resp)[0]['tag_name'][1:]
print(f'::set-output name=version::{version}')
