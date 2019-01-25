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
(Hold S and scroll to the green Slider)(Hold M and scroll to Multiply, but in this case is the first so you dont have to scroll)

![WOW!](https://i.gyazo.com/10676cf9adeefb32152c050fb5fdfbfd.gif)
![WOW!](https://i.gyazo.com/f00b451acc0a778080b9aec8150b9384.gif)

Because of how colors are, as you can see in the bottom of the color node, colors are a percentage of a color mix, so what we are doing with intensity and multiply is multiply this color and make it higher, the result will be clearer when we add the bloom with the post processin, but you can mess with it, in this case im going to put the Max intensity at 2, now you will be able to test out

![WOW!](https://i.gyazo.com/a36e776944d5089f1fe0893ed065427f.gif)

If you connect it to "Emission" on the MainNode (The bigger node) you will be able to see the color on the mesh, but, thats not what we want. What we want is that color but in certain parts of the mesh, (in this case the borders of the mesh and a "hex" guide on the rest of the mesh). Before doing that guide we are going to do the "intersections", we are going to use the Depth Blend node to achieve this effect, and because we rock about making shaders, we are going to add another color. Exactly the same 3 nodes we made after but with other name, you can call it IntersectionsColor, DepthBlendColor... So, lets add this node holding D scroll waaay down to "Depth Blend"

![WOW!](https://i.gyazo.com/30cc4ea5962e3fdd85b4062730abd409.gif)

But oh! we have 3 nodes and we need to connect all of them to Emission and we have to say to the 2 colors where to appear :/
In this moment is when our best friend called "Lerp" appears. This node will LERP between 2 inputs based on another input.
So, lets hold L, scroll to lerp and connect the 2 colors A and B (A and B are the 2 inputs to lerp) and Depth Blend to T (Thats the "guide" for A and B to lerp between).

![WOW!](https://i.gyazo.com/8c30afb7861a68a7afc60506eabba29e.gif)

And connect that lerp node to Emission, then Hold V and add the "Value" node (the grey one), type "1" into the value, and connect it to "Opacity"

![WOW!](https://i.gyazo.com/86d3c060127ebd2e79b939c90eaae066.gif)
![WOW!](https://i.gyazo.com/a46d3d322befca221c4e56b0ca60d52f.gif)

Nice! lets test it out. Create a material of the shader on unity and add it to a mesh

![WOW!](https://i.gyazo.com/7596f77b7a02e42cfdef5a76c616192f.gif)
![WOW!](https://i.gyazo.com/f90e14ea3088313ec6c557fed1856817.gif)

Now to see it clearer im going to set Intersections Color to a red so you can see what is doing DepthBlend, and im setting MainColorIntensity and IntersectionsColorIntensity to 1 for this example. you will se that "intersections" with other meshes

![WOW!](https://i.gyazo.com/6907dc019e54ee52821625daf9e54523.gif)

Ok, lets return to ShaderForge, dont worry if you closed it. You can open with the menu we opened on the start of the tutorial or with this nice button ShaderForge made for us on the material or shader file on unity: "Open shader in Shader Forge"

![WOW!](https://i.gyazo.com/8a5e5c6e9f5d10f9994858b30ecf8cda.png)

We are going to add a Slider, call it Depth Distance and connect it to the DepthBlend node input, and now we will be able to handle the distance this intersections will have on our mesh!! (obviously i dont have to say you can test all the things we are adding without me to saying to test it)

![WOW!](https://i.gyazo.com/3e42f4375973a58c61b4e881b2664f79.gif)

Now we made the "easy" things!! but dont go crazy, i will be here explaining all the rest and why are we adding the rest of nodes, i bet you will say something like: "wait, ive made this whole node tree?!?!?".

We will start deleting the "Value" node we made after and adding the Texture that will be used as a guide for our shader. So hold T and add the "Texture2D" node, the green one. Then, add the image with the guide (in this case you can find it inside the project, its called Hex)

![WOW!](https://i.gyazo.com/36c43f9048465eff5693d19913eb5213.gif)
![WOW!](https://i.gyazo.com/ba587ba896d0a1918bd52f64c70b1ddc.gif)

I think its the perfect time to explain to you why is this image red, green red and kind of very strange. Thats why ive merged 3 images in 1, ill explain myself:
The guides used in this cases are grayscale, that means we dont need 3 percentages of color to make 1 color, we only need 1. So in photoshop, ive used Red channel to put one guide, Green channel to put another guide, and Blue to another guide, as you can see if i split the channels with Comp.Mask node on shader forge:

![WOW!](https://i.gyazo.com/e705dfff24e46e66032066a1239b617b.png)

Dont worry im not going to start on how to do that step by step on photoshop, as i said you have the image on this project(like all assets needed to achieve this effect).Now, lets hold C and scroll to click on "Clamp 0-1" node, next, connect R or G or B to the Clamp node, and connect Clamp to Opacity to see what are doing with the guides.

![WOW!](https://i.gyazo.com/b71e7dff2359c450331b1716b76fbf3e.gif)

Pretty nice! the guides are nicely added. But we only can see the channel we are adding and isnt animated or waves or nidfjgndgkdng.
Calm down, step by step, lets do the animated waves :)

We are going to take the coordinates of the UVs of the mesh, then, we are going to remap that coordinates to move it a bit to the center, and the take the length/magnitude to make a nice circle. Hold U and scroll to "UV Coord.", then hold R and scroll to "Remap(Simple)", and finally hold L and scroll to "Length". Then connect UV output from UV Coord. to Remap input, and Remap output to Length input. And now look! a nice circle!

![WOW!](https://i.gyazo.com/52c5dc01453f1af97b5aec0bad8c5a5c.gif)
![WOW!](https://i.gyazo.com/289d67e256fe9f21f9c471e6f517cbf1.gif)

Now, we need only 1 channel of this, so we are going to Hold C and scroll to "Comp.Mask" and leave it as default because we only want R channel.

![WOW!](https://i.gyazo.com/90d4c28d335c856082ab4688215ca0e0.gif)

Its TIME to add the TIME CONTROL(was a joke). We are going to hold T and add "Time" node,this time node outputs time at different rates, then take another Slider node and call it AnimationSpeed, WaveSpeed... And combine "T" output of Time node with the slider on a multiply node.

![WOW!](https://i.gyazo.com/d4dbab20a2c43caca3b0e949ac4068f0.gif)
![WOW!](https://i.gyazo.com/1b8a103869ae7d6d0377e61ec7f8e602.gif)

Ok we have the circle and the time, lets combine it Adding the time controller to our nice circle with an Add node, so hold A and scroll to "Add" and put the Comp.Mask on A and the Multiply of the time controller on B.

![WOW!](https://i.gyazo.com/7f96a3cf627e078b44a45e7ffd48b2af.gif)

Now, lets add a "Sin" node and put that Add node into Sin, because of "WaveSpeed" is on 0 there is nothing moving, so put it to 0.5 and see how inside Sin node something is happening.What Sin node is doing is output the sine of the input.

![WOW!](https://i.gyazo.com/b182c94b7007bae430495be09938996d.gif)

But hm, thats not the waves we need, so, lets put a Multiply node between Add node and sin node and add TAU to the multiply node.
To delete connections between nodes, put the mouse over the connection, hold ALT and RIGHT CLICK.

![WOW!](https://i.gyazo.com/dc0ca0ff9e106a2f5f0184f8c01d8722.gif)
![WOW!](https://i.gyazo.com/e1fd1fe5ac59bf8911734e720368e462.gif)

