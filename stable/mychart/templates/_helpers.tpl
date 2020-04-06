{{/*
   Create a default fully qualified app name.
   We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
   If release name contains chart name it will be used as a full name.
  */}}
{{- define "mychart.fullname" -}}
    {{- if .Values.fullnameOverride -}}
        {{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
    {{- else -}}
        {{- $name := default .Chart.Name .Values.nameOverride -}}
        {{- if contains $name .Release.Name -}}
            {{- .Release.Name | trunc 63 | trimSuffix "-" -}}
        {{- else -}}
            {{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
        {{- end -}}
    {{- end -}}
{{- end -}}

{{/* Generate basic labels */}}
{{- define "mychart.labels" }}
  labels:
    generator: helm
    date: {{ now | htmlDate }}
    chart: {{ .Chart.Name }}
    version: {{ .Chart.Version }}
{{- end }}

{{/* Application metadata */}}
{{- define "mychart.app" -}}
app_name: {{ .Chart.Name }}
app_version: {{ .Chart.Version }}
{{- end -}}
