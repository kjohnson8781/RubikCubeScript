import maya.cmds as cmds
import time
import random

dist = 0.1
width = 1.0

transform = width + dist
center = ''
frame = 10

def checkFloatError():
    cubeList = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
    for cube in cubeList:
        x = cmds.getAttr(cube+ '.translateX')
        y = cmds.getAttr(cube+ '.translateY')
        z = cmds.getAttr(cube+ '.translateZ')
        roundX = round(x, 2)
        roundY = round(y, 2)
        roundZ = round(z, 2)
        cmds.setAttr(cube+ '.translateX', roundX)
        cmds.setAttr(cube+ '.translateY', roundY)
        cmds.setAttr(cube+ '.translateZ', roundZ)

def Right(CW=True):
    if CW == True:
        direction = -1
    else:
        direction = 1

    cubeList = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
    for cube in cubeList:
        x = cmds.getAttr(cube+ '.translateX')
        if x == transform:
            cmds.select(cube, add=True)
    selectedList = cmds.ls(sl=True)
    center = cmds.ls("center*", sl=True)
    cmds.select(center, d=True) 
    cmds.select(center, add=True) 
    cmds.parent()
    cmds.select(center, r=True)
    cmds.rotate(direction*90, 0, 0, r=True)
    cmds.select(selectedList)
    cmds.parent(w=True)
    checkFloatError()
    cmds.select(cl=True)

def Left(CW=True):
    if CW == True:
        direction = 1
    else:
        direction = -1

    cubeList = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
    for cube in cubeList:
        x = cmds.getAttr(cube+ '.translateX')
        if x == transform * -1:
            cmds.select(cube, add=True)
    selectedList = cmds.ls(sl=True)
    center = cmds.ls("center*", sl=True)
    cmds.select(center, d=True) 
    cmds.select(center, add=True) 
    cmds.parent()
    cmds.select(center, r=True)
    cmds.rotate(direction*90, 0, 0, r=True)
    cmds.select(selectedList)
    cmds.parent(w=True)
    checkFloatError()
    cmds.select(cl=True)

def Top(CW=True):
    if CW == True:
        direction = -1
    else:
        direction = 1

    cubeList = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
    for cube in cubeList:
        y = cmds.getAttr(cube+ '.translateY')
        if y == (transform * 2 + (width/2)):
            cmds.select(cube, add=True)
    selectedList = cmds.ls(sl=True)
    center = cmds.ls("center*", sl=True)
    cmds.select(center, d=True) 
    cmds.select(center, add=True) 
    cmds.parent()
    cmds.select(center, r=True)
    cmds.rotate(0, direction*90, 0, r=True)
    cmds.select(selectedList)
    cmds.parent(w=True)
    checkFloatError()
    cmds.select(cl=True)

def Bottom(CW=True):
    if CW == True:
        direction = 1
    else:
        direction = -1

    cubeList = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
    for cube in cubeList:
        y = cmds.getAttr(cube+ '.translateY')
        if y == (width/2):
            cmds.select(cube, add=True)
    selectedList = cmds.ls(sl=True)
    center = cmds.ls("center*", sl=True)
    cmds.select(center, d=True) 
    cmds.select(center, add=True) 
    cmds.parent()
    cmds.select(center, r=True)
    cmds.rotate(0, direction*90, 0, r=True)
    cmds.select(selectedList)
    cmds.parent(w=True)
    checkFloatError()
    cmds.select(cl=True)

def Front(CW=True):
    if CW == True:
        direction = -1
    else:
        direction = 1

    cubeList = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
    for cube in cubeList:
        z = cmds.getAttr(cube+ '.translateZ')
        if z == transform:
            cmds.select(cube, add=True)
    selectedList = cmds.ls(sl=True)
    center = cmds.ls("center*", sl=True)
    cmds.select(center, d=True) 
    cmds.select(center, add=True) 
    cmds.parent()
    cmds.select(center, r=True)
    cmds.rotate(0, 0, direction*90, r=True)
    cmds.select(selectedList)
    cmds.parent(w=True)
    checkFloatError()
    cmds.select(cl=True)

