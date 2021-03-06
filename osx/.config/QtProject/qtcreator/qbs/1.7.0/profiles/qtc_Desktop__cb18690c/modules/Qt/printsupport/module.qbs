import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "PrintSupport"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: ["QtWidgets", "QtGui", "QtCore", "DiskArbitration", "IOKit"]
    frameworksRelease: ["QtWidgets", "QtGui", "QtCore", "DiskArbitration", "IOKit"]
    frameworkPathsDebug: ["/Users/tony/Qt/5.4/clang_64/lib"]
    frameworkPathsRelease: ["/Users/tony/Qt/5.4/clang_64/lib"]
    libNameForLinkerDebug: "QtPrintSupport"
    libNameForLinkerRelease: "QtPrintSupport"
    libFilePathDebug: "/Users/tony/Qt/5.4/clang_64/lib/QtPrintSupport.framework/QtPrintSupport"
    libFilePathRelease: "/Users/tony/Qt/5.4/clang_64/lib/QtPrintSupport.framework/QtPrintSupport"
    cpp.defines: ["QT_PRINTSUPPORT_LIB"]
    cpp.includePaths: ["/Users/tony/Qt/5.4/clang_64/lib/QtPrintSupport.framework/Headers"]
    cpp.libraryPaths: []
    
}
