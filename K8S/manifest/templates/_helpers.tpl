{{- define "admin-app.name" -}}
admin-app
{{- end -}}

{{- define "admin-app.labels" -}}
app: {{ include "admin-app.name" . }}
{{- end -}}
