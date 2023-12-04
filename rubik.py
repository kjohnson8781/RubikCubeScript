from fnmatch import filter
from random import randint

import maya.OpenMayaUI as omui
import maya.cmds as cmds
from PySide2 import QtWidgets, QtCore
from shiboken2 import wrapInstance

# Animation Functions
def animate():
    global frame
    select_all()
    cmds.setKeyframe(attribute=['rotateX', 'rotateY', 'rotateZ'], t=frame)
    cmds.rotationInterpolation(c='quaternionSlerp')
    cmds.select(cl=True)
    frame = frame + 10

def set_init_key():
    select_all()
    cmds.setKeyframe(attribute=['rotateX', 'rotateY', 'rotateZ'], t=[1,11])
    cmds.select(clear=True)

# Cube Functions
def check_float_err():
    def round_by_90(deg):
        return round(deg / 90) * 90
    coord_list = ['X', 'Y', 'Z']
    cube_list = get_cube_list()

    for cube in cube_list:
        for coord_str in coord_list:
            translate = cmds.getAttr(cube + '.translate' + coord_str)
            round_translate = round(translate, 2)
            if translate != round_translate:
                cmds.setAttr(cube + '.translate' + coord_str, round_translate)
            rot = cmds.getAttr(cube + '.rotate' + coord_str)
            round_rot = round_by_90(rot)
            if rot != round_rot:
                print(cube, rot, round_rot)
                cmds.setAttr(cube + '.rotate' + coord_str, round_rot)

def clear_cube():
    cube_list = get_cube_list()
    if len(cube_list) > 0:
        cmds.delete('RubikCubeGrp')

def get_cube_list():
    return cmds.ls('core', 'center*', 'side_*', 'corner*', tr=True)

def select_all():
    cmds.select('core', 'corner*', 'side_*', 'center*')

def get_center_sel_cube():
    return cmds.ls('center*', sl=True)

def get_core_cube():
    return cmds.ls('core')

def solve():
    select_all()
    last_frame = cmds.findKeyframe(which='last')
    cmds.scaleKey(time=(None,None), nst=last_frame, net=1)
    cmds.currentTime(last_frame)
    cmds.select(cl=True)

# UI Functions
def maya_main_window():
    maya_main_window_int = omui.MQtUtil.mainWindow() 
    return wrapInstance(int(maya_main_window_int), QtWidgets.QWidget) 

# Classes
class Cube():
    def __init__(self, dist=0.1, width=1.0):
        self.dist = dist
        self.width = width
        self.transform = width + dist
        self.init_pos_list = [-1*self.transform, width/2, -1*self.transform]

    def create(self):
        # create initial cube
        cube = cmds.polyCube(w=self.width, h=self.width, d=self.width, 
                             name='rubikCube')
        cmds.polyBevel3(cube, f=0.2, oaf=True, autoFit=True, sg=10, ws=True,
                         sa=30, subdivideNgons=True, mv=True, mvt=0.0001,
                         ma=180, at=180)
        transform_name = cube[0]
        
        self.set_init_pos()

        # create 3x3 array of instanced cubes
        def create_pos_instance(x, y, z):
            result = cmds.instance(transform_name, name='instance#')
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
        cmds.group('core', 'center*', 'side_*', 'corner*',
                   name='RubikCubeGrp')
        set_init_key()
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

    def rename_by_color():
        color_name_list = [
            'corner_blue_orange_yellow', 'side_orange_yellow',
            'corner_green_orange_yellow', 'side_blue_orange',
            'center_orange', 'side_green_orange', 'corner_blue_orange_white',
            'side_orange_white', 'corner_green_orange_white',
            'side_blue_yellow', 'center_yellow', 'side_green_yellow',
            'center_blue', 'core', 'center_green', 'side_blue_white',
            'center_white', 'side_green_white','corner_blue_red_yellow',
            'side_red_yellow', 'corner_green_red_yellow', 'side_blue_red',
            'center_red', 'side_green_red', 'corner_blue_red_white',
            'side_red_white', 'corner_green_red_white'
        ]
        cmds.rename('rubikCube', color_name_list[0])
        for name in range(1, len(color_name_list)):
            cmds.rename('instance' + str(name), color_name_list[name])

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
            cmds.shadingNode('blinn', asShader=True, name='rubikBlack')
            cmds.setAttr('rubikBlack.color', 0, 0, 0)

            cmds.shadingNode('blinn', asShader=True, name='rubikBlue')
            cmds.setAttr('rubikBlue.color', 0, 0, 1)

            cmds.shadingNode('blinn', asShader=True, name='rubikGreen')
            cmds.setAttr('rubikGreen.color', 0, 1, 0)
            
            cmds.shadingNode('blinn', asShader=True, name='rubikOrange')
            cmds.setAttr('rubikOrange.color', 1, 0.2683, 0.0392)
            
            cmds.shadingNode('blinn', asShader=True, name='rubikRed')
            cmds.setAttr('rubikRed.color', 1, 0, 0)

            cmds.shadingNode('blinn', asShader=True, name='rubikYellow')
            cmds.setAttr('rubikYellow.color', 1, 1, 0)
                
            cmds.shadingNode('blinn', asShader=True, name='rubikWhite')
            cmds.setAttr('rubikWhite.color', 1, 1, 1)

        # apply colors
        select_all()
        cmds.hyperShade(a='rubikBlack')

        cmds.select('*blue*' + '.f[122]')
        cmds.hyperShade(a='rubikBlue')

        cmds.select('*green*' + '.f[120]')
        cmds.hyperShade(a='rubikGreen')
    
        cmds.select('*orange*' + '.f[125]')
        cmds.hyperShade(a='rubikOrange')

        cmds.select('*red*' + '.f[124]')
        cmds.hyperShade(a='rubikRed')

        cmds.select('*yellow*' + '.f[123]')
        cmds.hyperShade(a='rubikYellow')

        cmds.select('*white*' + '.f[121]')
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
        check_float_err()
        # set direction of cw multiplier
        if self.dir == 'pos':
            dir = self.dir_pos(cw)
        elif self.dir == 'neg':
            dir = self.dir_neg(cw)
        sel_list = self.select()
        cmds.delete(ch=True)
        if (self.correct_pos == 0 or 
            self.correct_pos == (cube.transform + (cube.width / 2))):
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
        check_float_err()
        cmds.select(cl=True)    

