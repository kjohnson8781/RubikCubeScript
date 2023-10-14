from random import randint
from fnmatch import filter

import maya.OpenMayaUI as omui
import maya.cmds as cmds
from PySide2 import QtWidgets, QtCore
from shiboken2 import wrapInstance

# Functions
def get_cube_list():
    return cmds.ls("core", "center*", "side_*", 'corner*', tr=True)

def select_all():
    cmds.select('core', 'corner*', 'side_*', 'center*')

def get_center_sel_cube():
    return cmds.ls("center*", sl=True)

def get_core_cube():
    return cmds.ls("core")

def clear_cube():
    cube_list = get_cube_list()
    if len(cube_list) > 0:
        cmds.delete("RubikCubeGrp")

def check_float_err():
    cube_list = get_cube_list()
    for cube in cube_list:
        x = cmds.getAttr(cube + '.translateX')
        y = cmds.getAttr(cube + '.translateY')
        z = cmds.getAttr(cube + '.translateZ')
        roundX = round(x, 2)
        roundY = round(y, 2)
        roundZ = round(z, 2)
        cmds.setAttr(cube + '.translateX', roundX)
        cmds.setAttr(cube + '.translateY', roundY)
        cmds.setAttr(cube + '.translateZ', roundZ)


# Classes
class Cube():
    def __init__(self, dist=0.1, width=1.0):
        self.dist = dist
        self.width = width
        self.transform = width + dist
        self.init_pos_list = [-1*self.transform, self.width/2, -1*self.transform]

    def create(self):
        # create initial cube
        cube = cmds.polyCube(w=self.width, h=self.width, d=self.width, 
                             name="rubikCube")
        cmds.polyBevel3(cube, f=0.2, oaf=True, autoFit=True, sg=10, ws=True,
                         sa=30, subdivideNgons=True, mv=True, mvt=0.0001,
                         ma=180, at=180)
        transform_name = cube[0]
        
        self.set_init_pos()

        # create 3x3 array of instanced cubes
        def create_pos_instance(x, y, z):
            result = cmds.instance(transform_name, name="instance#")
            cmds.move(i * x + self.init_pos_list[0], 
                      j * y + self.init_pos_list[1],
                      k * z + self.init_pos_list[2],
                      result)
        
        for i in range(0, 3):
            if i != 0:
                create_pos_instance(self.transform, 0, 0)

            for j in range(0, 3):             
                if j != 0:     
                    create_pos_instance(self.transform, self.transform, 0)   
                
                for k in range(0, 3):
                    if k != 0:
                        create_pos_instance(self.transform, self.transform,
                                            self.transform)

        # remaining initialization functions
        Cube.rename_by_color()
        Cube.set_init_piv()
        Cube.texture()
        cmds.rotationInterpolation("core", "center*", "side_*", 'corner*',
                                   c='quaternionSlerp')
        cmds.group("core", "center*", "side_*", 'corner*', name="RubikCubeGrp")
        cmds.select(cl=True) # deselect all cubes for user

    # set inital cube to (0,0) based on width and distance between cubes
    def set_init_pos(self):
        cmds.setAttr('rubikCube.translateX', self.init_pos_list[0])
        cmds.setAttr('rubikCube.translateY', self.init_pos_list[1])
        cmds.setAttr('rubikCube.translateZ', self.init_pos_list[2])

    # set pivot of all cubes to center of center ('core') cube
    def set_init_piv():
        ext_cube_list = cmds.ls('corner*', 'side_*', 'center*', tr=True)
        for i in range(0, len(ext_cube_list)):
            cmds.matchTransform(ext_cube_list[i], 'core', piv=True)

    # rename cubes to describe position and color
    def rename_by_color():
        color_name_list = [
            "corner_blue_orange_yellow", "side_orange_yellow",
            "corner_green_orange_yellow", "side_blue_orange",
            "center_orange", "side_green_orange", "corner_blue_orange_white",
            "side_orange_white", "corner_green_orange_white",
            "side_blue_yellow", "center_yellow", "side_green_yellow",
            "center_blue", "core", "center_green", "side_blue_white",
            "center_white", "side_green_white","corner_blue_red_yellow",
            "side_red_yellow", "corner_green_red_yellow", "side_blue_red",
            "center_red", "side_green_red", "corner_blue_red_white",
            "side_red_white", "corner_green_red_white"
        ]
        cmds.rename("rubikCube", color_name_list[0])
        for name in range(1, len(color_name_list)):
            cmds.rename("instance" + str(name), color_name_list[name])

    """ 
    Color cube with the following convention:
    Front - Green
    Back - Blue
    Top - White
    Bottom - Yellow
    Right - Red
    Left - Orange
    """
    def texture():
        # create rubik shaders if they do not exist
        shader_group_list = cmds.ls(type='shadingEngine')
        shader_filter = filter(shader_group_list, 'rubik*')
        mat_list = cmds.ls(mat=True)
        mat_filter = filter(mat_list, 'rubik*')

        if len(shader_filter) == 0 and len(mat_filter) == 0:
            cmds.shadingNode('blinn', asShader=True, name="rubikBlack")
            cmds.setAttr('rubikBlack.color', 0, 0, 0)

            cmds.shadingNode('blinn', asShader=True, name="rubikBlue")
            cmds.setAttr('rubikBlue.color', 0, 0, 1)

            cmds.shadingNode('blinn', asShader=True, name="rubikGreen")
            cmds.setAttr('rubikGreen.color', 0, 1, 0)
            
            cmds.shadingNode('blinn', asShader=True, name="rubikOrange")
            cmds.setAttr('rubikOrange.color', 1, 0.2683, 0.0392)
            
            cmds.shadingNode('blinn', asShader=True, name="rubikRed")
            cmds.setAttr('rubikRed.color', 1, 0, 0)

            cmds.shadingNode('blinn', asShader=True, name="rubikYellow")
            cmds.setAttr('rubikYellow.color', 1, 1, 0)
                
            cmds.shadingNode('blinn', asShader=True, name="rubikWhite")
            cmds.setAttr('rubikWhite.color', 1, 1, 1)

        # apply colors
        select_all()
        cmds.hyperShade(a='rubikBlack')

        cmds.select("*blue*" + ".f[122]")
        cmds.hyperShade(a='rubikBlue')

        cmds.select("*green*" + ".f[120]")
        cmds.hyperShade(a='rubikGreen')
    
        cmds.select("*orange*" + ".f[125]")
        cmds.hyperShade(a='rubikOrange')

        cmds.select("*red*" + ".f[124]")
        cmds.hyperShade(a='rubikRed')

        cmds.select("*yellow*" + ".f[123]")
        cmds.hyperShade(a='rubikYellow')

        cmds.select("*white*" + ".f[121]")
        cmds.hyperShade(a='rubikWhite')