def Back(CW=True):
    if CW == True:
        direction = 1
    else:
        direction = -1

    cubeList = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
    for cube in cubeList:
        z = cmds.getAttr(cube+ '.translateZ')
        if z == transform * -1:
            cmds.select(cube, add=True)
    selectedList = cmds.ls(sl=True)
    center = cmds.ls("center*", sl=True)
    cmds.select(center, d=True) 
    cmds.select(center, add=True) 
    cmds.parent()
    cmds.select(center, r=True)
    cmds.rotate(0, 0, direction*90, r=True)
    cmds.select(selectedList)
    cmds.parent(w=True)
    checkFloatError()
    cmds.select(cl=True)

def MidVertFB(CW=True):
    if CW == True:
        direction = 1
    else:
        direction = -1

    cubeList = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
    for cube in cubeList:
        x = cmds.getAttr(cube+ '.translateX')
        if x == 0:
            cmds.select(cube, add=True)
    selectedList = cmds.ls(sl=True)
    center = cmds.ls("core", sl=True)
    cmds.select(center, d=True) 
    cmds.select(center, add=True) 
    cmds.parent()
    cmds.select(center, r=True)
    cmds.rotate(direction*90, 0, 0, r=True)
    cmds.select(selectedList)
    cmds.parent(w=True)
    checkFloatError()
    cmds.select(cl=True)

def MidVertLR(CW=True):
    if CW == True:
        direction = 1
    else:
        direction = -1

    cubeList = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
    for cube in cubeList:
        z = cmds.getAttr(cube+ '.translateZ')
        if z == 0:
            cmds.select(cube, add=True)
    selectedList = cmds.ls(sl=True)
    center = cmds.ls("core", sl=True)
    cmds.select(center, d=True) 
    cmds.select(center, add=True) 
    cmds.parent()
    cmds.select(center, r=True)
    cmds.rotate(0, 0, direction*90, r=True)
    cmds.select(selectedList)
    cmds.parent(w=True)
    checkFloatError()
    cmds.select(cl=True)

def MidHori(CW=True):
    if CW == True:
        direction = -1
    else:
        direction = 1

    cubeList = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
    for cube in cubeList:
        y = cmds.getAttr(cube+ '.translateY')
        if y == (transform + (width /2)):
            cmds.select(cube, add=True)
    selectedList = cmds.ls(sl=True)
    center = cmds.ls("core", sl=True)
    cmds.select(center, d=True) 
    cmds.select(center, add=True) 
    cmds.parent()
    cmds.select(center, r=True)
    cmds.rotate(0, direction*90, 0, r=True)
    cmds.select(selectedList)
    cmds.parent(w=True)
    checkFloatError()
    cmds.select(cl=True)

def SetInitKey():
    cmds.select("core", "center*", "side_*", 'corner*')
    cmds.setKeyframe(attribute='rotateX', t=1)
    cmds.setKeyframe(attribute='rotateY', t=1)
    cmds.setKeyframe(attribute='rotateZ', t=1)
    cmds.select(clear=True)

def animate():
    global frame
    cmds.select("core", "center*", "side_*", 'corner*')
    cmds.setKeyframe(attribute='rotateX', t=frame)
    cmds.setKeyframe(attribute='rotateY', t=frame)
    cmds.setKeyframe(attribute='rotateZ', t=frame)
    cmds.select(cl=True)
    frame = frame + 10

def randomRot():
    cmds.select("core", "center*", "side_*", 'corner*')
    cmds.cutKey(time=(2,None))
    cmds.select(cl=True)
    for i in range(0,10):
        print(i)
        randFace = random.randint(0,8)
        randNum = random.randint(0, 1)
        turnList = [Front, Back, Left, Right, Top, Bottom, MidVertLR, MidVertFB, MidHori]
        turnList[randFace](randNum)
        animate()

def solve():
    cmds.select("core", "center*", "side_*", 'corner*')
    lastFrame = cmds.findKeyframe(which='last')
    cmds.scaleKey(time=(None,None), nst=lastFrame, net=1)
    cmds.currentTime(lastFrame)
    cmds.select(cl=True)

# randomRot()


# solve()

