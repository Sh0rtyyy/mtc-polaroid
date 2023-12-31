![Polaroid](https://i.imgur.com/DkWqDk5.png)

# Polaroid
A Polaroid Camera resource for ESX framewrok, recoded by mrshortyno, within the script we focused on usability and a clean UI.

# Credits
https://github.com/morethancodenl/mtc-polaroid original repo
Shorty (ME) for redoing the code to ESX

## 🔌 Installation:
To get started with the MTC Polaroid resource, follow these steps:

1. Clone this repository and place the files into your designated resources folder.
2. Rename the script file to ```mtc-polaroid```.
3. Configure the webhook in the ```server/main.lua``` file.
4. Set up the necessary inventory items.
5. Use the Polaroid Camera with the ```polaroid_paper``` item in you're inventory.

## 📦 Items
You can find the images for the items mentioned below in the ```images``` directory.

**ox_inventory**
```lua
["polaroid_camera"] = {
    label = "Polaroid camera",
    weight = 5000,
    stack = false,
    close = true,
    description = "Did we just go back in time?",
    client = {
        image = "polaroid.png",
    }
},
["polaroid_paper"] = {
    label = "Polaroid paper",
    weight = 10,
    stack = true,
    close = false,
    description = "Some paper",
    client = {
        image = "photo.png",
    }
},
["polaroid"] = {
    label = "Polaroid image",
    weight = 10,
    stack = false,
    close = true,
    description = "Cool image bro",
    client = {
        image = "photo.png",
    }
}
```
## 👉 Join our community

[![Discord](https://discord.com/api/guilds/1075048579758035014/widget.png?style=banner2)](https://discord.gg/cFuv5BMWzK)