class CubeSection(Cube):
    def __init__(self, axis, correct_pos, dir):
        self.axis = axis
        self.correct_pos = correct_pos
        self.dir = dir

    def dir_neg(self, cw=True):
        if cw == True:
            return -1
        else:
            return 1

    def dir_pos(self, cw=True):
        if cw == True:
            return 1
        else:
            return 1

    def select(self):
        cube_list = get_cube_list()
        for cube in cube_list:
            coord = cmds.getAttr(cube + '.translate' + self.axis)
            if coord == self.correct_pos:
                cmds.select(cube, add=True)
        return cmds.ls(sl=True)

    def rotate(self, cw=True):
        # set direction of cw multiplier
        if self.dir == 'pos':
            dir = self.dir_pos(cw)
        elif self.dir == 'neg':
            dir = self.dir_neg(cw)
        sel_list = self.select()
        if self.correct_pos == 0 or self.correct_pos == (cube.transform + (cube.width / 2)):
            center = get_core_cube()
        else:
            center = get_center_sel_cube()
        cmds.select(center, d=True) 
        cmds.select(center, add=True) 
        cmds.parent()
        cmds.select(center, r=True)
        if self.axis == 'X':
            cmds.rotate(dir*90, 0, 0, r=True)
        elif self.axis == 'Y':
            cmds.rotate(0, dir*90, 0, r=True)
        elif self.axis == 'Z':
            cmds.rotate(0, 0, dir*90, r=True)
        cmds.parent(sel_list, 'RubikCubeGrp')
        check_float_err()
        animate()
        cmds.select(cl=True)

def animate():
    global frame
    print(frame)
    select_all()
    cmds.setKeyframe(attribute=['rotateX', 'rotateY', 'rotateZ'], t=frame)
    cmds.rotationInterpolation(c='quaternionSlerp')
    cmds.select(cl=True)
    frame = frame + 10

def rand_rot():
    for i in range(0,10):
        print(i)
        rand_face = randint(0,8)
        rand_num = randint(0, 1)
        turn_list = [front.rotate, back.rotate, right.rotate, left.rotate, top.rotate, bottom.rotate, mid_vert_FB.rotate, mid_vert_LR.rotate, mid_hori.rotate]
        turn_list[rand_face](rand_num)

def solve():
    cmds.select("core", "center*", "side_*", 'corner*')
    last_frame = cmds.findKeyframe(which='last')
    cmds.scaleKey(time=(None,None), nst=last_frame, net=1)
    cmds.currentTime(last_frame)
    cmds.select(cl=True)

cube = Cube()
front = CubeSection('Z', cube.transform, 'neg')
back = CubeSection('Z', -1*cube.transform, 'pos')
right = CubeSection('X', cube.transform, 'neg')
left = CubeSection('X', -1*cube.transform, 'neg')
top = CubeSection('Y', (cube.transform * 2 + (cube.width / 2)), 'neg')
bottom = CubeSection('Y', (cube.width/2), 'neg')
mid_vert_FB = CubeSection('X', 0, 'neg')
mid_vert_LR = CubeSection('Z', 0, 'neg')
mid_hori = CubeSection('Y', (cube.transform + (cube.width / 2)), 'neg')

# del frame
# try:
#     frame
#     print(frame)
# except:
#     frame = 21

# solve()
rand_rot()

# front.rotate(1)
# back.rotate(1)
# right.rotate(1)
# left.rotate(1)
# top.rotate(1)
# bottom.rotate(1)
# mid_vert_FB.rotate(1)
# mid_vert_LR.rotate(1)
# mid_hori.rotate(1)
