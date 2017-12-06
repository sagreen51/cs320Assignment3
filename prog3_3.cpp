
#include <stdio.h>

#include <lua.hpp>

int main(int argc, char *argv[]){

const char *s;
int result;

printf("Assignment #3-3, Steven Green, s.a.green51@gmail.com\n");
lua_State *state = luaL_newstate();
luaL_openlibs(state);
luaL_dofile(state,argv[1]);

lua_pcall(state,0,0,0);

lua_getglobal(state,"InfixToPostfix");
//lua_setstring(state,argv[1]);

lua_setglobal(state,"InfixToPostfix");
lua_pushstring(state,argv[1]);


lua_pcall(state,1,1,0);
s = lua_tostring(state,-1);
//result = lua_tonumber(state,-1);
result = 1;
printf("%s",s[1]);
//printf("%d",result);
lua_close(state);
return result;
}


