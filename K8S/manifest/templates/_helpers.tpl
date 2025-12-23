{{- define "admin-app.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "admin-app.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "admin-app.labels" -}}
app.kubernetes.io/name: {{ include "admin-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "admin-app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "admin-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
