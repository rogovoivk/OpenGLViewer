#version 330

layout(location = 0) in vec3 vertexPos;

uniform mat4 P;
uniform mat4 V;

void main() {
    gl_Position = P * V * vec4(vertexPos.xyz, 1.0);
}