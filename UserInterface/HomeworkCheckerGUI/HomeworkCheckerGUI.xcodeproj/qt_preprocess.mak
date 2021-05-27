#############################################################################
# Makefile for building: HomeworkCheckerGUI.app/Contents/MacOS/HomeworkCheckerGUI
# Generated by qmake (3.1) (Qt 6.1.0)
# Project:  HomeworkCheckerGUI.pro
# Template: app
# Command: /Users/linsixing/Qt/6.1.0/clang_64/bin/qmake -o HomeworkCheckerGUI.xcodeproj/project.pbxproj HomeworkCheckerGUI.pro -spec macx-xcode
#############################################################################

MAKEFILE      = project.pbxproj

EQ            = =

MOC       = /Users/linsixing/Qt/6.1.0/clang_64/libexec/moc
UIC       = 
LEX       = flex
LEXFLAGS  = 
YACC      = yacc
YACCFLAGS = -d
DEFINES       = -DQT_NO_DEBUG -DQT_QUICK_LIB -DQT_OPENGL_LIB -DQT_GUI_LIB -DQT_QMLMODELS_LIB -DQT_QML_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB
INCPATH       = -I. -I../../DataManager/DataManager -I/usr/local/Cellar/mysql/8.0.23_1/include/mysql -I/usr/local/mysql-connector-c++-8.0.25/lib64 -I../../DataManager/build/Debug -I../../packages/mysql/include -I../../DataManager/DataManager -I../../packages/json -I../../../Qt/6.1.0/clang_64/lib/QtQuick.framework/Headers -I../../../Qt/6.1.0/clang_64/lib/QtOpenGL.framework/Headers -I../../../Qt/6.1.0/clang_64/lib/QtGui.framework/Headers -I../../../Qt/6.1.0/clang_64/lib/QtQmlModels.framework/Headers -I../../../Qt/6.1.0/clang_64/lib/QtQml.framework/Headers -I../../../Qt/6.1.0/clang_64/lib/QtNetwork.framework/Headers -I../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers -I. -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks/AGL.framework/Headers -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks/AGL.framework/Headers -I../../../Qt/6.1.0/clang_64/mkspecs/macx-clang -F/Users/linsixing/Qt/6.1.0/clang_64/lib
DEL_FILE  = rm -f
MOVE      = mv -f

preprocess: compilers
clean preprocess_clean: compiler_clean

mocclean: compiler_moc_header_clean compiler_moc_objc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_objc_header_make_all compiler_moc_source_make_all

check: first

benchmark: first

compilers: qrc_qml.cpp moc_predefs.h moc_account.cpp moc_classviewcontroller.cpp moc_generalviewcontroller.cpp\
	 moc_settingpage.cpp
compiler_rcc_make_all: qrc_qml.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_qml.cpp
qrc_qml.cpp: qml.qrc \
		../../../Qt/6.1.0/clang_64/libexec/rcc \
		ClassPage.qml \
		RegPage.qml \
		MarkHomework.qml \
		GeneralPage.qml \
		MarkPage.qml \
		SettingPage.qml \
		CorrectHomework.qml \
		NewAClass.qml \
		ScoreWithClass.qml \
		LoginPage.qml \
		InfoOfClass.qml \
		TaskPage.qml \
		ScoreWithStudent.qml \
		DetailsOfAddition.qml \
		NewAssignment.qml \
		main.qml \
		InfoOfTask.qml \
		images/person.png \
		images/password.png \
		images/backBtn.png \
		images/more.png \
		images/email.png \
		images/add@2x.png \
		images/name.png \
		images/progress@2x.png \
		images/close.png \
		images/homework@2x.png \
		images/student.png
	/Users/linsixing/Qt/6.1.0/clang_64/libexec/rcc -name qml qml.qrc -o qrc_qml.cpp

compiler_moc_predefs_make_all: moc_predefs.h
compiler_moc_predefs_clean:
	-$(DEL_FILE) moc_predefs.h
