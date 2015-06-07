import re
import urllib.request

url = "http://research.investors.com/stock-checkup/nasdaq-diamond-foods-inc-dmnd.aspx"
response = urllib.request.urlopen(url)
checkuphtml = response.read()

# f=open('checkup.html','r+b')
# checkuphtml=f.read()
searchObj = re.search( r'(.*) Composite Rating (.*?) .*', checkuphtml.decode("utf-8"), re.M|re.I)
print("composite rating:" + searchObj.group())
searchObj2 = re.search( r'>[0-9][0-9]<', searchObj.group(), re.M|re.I)
print("rating:" + searchObj2.group()[1:3])
