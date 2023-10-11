import maya.cmds as cmds
import random

dist = 0.1
width = 1.0

transform = width + dist
center = ''
frame = 10

def check_float_err():
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

def right(CW=True):
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
    check_float_err()
    cmds.select(cl=True)

def left(CW=True):
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
    check_float_err()
    cmds.select(cl=True)

def top(CW=True):
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
    check_float_err()
    cmds.select(cl=True)

def bottom(CW=True):
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
    check_float_err()
    cmds.select(cl=True)

def front(CW=True):
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
    check_float_err()
    cmds.select(cl=True)

def back(CW=True):
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
    check_float_err()
    cmds.select(cl=True)

def mid_vert_fb(CW=True):
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
    check_float_err()
    cmds.select(cl=True)

def mid_vert_LR(CW=True):
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
    check_float_err()
    cmds.select(cl=True)

def mid_hori(CW=True):
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
    check_float_err()
    cmds.select(cl=True)

def animate():
    global frame
    cmds.select("core", "center*", "side_*", 'corner*')
    cmds.setKeyframe(attribute='rotateX', t=frame)
    cmds.setKeyframe(attribute='rotateY', t=frame)
    cmds.setKeyframe(attribute='rotateZ', t=frame)
    cmds.select(cl=True)
    frame = frame + 10

def rand_rot():
    cmds.select("core", "center*", "side_*", 'corner*')
    cmds.cutKey(time=(2,None))
    cmds.select(cl=True)
    for i in range(0,10):
        print(i)
        rand_face = random.randint(0,8)
        rand_num = random.randint(0, 1)
        turnList = [front, back, left, right, top, bottom, mid_vert_LR, mid_vert_fb, mid_hori]
        turnList[rand_face](rand_num)
        animate()

def solve():
    cmds.select("core", "center*", "side_*", 'corner*')
    last_frame = cmds.findKeyframe(which='last')
    cmds.scaleKey(time=(None,None), nst=last_frame, net=1)
    cmds.currentTime(last_frame)
    cmds.select(cl=True)

rand_rot()


# solve()