moc_predefs.h: ../../../Qt/6.1.0/clang_64/mkspecs/features/data/dummy.cpp
	/Library/Developer/CommandLineTools/usr/bin/clang++ -pipe -stdlib=libc++ -O2 -std=gnu++1z -Wall -Wextra -dM -E -o moc_predefs.h ../../../Qt/6.1.0/clang_64/mkspecs/features/data/dummy.cpp

compiler_moc_header_make_all: moc_account.cpp moc_classviewcontroller.cpp moc_generalviewcontroller.cpp moc_settingpage.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_account.cpp moc_classviewcontroller.cpp moc_generalviewcontroller.cpp moc_settingpage.cpp
moc_account.cpp: account.h \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QObject \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QString \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QDebug \
		../../../Qt/6.1.0/clang_64/lib/QtQml.framework/Headers/qqml.h \
		../../DataManager/DataManager/DataManager.hpp \
		moc_predefs.h \
		../../../Qt/6.1.0/clang_64/libexec/moc
	/Users/linsixing/Qt/6.1.0/clang_64/libexec/moc $(DEFINES) --include /Users/linsixing/HomeworkChecker/UserInterface/HomeworkCheckerGUI/moc_predefs.h -I/Users/linsixing/Qt/6.1.0/clang_64/mkspecs/macx-clang -I/Users/linsixing/HomeworkChecker/UserInterface/HomeworkCheckerGUI -I/Users/linsixing/HomeworkChecker/DataManager/DataManager -I/usr/local/Cellar/mysql/8.0.23_1/include/mysql -I/usr/local/mysql-connector-c++-8.0.25/lib64 -I/Users/linsixing/HomeworkChecker/DataManager/build/Debug -I/Users/linsixing/HomeworkChecker/packages/mysql/include -I/Users/linsixing/HomeworkChecker/DataManager/DataManager -I/Users/linsixing/HomeworkChecker/packages/json -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtQuick.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtOpenGL.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtGui.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtQmlModels.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtQml.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtNetwork.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtCore.framework/Headers -I/Library/Developer/CommandLineTools/usr/include/c++/v1 -I/Library/Developer/CommandLineTools/usr/lib/clang/12.0.0/include -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include -I/Library/Developer/CommandLineTools/usr/include -F/Users/linsixing/Qt/6.1.0/clang_64/lib account.h -o moc_account.cpp

moc_classviewcontroller.cpp: classviewcontroller.h \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QObject \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QDebug \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QJsonArray \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QJsonObject \
		../../../Qt/6.1.0/clang_64/lib/QtQml.framework/Headers/qqml.h \
		../../DataManager/DataManager/DataManager.hpp \
		account.h \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QString \
		moc_predefs.h \
		../../../Qt/6.1.0/clang_64/libexec/moc
	/Users/linsixing/Qt/6.1.0/clang_64/libexec/moc $(DEFINES) --include /Users/linsixing/HomeworkChecker/UserInterface/HomeworkCheckerGUI/moc_predefs.h -I/Users/linsixing/Qt/6.1.0/clang_64/mkspecs/macx-clang -I/Users/linsixing/HomeworkChecker/UserInterface/HomeworkCheckerGUI -I/Users/linsixing/HomeworkChecker/DataManager/DataManager -I/usr/local/Cellar/mysql/8.0.23_1/include/mysql -I/usr/local/mysql-connector-c++-8.0.25/lib64 -I/Users/linsixing/HomeworkChecker/DataManager/build/Debug -I/Users/linsixing/HomeworkChecker/packages/mysql/include -I/Users/linsixing/HomeworkChecker/DataManager/DataManager -I/Users/linsixing/HomeworkChecker/packages/json -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtQuick.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtOpenGL.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtGui.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtQmlModels.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtQml.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtNetwork.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtCore.framework/Headers -I/Library/Developer/CommandLineTools/usr/include/c++/v1 -I/Library/Developer/CommandLineTools/usr/lib/clang/12.0.0/include -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include -I/Library/Developer/CommandLineTools/usr/include -F/Users/linsixing/Qt/6.1.0/clang_64/lib classviewcontroller.h -o moc_classviewcontroller.cpp

