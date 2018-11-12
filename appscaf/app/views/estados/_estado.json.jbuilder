#json.extract! estado, :id, :nombre, :paise=>nombre,  :created_at, :updated_at
#json.url estado_url(estado, format: :json)
#json.estados @estados do |estado|
	json.id estado.id
	json.nombre estado.nombre
	json.paise estado.paise.nombre
#end