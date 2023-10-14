from random import randint
from fnmatch import filter

import maya.OpenMayaUI as omui
import maya.cmds as cmds
from PySide2 import QtWidgets, QtCore
from shiboken2 import wrapInstance

# Animation Functions
def animate():
    global frame
    select_all()
    cmds.setKeyframe(attribute=['rotateX', 'rotateY', 'rotateZ'], t=frame)
    cmds.select(cl=True)
    frame = frame + 10

def set_init_key():
    select_all()
    cmds.setKeyframe(attribute=['rotateX', 'rotateY', 'rotateZ'], t=[1,11])
    cmds.select(clear=True)

# Cube Functions
def get_cube_list():
    return cmds.ls('core', 'center*', 'side_*', 'corner*', tr=True)

def select_all():
    cmds.select('core', 'corner*', 'side_*', 'center*')

def get_center_sel_cube():
    return cmds.ls('center*', sl=True)

def get_core_cube():
    return cmds.ls('core')

def clear_cube():
    cube_list = get_cube_list()
    if len(cube_list) > 0:
        cmds.delete('RubikCubeGrp')

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
        set_init_key()
        cmds.rotationInterpolation('core', 'center*', 'side_*', 'corner*',
                                   c='quaternionSlerp')
        cmds.group('core', 'center*', 'side_*', 'corner*',
                   name='RubikCubeGrp')
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

def maya_main_window():
    maya_main_window_int = omui.MQtUtil.mainWindow() 
    return wrapInstance(int(maya_main_window_int), QtWidgets.QWidget) 

class RubikCubeUI(QtWidgets.QDialog):
    def __init__(self, parent=None):
        super(RubikCubeUI, self).__init__(parent=maya_main_window())
        self.setWindowFlags(QtCore.Qt.Window)
        self.setObjectName('RubikCubeUI')
        self.setWindowTitle('Rubik Cube UI')
        self.default_ui()
        # self.default_sel()

    def default_ui(self):
        outer_layout = QtWidgets.QVBoxLayout()
        
        func_groupbox = QtWidgets.QGroupBox('Main Functions')
        func_layout = QtWidgets.QHBoxLayout()

        button_create = QtWidgets.QPushButton('Create', self)
        button_create.clicked.connect(self.create_cube)
        button_reset = QtWidgets.QPushButton('Reset', self)
        button_reset.clicked.connect(self.reset_cube)
        button_random = QtWidgets.QPushButton('Randomize', self)
        # button_random.clicked.connect()
        button_solve = QtWidgets.QPushButton('Solve!', self)
        # button_solve.clicked.connect()

        func_layout.addWidget(button_create)
        func_layout.addWidget(button_reset)
        func_layout.addWidget(button_random)
        func_layout.addWidget(button_solve)

        func_groupbox.setLayout(func_layout)
        
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
        self.radio_double = QtWidgets.QRadioButton('Double', self)
       
        self.radio_face.setChecked(True)
        self.radio_face.clicked.connect(self.radio_checked)
        self.radio_midv.clicked.connect(self.radio_checked)
        self.radio_midh.clicked.connect(self.radio_checked)
        self.radio_double.clicked.connect(self.radio_checked)
        self.radio_face.clicked.connect(self.selection)
        self.radio_midv.clicked.connect(self.selection)
        self.radio_midh.clicked.connect(self.selection)
        self.radio_double.clicked.connect(self.selection)

        radio_layout.addWidget(self.radio_face)
        radio_layout.addWidget(self.radio_midv)
        radio_layout.addWidget(self.radio_midh)
        radio_layout.addWidget(self.radio_double)

        rotate_layout = QtWidgets.QHBoxLayout()
        button_cw = QtWidgets.QPushButton('Clockwise', self)
        button_ccw = QtWidgets.QPushButton('Counter Clockwise', self)
        button_cw.clicked.connect(self.cw)
        button_ccw.clicked.connect(self.ccw)
        rotate_layout.addWidget(button_cw)
        rotate_layout.addWidget(button_ccw)

        manual_layout.addLayout(sel_layout)
        manual_layout.addLayout(radio_layout)
        manual_layout.addLayout(rotate_layout)
        manual_groupbox.setLayout(manual_layout)


        outer_layout.addWidget(func_groupbox)
        outer_layout.addWidget(manual_groupbox)
        outer_layout.addLayout(func_layout)
        outer_layout.addLayout(sel_layout)
        outer_layout.addLayout(radio_layout)
        outer_layout.addLayout(rotate_layout)


        self.setLayout(outer_layout)
    
    def create_cube(self):
        clear_cube()
        Cube.create(cube)

    def reset_cube(self):
        clear_cube()
        
    
    def default_sel(self):
        pass

    def list_onSelected(self):
        return self.list_widget.currentItem().text()
    
    def radio_checked(self):
        radioList = [self.radio_face, self.radio_midh, self.radio_midv,
                     self.radio_double]
        for btn in radioList:
            if btn.isChecked():
                return btn.text()

    def selection(self):
        sel_result = self.list_onSelected()
        radio_result = self.radio_checked()
        # match (sel_result, radio_result):
        #     case ('Front', 'Face'):
                # front =
                # front.select()
                # return front
        #     case ('Back', 'Face'):
        #     case ('Right', 'Face'):
        #     case ('Left', 'Face'):
        #     case ('Top', 'Face'):
        #     case ('Bottom', 'Face'):
        #     case ('Front', 'Vertical Middle') | ('Back', 'Vertical Middle'):
        #     case ('Right', 'Vertical Middle') | ('Left', 'Vertical Middle'):
        #     case ('*', 'Horizontal Middle'):
        #     case ('Front', 'Double'):
        #         front.select()
        #     case ('Back', 'Double'):
        #     case ('Right', 'Double'):
        #     case ('Left', 'Double'):
        #     case ('Top', 'Double'):
        #     case ('Bottom', 'Double'):

    def cw(self):
        # selection().rotate(1)
        pass
    
    def ccw(self):
        # selection.rotate(0)
        pass

def check_window_exists():
    if QtWidgets.QApplication.instance():
        for window in (QtWidgets.QApplication.allWindows()):
            if 'RubikCubeUI' in window.objectName():
                window.destroy()


if __name__ == "__main__":
    cube = Cube()
    check_window_exists()
    ui = RubikCubeUI()
    ui.show()

    