moc_generalviewcontroller.cpp: generalviewcontroller.h \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QObject \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QString \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QDebug \
		../../../Qt/6.1.0/clang_64/lib/QtQml.framework/Headers/qqml.h \
		../../DataManager/DataManager/DataManager.hpp \
		moc_predefs.h \
		../../../Qt/6.1.0/clang_64/libexec/moc
	/Users/linsixing/Qt/6.1.0/clang_64/libexec/moc $(DEFINES) --include /Users/linsixing/HomeworkChecker/UserInterface/HomeworkCheckerGUI/moc_predefs.h -I/Users/linsixing/Qt/6.1.0/clang_64/mkspecs/macx-clang -I/Users/linsixing/HomeworkChecker/UserInterface/HomeworkCheckerGUI -I/Users/linsixing/HomeworkChecker/DataManager/DataManager -I/usr/local/Cellar/mysql/8.0.23_1/include/mysql -I/usr/local/mysql-connector-c++-8.0.25/lib64 -I/Users/linsixing/HomeworkChecker/DataManager/build/Debug -I/Users/linsixing/HomeworkChecker/packages/mysql/include -I/Users/linsixing/HomeworkChecker/DataManager/DataManager -I/Users/linsixing/HomeworkChecker/packages/json -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtQuick.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtOpenGL.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtGui.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtQmlModels.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtQml.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtNetwork.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtCore.framework/Headers -I/Library/Developer/CommandLineTools/usr/include/c++/v1 -I/Library/Developer/CommandLineTools/usr/lib/clang/12.0.0/include -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include -I/Library/Developer/CommandLineTools/usr/include -F/Users/linsixing/Qt/6.1.0/clang_64/lib generalviewcontroller.h -o moc_generalviewcontroller.cpp

moc_settingpage.cpp: settingpage.h \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QObject \
		../../../Qt/6.1.0/clang_64/lib/QtCore.framework/Headers/QString \
		../../../Qt/6.1.0/clang_64/lib/QtQml.framework/Headers/qqml.h \
		moc_predefs.h \
		../../../Qt/6.1.0/clang_64/libexec/moc
	/Users/linsixing/Qt/6.1.0/clang_64/libexec/moc $(DEFINES) --include /Users/linsixing/HomeworkChecker/UserInterface/HomeworkCheckerGUI/moc_predefs.h -I/Users/linsixing/Qt/6.1.0/clang_64/mkspecs/macx-clang -I/Users/linsixing/HomeworkChecker/UserInterface/HomeworkCheckerGUI -I/Users/linsixing/HomeworkChecker/DataManager/DataManager -I/usr/local/Cellar/mysql/8.0.23_1/include/mysql -I/usr/local/mysql-connector-c++-8.0.25/lib64 -I/Users/linsixing/HomeworkChecker/DataManager/build/Debug -I/Users/linsixing/HomeworkChecker/packages/mysql/include -I/Users/linsixing/HomeworkChecker/DataManager/DataManager -I/Users/linsixing/HomeworkChecker/packages/json -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtQuick.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtOpenGL.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtGui.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtQmlModels.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtQml.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtNetwork.framework/Headers -I/Users/linsixing/Qt/6.1.0/clang_64/lib/QtCore.framework/Headers -I/Library/Developer/CommandLineTools/usr/include/c++/v1 -I/Library/Developer/CommandLineTools/usr/lib/clang/12.0.0/include -I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include -I/Library/Developer/CommandLineTools/usr/include -F/Users/linsixing/Qt/6.1.0/clang_64/lib settingpage.h -o moc_settingpage.cpp

compiler_moc_objc_header_make_all:
compiler_moc_objc_header_clean:
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_rez_source_make_all:
compiler_rez_source_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_rcc_clean compiler_moc_predefs_clean compiler_moc_header_clean 

