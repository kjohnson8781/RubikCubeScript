import maya.cmds as cmds
import time

dist = 0.1
width = 1.0

transform = width + dist
center = ''

def RotateXFace(sl, center, dir):
    cmds.select(center, d=True) 
    cmds.select(center, add=True) 
    cmds.parent()
    cmds.select(center, r=True)
    cmds.rotate(dir*90, 0, 0, r=True)
    cmds.select(sl)
    cmds.parent(w=True)
    cmds.select(cl=True)

def RotateYFace(sl, center, dir):
    cmds.select(center, d=True) 
    cmds.select(center, add=True) 
    cmds.parent()
    cmds.select(center, r=True)
    cmds.rotate(0, dir*90, 0, r=True)
    cmds.select(sl)
    cmds.parent(w=True)
    cmds.select(cl=True)

def RotateZFace(sl, center, dir):
    cmds.select(center, d=True) 
    cmds.select(center, add=True) 
    cmds.parent()
    cmds.select(center, r=True)
    cmds.rotate(0, 0, dir*90, r=True)
    cmds.select(sl)
    cmds.parent(w=True)
    cmds.select(cl=True)

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
    RotateXFace(selectedList, center, direction)

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
    RotateXFace(selectedList, center, direction)

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
    RotateYFace(selectedList, center, direction)

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
    RotateYFace(selectedList, center, direction)

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
    RotateZFace(selectedList, center, direction)

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
    RotateZFace(selectedList, center, direction)

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
    RotateXFace(selectedList, center, direction)

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
    RotateZFace(selectedList, center, direction)

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
    RotateYFace(selectedList, center, direction)

Back(0)


