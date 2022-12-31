<?php Session::init(); ?>
<?php

class Api_Model extends Model
{
	public function __construct()
	{
		parent::__construct();
	}

    public function dni($token,$dni)
    {
        try
        {      
            $url = 'https://apiperu.dev/api/dni/'.$dni.'?api_token='.$token;
            $curl = curl_init();
            curl_setopt_array($curl, array(
                CURLOPT_URL => $url,
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_CUSTOMREQUEST => "GET",
                CURLOPT_SSL_VERIFYPEER => false
            ));
            $response = curl_exec($curl);
            $err = curl_error($curl);
            curl_close($curl);
            
            $res = json_decode($response, true);

            if($res['success']){
                return [
                        'dni'               => $res['data']['numero'] ?? null,
                        'nombres'           => $res['data']['nombres'] ?? null,
                        'apellidoPaterno'   => $res['data']['apellido_paterno'] ?? null,
                        'apellidoMaterno'   => $res['data']['apellido_materno'] ?? null,
                        'codVerifica'       => $res['data']['codigo_verificacion'] ?? null,
                        'direccion'         => $res['data']['direccion_completa'] ?? null,
                        'fechaNacimiento'   => $res['data']['fecha_nacimiento'] ?? null,
                ];
            }
        }
        catch(Exception $e)
        {
            die($e->getMessage());
        }
    }
    public function ruc($token,$ruc)
    {
        try
        {      
            $url = 'https://apiperu.dev/api/ruc/'.$ruc.'?api_token='.$token;
            $curl = curl_init();
            curl_setopt_array($curl, array(
                CURLOPT_URL => $url,
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_CUSTOMREQUEST => "GET",
                CURLOPT_SSL_VERIFYPEER => false
            ));
            $response = curl_exec($curl);
            $err = curl_error($curl);
            curl_close($curl);
            
             $res = json_decode($response, true);

            if($res['success']){
                return [
                        'ruc'               => $res['data']['ruc'] ?? null,
                        'razonSocial'       => $res['data']['nombre_o_razon_social'] ?? null,
                        'nombreComercial'   => null,
                        'estado'            => $res['data']['estado'] ?? null,
                        'condicion'         => $res['data']['condicion'] ?? null,
                        'direccion'         => $res['data']['direccion_completa'] ?? '',
                        'departamento'      => $res['data']['departamento'] ?? '',
                        'provincia'         => $res['data']['provincia'] ?? '',
                        'distrito'          => $res['data']['distrito'] ?? '',
                        'ubigeo'            => $res['data']['ubigeo_sunat'] ?? '',

                ];
            }
        }
        catch(Exception $e)
        {
            die($e->getMessage());
        }
    }
    public function liberarbloqueo()
    {
        try
        {    

            $ds = $this->db->prepare("SELECT bloqueo FROM tm_configuracion");
			$ds->execute();
			$data_s = $ds->fetch();

            if(Session::get('rol') == 1){
				Session::set('bloqueo', '0');
				Session::set('bloqueo_id', $data_s['bloqueo']);
			}else{
				Session::set('bloqueo', $data_s['bloqueo']); 
				Session::set('bloqueo_id', $data_s['bloqueo']); 
			}
            if($data_s['bloqueo'] == 0 ){
                return ["status" => "liberado"];
            }else{
                return ["status" => "bloqueado"];
            }

        }
        catch(Exception $e)
        {
            die($e->getMessage());
        }
    }
}