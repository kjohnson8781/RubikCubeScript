from PySide2 import QtWidgets, QtCore
from shiboken2 import wrapInstance
import maya.OpenMayaUI as omui
import maya.cmds as cmds
import fnmatch

dist = 0.1
width = 1.0

transform = width + dist
init_pos_list = [transform * -1, width/2, transform * -1]

# Initial Position Function
def set_init_pos():
    cmds.setAttr('rubikCube.translateX', init_pos_list[0])
    cmds.setAttr('rubikCube.translateY', init_pos_list[1])
    cmds.setAttr('rubikCube.translateZ', init_pos_list[2])

# Initial Pivot Function
def set_init_piv():
    ext_cube_list = cmds.ls("corner*", "side_*", "center*", tr=True)
    for i in range(0, len(ext_cube_list)):
        cmds.matchTransform(ext_cube_list[i], 'core', piv=True)

# Rename cubes based on position to define color
def rename_by_color():
    color_name_list = [
        "corner_blue_orange_yellow", "side_orange_yellow", "corner_green_orange_yellow", "side_blue_orange", "center_orange",
        "side_green_orange", "corner_blue_orange_white", "side_orange_white", "corner_green_orange_white", "side_blue_yellow",
        "center_yellow", "side_green_yellow", "center_blue", "core", "center_green", "side_blue_white", "center_white", 
        "side_green_white", "corner_blue_red_yellow", "side_red_yellow", "corner_green_red_yellow", "side_blue_red",
        "center_red", "side_green_red", "corner_blue_red_white", "side_red_white", "corner_green_red_white"]
    cmds.rename("rubikCube", color_name_list[0])
    for name in range(1, len(color_name_list)):
        cmds.rename("instance" + str(name), color_name_list[name])

# Texture Cube Function
def texture_cube():

    # Delete shaders if already exist 
    shader_group_list = cmds.ls(type='shadingEngine')
    mat_list = cmds.ls(mat=True)

    shader_filter = fnmatch.filter(shader_group_list, 'rubik*')
    mat_filter = fnmatch.filter(mat_list, 'rubik*')

    # Create shaders if not exist
    if len(shader_filter) == 0 and len(mat_filter) == 0:
        cmds.shadingNode('blinn', asShader=True, name="rubikBlack")
        cmds.setAttr('rubikBlack.color', 0, 0, 0, type="double3")

        cmds.shadingNode('blinn', asShader=True, name="rubikBlue")
        cmds.setAttr('rubikBlue.color', 0, 0, 1, type="double3")

        cmds.shadingNode('blinn', asShader=True, name="rubikGreen")
        cmds.setAttr('rubikGreen.color', 0, 1, 0, type="double3")
        
        cmds.shadingNode('blinn', asShader=True, name="rubikOrange")
        cmds.setAttr('rubikOrange.color', 1, 0.2683, 0.0392, type="double3")
        
        cmds.shadingNode('blinn', asShader=True, name="rubikRed")
        cmds.setAttr('rubikRed.color', 1, 0, 0, type="double3")

        cmds.shadingNode('blinn', asShader=True, name="rubikYellow")
        cmds.setAttr('rubikYellow.color', 1, 1, 0, type="double3")
            
        cmds.shadingNode('blinn', asShader=True, name="rubikWhite")
        cmds.setAttr('rubikWhite.color', 1, 1, 1, type="double3")

    # Apply colors
    cmds.select("core", "corner*", "side_*", "center*")
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

def set_init_key():
    cmds.select("core", "center*", "side_*", 'corner*')
    cmds.setKeyframe(attribute='rotateX', t=1)
    cmds.setKeyframe(attribute='rotateY', t=1)
    cmds.setKeyframe(attribute='rotateZ', t=1)
    cmds.select(clear=True)

def animate():
    cmds.currentTime(frame)
    cmds.select("core", "center*", "side_*", 'corner*')
    cmds.setKeyframe(attribute='rotateX', t=frame)
    cmds.setKeyframe(attribute='rotateY', t=frame)
    cmds.setKeyframe(attribute='rotateZ', t=frame)
    cmds.select(clear=True)
    frame = frame + 10

# Create Cube Function
def create_cube():
    clear_cube()
    cube = cmds.polyCube( w=width, h=width, d=width, name="rubikCube" )
    cmds.polyBevel3(cube, f=0.2, oaf=True, autoFit=True, sg=10, ws=True, sa=30, subdivideNgons=True, mv=True, mvt=0.0001, ma=180, at=180)
    set_init_pos()
    transform_name = cube[0]

    def create_pos_instance(x, y, z):
        result = cmds.instance( transform_name, name="instance#")
        cmds.move(i * x + init_pos_list[0], j*y + init_pos_list[1], k*z + init_pos_list[2], result)

    # Create cube array
    for i in range(0, 3):
        if i != 0:
            create_pos_instance(transform, 0, 0)

        for j in range(0, 3):             
            if j != 0:     
                create_pos_instance(transform, transform, 0)   
            
            for k in range(0, 3):
                if k != 0:
                    create_pos_instance(transform, transform, transform)

    rename_by_color()
    texture_cube()
    set_init_piv()
    set_init_key()
    cmds.rotationInterpolation("core", "center*", "side_*", 'corner*', c='quaternionSlerp')
    # cmds.group("core", "center*", "side_*", 'corner*', name="RubikCubeGrp")
    cmds.select(cl=True)

