import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Svg"
    Depends { name: "Qt"; submodules: ["svg"]}

    hasLibrary: false
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: ""
    libNameForLinkerRelease: ""
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/Users/tony/Qt/5.4/clang_64/lib/QtSvg.framework/Headers/5.4.2", "/Users/tony/Qt/5.4/clang_64/lib/QtSvg.framework/Headers/5.4.2/QtSvg"]
    cpp.libraryPaths: []
    
}
