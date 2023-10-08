
from PySide2 import QtWidgets, QtCore, QtGui
from shiboken2 import wrapInstance
import maya.OpenMayaUI as omui
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
    clearCubeModel()
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
        self.defaultUI()
        self.defaultSelection()

    def defaultUI(self):
        outerLayout = QtWidgets.QVBoxLayout()
        
        groupboxFunc = QtWidgets.QGroupBox("Main Functions")
        mainFunctionsLayout = QtWidgets.QHBoxLayout()

        button_create = QtWidgets.QPushButton('Create', self)
        button_create.clicked.connect(createCubeModel)
        button_reset = QtWidgets.QPushButton('Reset', self)
        button_reset.clicked.connect(createCubeModel)
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
    
    def CCW(self):
        print('counter')

def checkIfWindowExists():
    if QtWidgets.QApplication.instance():
        for window in (QtWidgets.QApplication.allWindows()):
            if 'RubikCubeUI' in window.objectName():
                window.destroy()


if __name__ == "__main__":
    checkIfWindowExists()
    ui = RubikCubeUI()
    ui.show()


    

