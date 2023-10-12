from random import randint
from fnmatch import filter

import maya.OpenMayaUI as omui
import maya.cmds as cmds
from PySide2 import QtWidgets, QtCore
from shiboken2 import wrapInstance

class Cube():
    def __init__(self, dist = 0.1, width = 1.0):
        self.dist = dist
        self.width = width
        self.transform = width + dist
        self.init_pos_list = [-1*self.transform, width/2, -1*self.transform]

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
            cmds.move(i * x + self.init_pos_list[0], j*y + self.init_pos_list[1], k*z + self.init_pos_list[2], result)
        
        for i in range(0, 3):
            if i != 0:
                create_pos_instance(self.transform, 0, 0)

            for j in range(0, 3):             
                if j != 0:     
                    create_pos_instance(self.transform, self.transform, 0)   
                
                for k in range(0, 3):
                    if k != 0:
                        create_pos_instance(self.transform, self.transform, self.transform)

        # remaining initialization functions
        Cube.rename_by_color()
        Cube.set_init_piv()
        Cube.texture()
        cmds.rotationInterpolation("core", "center*", "side_*", 'corner*', c='quaternionSlerp')
        cmds.group("core", "center*", "side_*", 'corner*', name="RubikCubeGrp")
        cmds.select(cl=True) # deselect all cubes for user

    def clear(self):
        cube_list = cmds.ls("core", "center*", "side_*", 'corner*')
        if len(cube_list) > 0:
            cmds.delete("RubikCubeGrp")

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

    def select_all():
        cmds.select('core', 'corner*', 'side_*', 'center*')

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
        Cube.select_all()
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
