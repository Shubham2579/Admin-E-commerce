{{- define "admin-ecommerce.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 -}}
{{- end -}}

{{- define "admin-ecommerce.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "admin-ecommerce.name" .) | trunc 63 -}}
{{- end -}}

{{- define "admin-ecommerce.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}