cmake_minimum_required(VERSION 3.16)

project(DTMFGram VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

set(PROJECT_SOURCE
	main.cpp
)

set(PROJECT_QML
	Main.qml

	MessageInput.qml
	PostMessageButton.qml

	MessageWall.qml
	MessageDelegate.qml
	MessageTestModel.qml
)
source_group("QML Files" FILES ${PROJECT_QML})

set(PROJECT_RESOURCES
	broadcast.svg
	broadcast.png
)
source_group("Resources" FILES ${PROJECT_RESOURCES})

qt_add_executable(appDTMFGram
	${PROJECT_SOURCE}
)

qt_add_resources(appDTMFGram "icons"
	PREFIX "/assets/icons"
	FILES ${PROJECT_RESOURCES}
)

qt_add_qml_module(appDTMFGram
    URI DTMFGram
    VERSION 1.0
	QML_FILES ${PROJECT_QML}
)

set_target_properties(appDTMFGram PROPERTIES
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appDTMFGram
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appDTMFGram
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
