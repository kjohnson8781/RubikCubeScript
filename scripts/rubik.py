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
    cubeList = cmds.ls("core", "center*", "side_*", 'corner*')

    if len(cubeList) > 0:
        cmds.delete("RubikCubeGrp")
        # cmds.delete(cubeList)

def maya_main_window():
    mayaMainWindowPtr = omui.MQtUtil.mainWindow() 
    return wrapInstance(int(mayaMainWindowPtr), QtWidgets.QWidget) 

class RubikCubeUI(QtWidgets.QDialog):
    def __init__(self, parent=None):
        super(RubikCubeUI, self).__init__(parent=maya_main_window())
        self.setWindowFlags(QtCore.Qt.Window)
        self.setObjectName('RubikCubeUI')
        self.setWindowTitle('Rubik Cube UI')
        # self.setGeometry(QtCore.QRect(10, 10, 500, 500))
        self.default_ui()
        self.defaultSelection()

    def default_ui(self):
        outerLayout = QtWidgets.QVBoxLayout()
        
        groupboxFunc = QtWidgets.QGroupBox("Main Functions")
        mainFunctionsLayout = QtWidgets.QHBoxLayout()

        button_create = QtWidgets.QPushButton('Create', self)
        button_create.clicked.connect(create_cube)
        button_reset = QtWidgets.QPushButton('Reset', self)
        button_reset.clicked.connect(create_cube)
        button_random = QtWidgets.QPushButton('Randomize', self)
        # button_random.clicked.connect()
        button_solve = QtWidgets.QPushButton('Solve!', self)
        # button_solve.clicked.connect()

        mainFunctionsLayout.addWidget(button_create)
        mainFunctionsLayout.addWidget(button_reset)
        mainFunctionsLayout.addWidget(button_random)
        mainFunctionsLayout.addWidget(button_solve)

        groupboxFunc.setLayout(mainFunctionsLayout)
        
        groupboxManual = QtWidgets.QGroupBox("Manual Rotation")
        manualLayout = QtWidgets.QVBoxLayout()

        selectionLayout = QtWidgets.QHBoxLayout()
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

        selectionLayout.addWidget(self.combo)

        radioLayout = QtWidgets.QHBoxLayout()
        self.radio_face = QtWidgets.QRadioButton('Face', self)
        self.radio_midv = QtWidgets.QRadioButton('Vertical Middle', self)
        self.radio_midh = QtWidgets.QRadioButton('Horizontal Middle', self)
        self.radio_double = QtWidgets.QRadioButton('Double', self)
       
        self.radio_face.setChecked(True)
        self.radio_face.clicked.connect(self.radio_Checked)
        self.radio_midv.clicked.connect(self.radio_Checked)
        self.radio_midh.clicked.connect(self.radio_Checked)
        self.radio_double.clicked.connect(self.radio_Checked)
        self.radio_face.clicked.connect(self.selection)
        self.radio_midv.clicked.connect(self.selection)
        self.radio_midh.clicked.connect(self.selection)
        self.radio_double.clicked.connect(self.selection)

        radioLayout.addWidget(self.radio_face)
        radioLayout.addWidget(self.radio_midv)
        radioLayout.addWidget(self.radio_midh)
        radioLayout.addWidget(self.radio_double)

        rotateLayout = QtWidgets.QHBoxLayout()
        button_CW = QtWidgets.QPushButton('Clockwise', self)
        button_CCW = QtWidgets.QPushButton('Counter Clockwise', self)
        button_CW.clicked.connect(self.CW)
        button_CCW.clicked.connect(self.CCW)
        rotateLayout.addWidget(button_CW)
        rotateLayout.addWidget(button_CCW)

        manualLayout.addLayout(selectionLayout)
        manualLayout.addLayout(radioLayout)
        manualLayout.addLayout(rotateLayout)
        groupboxManual.setLayout(manualLayout)


        outerLayout.addWidget(groupboxFunc)
        outerLayout.addWidget(groupboxManual)
        outerLayout.addLayout(mainFunctionsLayout)
        outerLayout.addLayout(selectionLayout)
        outerLayout.addLayout(radioLayout)
        outerLayout.addLayout(rotateLayout)


        self.setLayout(outerLayout)
    
    def defaultSelection(self):
        cubeList = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
        for cube in cubeList:
            z = cmds.getAttr(cube+ '.translateZ')
            if z == transform:
                cmds.select(cube, add=True)

    def combo_onActivated(self):
        return self.combo.currentText()
    
    def radio_Checked(self):
        radioList = [self.radio_face, self.radio_midh, self.radio_midv, self.radio_double]
        for btn in radioList:
            if btn.isChecked():
                return btn.text()

    def selection(self):
        comboResult = self.combo_onActivated()
        radioResult = self.radio_Checked()
        if comboResult == 'Back' and radioResult == 'Face':
            cmds.select(cl=True)
            cubeList = cmds.ls("core", "center*", "side_*", 'corner*', tr=True)
            for cube in cubeList:
                print(cube)
                z = cmds.getAttr(cube+ '.translateZ')
                if z == transform * -1:
                    cmds.select(cube, add=True)

    def CW(self):
        comboResult = self.combo_onActivated()
        radioResult = self.radio_Checked()
        if comboResult == 'Front' and radioResult == 'Face':
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
            cmds.rotate(0, 0, -1*90, r=True)
            cmds.select(selectedList)
            cmds.parent(w=True)
            cmds.select(cl=True)
    
    def CCW(self):
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


    