def clear_cube():
    cube_list = cmds.ls("core", "center*", "side_*", 'corner*')

    if len(cube_list) > 0:
        cmds.delete("RubikCubeGrp")
        # cmds.delete(cube_list)

def maya_main_window():
    maya_main_window_int = omui.MQtUtil.mainWindow() 
    return wrapInstance(int(maya_main_window_int), QtWidgets.QWidget) 

class RubikCubeUI(QtWidgets.QDialog):
    def __init__(self, parent=None):
        super(RubikCubeUI, self).__init__(parent=maya_main_window())
        self.setWindowFlags(QtCore.Qt.Window)
        self.setObjectName('RubikCubeUI')
        self.setWindowTitle('Rubik Cube UI')
        # self.setGeometry(QtCore.QRect(10, 10, 500, 500))
        self.default_ui()
        self.default_sel()

    def default_ui(self):
        outer_layout = QtWidgets.QVBoxLayout()
        
        func_groupbox = QtWidgets.QGroupBox("Main Functions")
        func_layout = QtWidgets.QHBoxLayout()

        button_create = QtWidgets.QPushButton('Create', self)
        button_create.clicked.connect(create_cube)
        button_reset = QtWidgets.QPushButton('Reset', self)
        button_reset.clicked.connect(create_cube)
        button_random = QtWidgets.QPushButton('Randomize', self)
        # button_random.clicked.connect()
        button_solve = QtWidgets.QPushButton('Solve!', self)
        # button_solve.clicked.connect()

        func_layout.addWidget(button_create)
        func_layout.addWidget(button_reset)
        func_layout.addWidget(button_random)
        func_layout.addWidget(button_solve)

        func_groupbox.setLayout(func_layout)
        
        manual_groupbox = QtWidgets.QGroupBox("Manual Rotation")
        manual_layout = QtWidgets.QVBoxLayout()

        sel_layout = QtWidgets.QHBoxLayout()
        self.combo = QtWidgets.QComboBox(self)
        self.combo.addItem( 'Front' )
        self.combo.addItem( 'Back' )
        self.combo.addItem( 'Right' )
        self.combo.addItem( 'Left' )
        self.combo.addItem( 'Top' )
        self.combo.addItem( 'Bottom' )
        self.combo.setCurrentIndex(0)
        self.combo.move(20, 20)
        self.combo.activated[str].connect(self.combo_onActivated)
        self.combo.currentTextChanged[str].connect(self.selection)

        sel_layout.addWidget(self.combo)

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
    
    def default_sel(self):
        cube_list = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
        for cube in cube_list:
            z = cmds.getAttr(cube + '.translateZ')
            if z == transform:
                cmds.select(cube, add=True)

    def combo_onActivated(self):
        return self.combo.currentText()
    
    def radio_checked(self):
        radioList = [self.radio_face, self.radio_midh, self.radio_midv, self.radio_double]
        for btn in radioList:
            if btn.isChecked():
                return btn.text()

    def selection(self):
        combo_result = self.combo_onActivated()
        radio_result = self.radio_checked()
        if combo_result == 'Back' and radio_result == 'Face':
            cmds.select(cl=True)
            cube_list = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
            for cube in cube_list:
                print(cube)
                z = cmds.getAttr(cube+ '.translateZ')
                if z == transform * -1:
                    cmds.select(cube, add=True)

    def cw(self):
        combo_result = self.combo_onActivated()
        radio_result = self.radio_checked()
        if combo_result == 'Front' and radio_result == 'Face':
            cube_list = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
            for cube in cube_list:
                z = cmds.getAttr(cube + '.translateZ')
                if z == transform:
                    cmds.select(cube, add=True)
            sel_list = cmds.ls(sl=True)
            center = cmds.ls("center*", sl=True)
            cmds.select(center, d=True) 
            cmds.select(center, add=True) 
            cmds.parent()
            cmds.select(center, r=True)
            cmds.rotate(0, 0, -1*90, r=True)
            cmds.select(sel_list)
            cmds.parent(w=True)
            cmds.select(cl=True)
    
    def ccw(self):
        print('counter')

def check_window_exists():
    if QtWidgets.QApplication.instance():
        for window in (QtWidgets.QApplication.allWindows()):
            if 'RubikCubeUI' in window.objectName():
                window.destroy()


if __name__ == "__main__":
    check_window_exists()
    ui = RubikCubeUI()
    ui.show()


    

