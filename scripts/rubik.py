# Modeling Script for blank Rubiks Cube

import maya.cmds as cmds
import fnmatch

dist = 0.1
width = 1.0

transform = width + dist
initialPosList = [transform * -1, width/2, transform * -1]

# Initial Position Function
def SetInitialPosition():
    cmds.setAttr('rubikCube.translateX', initialPosList[0])
    cmds.setAttr('rubikCube.translateY', initialPosList[1])
    cmds.setAttr('rubikCube.translateZ', initialPosList[2])

# Initial Pivot Function
def SetInitialPivot():
    externalCubeList = cmds.ls("corner*", "side_*", "center*", tr=True)
    for i in range(0, len(externalCubeList)):
        cmds.matchTransform(externalCubeList[i], 'core', piv=True)

# Rename cubes based on position to define color Function
def RenameCubesColorDefinition():
    colorNameList = ["corner_blue_orange_yellow", "side_orange_yellow", "corner_green_orange_yellow", "side_blue_orange", "center_orange",
                     "side_green_orange", "corner_blue_orange_white", "side_orange_white", "corner_green_orange_white", "side_blue_yellow",
                     "center_yellow", "side_green_yellow", "center_blue", "core", "center_green", "side_blue_white", "center_white", 
                     "side_green_white", "corner_blue_red_yellow", "side_red_yellow", "corner_green_red_yellow", "side_blue_red",
                     "center_red", "side_green_red", "corner_blue_red_white", "side_red_white", "corner_green_red_white"]
    cmds.rename("rubikCube", colorNameList[0])
    for name in range(1, len(colorNameList)):
        cmds.rename("instance" + str(name), colorNameList[name])

# Texture Cube Function
def CubeTexture():

    # Delete shaders if already exist 
    shaderGroupList = cmds.ls(type='shadingEngine')
    materialsList = cmds.ls(mat=True)

    shaderGroupFilter = fnmatch.filter(shaderGroupList, 'rubik*')
    materialsFilter = fnmatch.filter(materialsList, 'rubik*')

    if len(shaderGroupFilter) > 0:
        cmds.delete(shaderGroupList)
    if len(materialsFilter) > 0:
        cmds.delete(materialsList)

    # Create shaders and apply colors
    cubeBaseBlinn = cmds.shadingNode('blinn', asShader=True, name="rubikBlack")
    cmds.setAttr('rubikBlack.color', 0, 0, 0, type="double3")
    cmds.select("core", "corner*", "side_*", "center*")
    cmds.hyperShade(a=cubeBaseBlinn)

    blueBlinn = cmds.shadingNode('blinn', asShader=True, name="rubikBlue")
    cmds.setAttr('rubikBlue.color', 0, 0, 1, type="double3")
    cmds.select("*blue*" + ".f[122]")
    cmds.hyperShade(a=blueBlinn)

    greenBlinn = cmds.shadingNode('blinn', asShader=True, name="rubikGreen")
    cmds.setAttr('rubikGreen.color', 0, 1, 0, type="double3")
    cmds.select("*green*" + ".f[120]")
    cmds.hyperShade(a=greenBlinn)
   
    orangeBlinn = cmds.shadingNode('blinn', asShader=True, name="rubikOrange")
    cmds.setAttr('rubikOrange.color', 1, 0.2683, 0.0392, type="double3")
    cmds.select("*orange*" + ".f[125]")
    cmds.hyperShade(a=orangeBlinn)

    redBlinn = cmds.shadingNode('blinn', asShader=True, name="rubikRed")
    cmds.setAttr('rubikRed.color', 1, 0, 0, type="double3")
    cmds.select("*red*" + ".f[124]")
    cmds.hyperShade(a=redBlinn)

    yellowBlinn = cmds.shadingNode('blinn', asShader=True, name="rubikYellow")
    cmds.setAttr('rubikYellow.color', 1, 1, 0, type="double3")
    cmds.select("*yellow*" + ".f[123]")
    cmds.hyperShade(a=yellowBlinn)

    whiteBlinn = cmds.shadingNode('blinn', asShader=True, name="rubikWhite")
    cmds.setAttr('rubikWhite.color', 1, 1, 1, type="double3")
    cmds.select("*white*" + ".f[121]")
    cmds.hyperShade(a=whiteBlinn)

# Create Cube Function
def createCubeModel():
    cube = cmds.polyCube( w=width, h=width, d=width, name="rubikCube" )
    cmds.polyBevel3(cube, f=0.2, oaf=True, autoFit=True, sg=10, ws=True, sa=30, subdivideNgons=True, mv=True, mvt=0.0001, ma=180, at=180)
    SetInitialPosition()
    transformName = cube[0]

    def CreatePositionedInstance(x, y, z):
        instanceResult = cmds.instance( transformName, name="instance#")
        cmds.move(i * x + initialPosList[0], j*y + initialPosList[1], k*z + initialPosList[2], instanceResult)

    # Create cube array
    for i in range(0, 3):
        if i != 0:
            CreatePositionedInstance(transform, 0, 0)

        for j in range(0, 3):             
            if j != 0:     
                CreatePositionedInstance(transform, transform, 0)   
            
            for k in range(0, 3):
                if k != 0:
                    CreatePositionedInstance(transform, transform, transform)

    RenameCubesColorDefinition()
    CubeTexture()
    SetInitialPivot()

    cmds.select(cl=True)

def clearCubeModel():
    cubeList = cmds.ls("core", "center*", "side_*", 'corner*')

    if len(cubeList) > 0:
        cmds.delete(cubeList)

clearCubeModel()
createCubeModel()



    

