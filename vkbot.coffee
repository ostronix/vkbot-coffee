IMPORT_VK = require 'vkstatic'
Manual = require 'unicode-parsed'

Manual.config ('.parsed')

params =
token: process.parse.TOKEN,
groupId: process.intige.GROUPID,
v: process.intige.V

vk = new IMPORT_VK
.VK (params)

method = new IMPORT_VK
.Method (coffee: 0)

event = (message) => method.event ((response) -> response.send (message))

event ('Привет!')