# override QListWidget to fit content
class ResizedListWidget(QtWidgets.QListWidget):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
        self.setSizeAdjustPolicy(QtWidgets
                                 .QAbstractScrollArea.AdjustToContents)

    def minimumSizeHint(self) -> QtCore.QSize:
        return QtCore.QSize(-1, -1)

    def viewportSizeHint(self) -> QtCore.QSize:
        if self.model().rowCount() == 0:
            return QtCore.QSize(self.width(), 0)
        height = sum(self.sizeHintForRow(i) for i in range(self.count())
                     if not self.item(i).isHidden())
        width = super().viewportSizeHint().width()
        return QtCore.QSize(width, height)

class RubikCubeUI(QtWidgets.QDialog):
    def __init__(self, parent=None):
        super(RubikCubeUI, self).__init__(parent=maya_main_window())
        self.setWindowFlags(QtCore.Qt.Window)
        self.setObjectName('RubikCubeUI')
        self.setWindowTitle('Rubik Cube UI')
        self.check_window_exists()
        self.default_ui()
        self.default_sel()
    
    # prevent window duplication
    def check_window_exists(self):
        if QtWidgets.QApplication.instance():
            for window in (QtWidgets.QApplication.allWindows()):
                if 'RubikCubeUI' in window.objectName():
                    window.close()

    def default_ui(self):
        outer_layout = QtWidgets.QVBoxLayout()
        
        # Main Functions Section
        func_groupbox = QtWidgets.QGroupBox('Main Functions')
        func_layout = QtWidgets.QHBoxLayout()

        button_create = QtWidgets.QPushButton('Create', self)
        button_create.clicked.connect(self.create_cube)
        button_reset = QtWidgets.QPushButton('Reset', self)
        button_reset.clicked.connect(self.create_cube)
        button_random = QtWidgets.QPushButton('Randomize', self)
        button_random.clicked.connect(self.rand_rot)
        button_solve = QtWidgets.QPushButton('Solve!', self)
        button_solve.clicked.connect(self.solve)

        func_layout.addWidget(button_create)
        func_layout.addWidget(button_reset)
        func_layout.addWidget(button_random)
        func_layout.addWidget(button_solve)

        func_groupbox.setLayout(func_layout)
        
        # Manual Rotations Section
        manual_groupbox = QtWidgets.QGroupBox('Manual Rotation')
        manual_layout = QtWidgets.QVBoxLayout()

        sel_layout = QtWidgets.QHBoxLayout()
        self.list_widget = ResizedListWidget(self) 
        self.list_widget.addItems(['Front','Back', 'Right', 'Left', 'Top',
                                   'Bottom'])
        self.list_widget.setCurrentRow(0)
        self.list_widget.itemClicked.connect(self.list_onSelected)
        self.list_widget.currentItemChanged.connect(self.selection)
        sel_layout.addWidget(self.list_widget)

        radio_layout = QtWidgets.QHBoxLayout()
        self.radio_face = QtWidgets.QRadioButton('Face', self)
        self.radio_midv = QtWidgets.QRadioButton('Vertical Middle', self)
        self.radio_midh = QtWidgets.QRadioButton('Horizontal Middle', self)
        self.radio_face.setChecked(True)
        self.radio_face.clicked.connect(self.radio_checked)
        self.radio_midv.clicked.connect(self.radio_checked)
        self.radio_midh.clicked.connect(self.radio_checked)
        self.radio_face.clicked.connect(self.selection)
        self.radio_midv.clicked.connect(self.selection)
        self.radio_midh.clicked.connect(self.selection)
        radio_layout.addWidget(self.radio_face)
        radio_layout.addStretch()
        radio_layout.addWidget(self.radio_midv)
        radio_layout.addStretch()
        radio_layout.addWidget(self.radio_midh)

        rotate_layout = QtWidgets.QHBoxLayout()
        button_cw = QtWidgets.QPushButton('Clockwise', self)
        button_ccw = QtWidgets.QPushButton('Counter Clockwise', self)
        button_cw.clicked.connect(self.cw)
        button_cw.clicked.connect(self.selection)
        button_ccw.clicked.connect(self.ccw)
        button_ccw.clicked.connect(self.selection)
        rotate_layout.addWidget(button_cw)
        rotate_layout.addWidget(button_ccw)

        manual_layout.addLayout(sel_layout)
        manual_layout.addLayout(radio_layout)
        manual_layout.addLayout(rotate_layout)
        manual_groupbox.setLayout(manual_layout)

        # Add sections to main layout
        outer_layout.addWidget(func_groupbox)
        outer_layout.addWidget(manual_groupbox)
        outer_layout.addLayout(func_layout)
        outer_layout.addLayout(sel_layout)
        outer_layout.addLayout(radio_layout)
        outer_layout.addLayout(rotate_layout)
        self.setLayout(outer_layout)
    
    def default_sel(self):
        front = CubeSection('Z', cube.transform, 'neg')
        front.select()

    def cw(self):
        self.selection().rotate(1)
    
    def ccw(self):
        self.selection().rotate(0)
        
    def create_cube(self):
        clear_cube()
        global frame
        frame = 21
        Cube.create(cube)

    def list_onSelected(self):
        self.radio_midv.setCheckable(True)
        if self.list_widget.currentItem().text() in ('Top', 'Bottom'):
            self.radio_midv.setCheckable(False)
        return self.list_widget.currentItem().text()
    
    def radio_checked(self):
        radioList = [self.radio_face, self.radio_midh, self.radio_midv]
        for btn in radioList:
            if btn.isChecked():
                return btn.text()

    def rand_rot(self):
        # Initialize all rotations
        front = CubeSection('Z', cube.transform, 'neg')
        back = CubeSection('Z', -1*cube.transform, 'pos')
        right = CubeSection('X', cube.transform, 'neg')
        left = CubeSection('X', -1*cube.transform, 'neg')
        top = CubeSection('Y', (cube.transform * 2 + (cube.width / 2)), 'neg')
        bottom = CubeSection('Y', (cube.width/2), 'neg')
        mid_vert_FB = CubeSection('X', 0, 'neg')
        mid_vert_LR = CubeSection('Z', 0, 'neg')
        mid_hori = CubeSection('Y', (cube.transform + (cube.width / 2)),
                               'neg')

        for i in range(0,10):
            print(i)
            rand_face = randint(0,8)
            rand_num = randint(0, 1)
            turn_list = [front.rotate, back.rotate, right.rotate, left.rotate,
                         top.rotate, bottom.rotate, mid_vert_FB.rotate,
                         mid_vert_LR.rotate, mid_hori.rotate]
            turn_list[rand_face](rand_num)

    def selection(self):
        cmds.select(cl=True)
        sel_result = self.list_onSelected()
        radio_result = self.radio_checked()
        if sel_result == 'Front' and radio_result == 'Face':
            front = CubeSection('Z', cube.transform, 'neg')
            front.select()
            return front
        elif sel_result == 'Back' and radio_result == 'Face':
            back = CubeSection('Z', -1*cube.transform, 'pos')
            back.select()
            return back
        elif sel_result == 'Right' and radio_result == 'Face':
            right = CubeSection('X', cube.transform, 'neg')
            right.select()
            return right
        elif sel_result == 'Left' and radio_result == 'Face':
            left = CubeSection('X', -1*cube.transform, 'neg')
            left.select()
            return left
        elif sel_result == 'Top' and radio_result == 'Face':
            top = CubeSection('Y', (cube.transform * 2 + (cube.width / 2)),
                              'neg')
            top.select()
            return top
        elif sel_result == 'Bottom' and radio_result == 'Face':
            bottom = CubeSection('Y', (cube.width/2), 'neg')
            bottom.select()
            return bottom
        elif ((sel_result == 'Front' or sel_result == 'Back') and
               radio_result == 'Vertical Middle'):
            mid_vert_FB = CubeSection('X', 0, 'neg')
            mid_vert_FB.select()
            return mid_vert_FB
        elif ((sel_result == 'Right' or sel_result == 'Left') and
               radio_result == 'Vertical Middle'):
            mid_vert_LR = CubeSection('Z', 0, 'neg')
            mid_vert_LR.select()
            return mid_vert_LR
        elif radio_result == 'Horizontal Middle':
            mid_hori = CubeSection('Y', (cube.transform + (cube.width / 2)),
                                   'neg')
            mid_hori.select()
            return mid_hori
    
    def solve(self):
        solve()

# Initialize global set up
frame = 1
cube = Cube()

# Run UI
ui = RubikCubeUI()
ui.show()

    

