set PATH=%PATH%;%~dp0../../../emscripten
cd ../../../emsdk
call emsdk install latest
call emsdk activate latest
call emsdk_env
cd ../../
emcmake cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_SHARED_LINKER_FLAGS="-sEXTRA_EXPORTED_RUNTIME_METHODS=Emulator_SetFocus"  -DCMAKE_EXE_LINKER_FLAGS="-sEXPORTED_RUNTIME_METHODS=ccall,cwrap -sEXTRA_EXPORTED_RUNTIME_METHODS=_GAMELOOP_RequestLevelChange" -B%cd%/Build/Build_EMSDK/ && cmake --build %cd%/Build/Build_EMSDK/ 