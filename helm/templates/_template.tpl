{{- define "firstimage" -}}
  {{- $registry := .Values.pods.nfs.images.registry -}}
  {{- $repository := .Values.pods.nfs.images.repository -}}
  {{- $tag := .Values.pods.nfs.images.tag -}}
  {{- $registry -}}/{{- $repository -}}:{{- $tag -}}
{{- end -}}

