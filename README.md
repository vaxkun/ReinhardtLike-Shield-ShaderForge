# ReinhardtLike-Shield-ShaderForge 
[![Follow](https://img.shields.io/github/followers/vaxkun.svg?style=social&label=Follow)](https://github.com/vaxkun) [![License](https://img.shields.io/badge/License-MIT-lightgrey.svg?style=flat)](https://vaxkun.mit-license.org) [![Donate](https://img.shields.io/badge/Donate-PayPal-blue.svg)](https://www.paypal.me/EduardoWagener) [![Twitter Follow](https://img.shields.io/twitter/follow/vaxkun.svg?label=Follow&style=social)](https://twitter.com/vaxkun) [![Patreon](https://img.shields.io/badge/Join-Patreon-red.svg)](https://www.patreon.com/VaxKun)



![WOW!](https://i.imgur.com/ezOiMVD.png)

Hi!
Here is a shader ive made to emulate Reinhardt shield effect using shaderforge on Unity3D. 
Its completely free and can use it as much as you want in all the projects you want :D

## HOW TO
## Prerequisites
First of all, we will need this two assets to have all the tools for this effect
````
ShaderForge for unity 2018.2, its open source now: https://github.com/jackisgames/ShaderForge

PostProcessingStack, its official from unity technologies: https://assetstore.unity.com/packages/essentials/post-processing-stack-83912
````
OK! now we have only on thing to do after starting to make the shader. The mesh that will contain our shader, you will be able to download it from this project.

Head up to unity menu and go on "Window--> Shader Forge" and this window will pop up: ![WOW!](https://i.imgur.com/kBIoIPg.png)
Hit "New Shader" and then "Custom Lighting", then, save it wherever you want INSIDE the project and call it however you want, but if its something weird be sure to remember it.

Now, a lot of nodes will apear, the default nodes of the custom lightning template shader. Select all(Select more than one node holding ALT and dragging with the mouse, like on windows but with ALT) and delete them because we wont use it for our effect.

Before any node, we have to set up the : shader settings, lighting, geometry and Blending settings.

* Shader Settings: I normally like to have all my shaders under "VaxKun" so i can recognise it fast on the list, and then depending on the project, in this example we will be using groups to divide diferent type of effects: "VaxKun/Shields/ReinhardtLikeShield"

![WOW!](https://i.imgur.com/7yC79Y0.png)

* Lighting: some of them are the default because of the lack of lightning on this effect(sarcastic because is kind of an hologram) will change from custom lightning to PBL, if we later want to have some lightning things on it. On Specular/Metallic i normally like to work with Specular (if the object isnt metallic)

![WOW!](https://i.imgur.com/qHohjQF.png)

* Geometry: we do want our effect to be displayed in two faces  of the mesh. If Backface culling is selected, one side of the mesh will not display the effect. SO, Double Sided on Face Culling. 

![WOW!](https://i.imgur.com/0oPaAxm.png)

* Blending: the effect isnt opaque, so, we want it to be kind of transparent or atleast control transparency all over the mesh, with this effect we are using Alpha Blended. Now, on Console (upwards) a Warning will pop up. That is not a problem, it only says that our mesh is slpha blended but opacity is not connected, but we will connect it later so dont go crazy.

![WOW!](https://i.imgur.com/3JjF061.png)

PERFECT! we are nearly done with shader settings! The last thing is in terms of shader preview, we can set up the mesh, click on the little circle near where says "Sphere" and select the mesh you want to be with the effect, THIS IS OPTIONAL, and not required for the shader to work.
Ah! dont forget to uncheck Skybox on the preview, there is a bug on shader forge wich make the nodes not visible with skybox checked on preview.
Finally click Settings button and check "Use scroll in the quickpicker" and "Show node browser panel"

![WOW!](https://i.imgur.com/JywpCUG.png)

Our shader now is pretty boring, all black. So, we are going to start with the coloring.
We will start with the MainColor. We will have a Main Color and an intensity of that color, so we are going to hold C and see a list of nodes appear where the mouse is. Scroll with the mouse to the greenish "Color" and then click it. You will se the color node appearing.

![WOW!](https://i.gyazo.com/4a46ecc177af58ddaea51f72a422facb.gif)

Click on the name (node_XXXX) and change it, because of this is the MainColor i will call it that way. Ive selected too a blue color in it, here is the Hexadecimal: 5581FF. 
Ok next we are going to create a slider for the MainColorIntensity and Add both nodes to a Multiply node

![WOW!](https://i.gyazo.com/10676cf9adeefb32152c050fb5fdfbfd.gif)
![WOW!](https://i.gyazo.com/f00b451acc0a778080b9aec8150b9384.gif)
