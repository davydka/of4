#version 120

// this is coming from our C++ code
uniform vec2 mouse;
varying vec2 texCoordVarying;

void main()
{
   gl_TexCoord[0] = gl_MultiTexCoord0;
   vec2 texcoord = gl_MultiTexCoord0.xy;
   
   // here we move the normalized texture coordinates
   texCoordVarying = vec2(texcoord.x+mouse.x, texcoord.y+mouse.y);
   
   // send the vertices to the fragment shader
	gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;;
}