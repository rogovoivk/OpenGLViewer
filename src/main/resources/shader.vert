#version 330

layout(location = 0) in vec3 vertexPos;
layout(location = 1) in vec3 normal;

out vec3 normal_modelspace;
out vec3 vertex_modelspace;

uniform mat4 P;
uniform mat4 V;
uniform mat4 M;

void main() {
    vertex_modelspace = (M * vec4(vertexPos.xyz, 1.0)).xyz;
    gl_Position = P * V * vec4(vertex_modelspace.xyz, 1.0);
    normal_modelspace = (M * vec4(normal.xyz, 1.0)).xyz;
//
//  	// Vector that goes from the vertex to the camera, in camera space.
//  	// In camera space, the camera is at the origin (0,0,0).
//  	vec3 vertexPosition_cameraspace = (V * M * vec4(vertexPos,1)).xyz;
//  	vec3 EyeDirection_cameraspace = vec3(0,0,0) - vertexPosition_cameraspace;
//
//  	// Vector that goes from the vertex to the light, in camera space. M is ommited because it's identity.
//  	vec3 LightPosition_cameraspace = ( V * vec4(light,1)).xyz;
//  	LightDirection_cameraspace = LightPosition_cameraspace + EyeDirection_cameraspace;
}