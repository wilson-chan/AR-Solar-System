package 
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import org.papervision3d.lights.PointLight3D;
	import org.papervision3d.materials.shadematerials.FlatShadeMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.primitives.Cone;
	import org.papervision3d.objects.parsers.DAE;
	import org.papervision3d.objects.primitives.Plane;
	import org.papervision3d.materials.MovieAssetMaterial;
	import org.papervision3d.events.FileLoadEvent;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.core.proto.MaterialObject3D;
	import org.papervision3d.objects.primitives.Cube;

	public class solar_system extends PV3DARApp
	{
		var _codeFile:String = 'Data/hiro.pat';
		
		private var _startdae:DAE;
		private var _solarsystemDAE:DAE;
		private var _sunDAE:DAE;
		private var _mercuryDAE:DAE;
		private var _venusDAE:DAE;
		private var _earthDAE:DAE;
		private var _marsDAE:DAE;
		private var _jupiterDAE:DAE;
		private var _saturnDAE:DAE;
		private var _uranusDAE:DAE;
		private var _neptuneDAE:DAE;
	
		public function solar_system()
		{
			this.init('Data/camera_para.dat',_codeFile);
		}
		protected override function onInit():void
		{
			super.onInit();
			
			_startdae=new DAE();
			_startdae.load('model/solar70.DAE');
			_startdae.scale=0.4;
			_startdae.rotationX =90;
			_startdae.rotationZ = 90;
			_baseNode.addChild(_startdae);
			
			solarsystem.addEventListener(MouseEvent.CLICK, _solarsystem);
			sun.addEventListener(MouseEvent.CLICK, _sun);
			mercury.addEventListener(MouseEvent.CLICK, _mercury);
			venus.addEventListener(MouseEvent.CLICK, _venus);
			earth.addEventListener(MouseEvent.CLICK, _earth);
			mars.addEventListener(MouseEvent.CLICK, _mars);
			jupiter.addEventListener(MouseEvent.CLICK, _jupiter);
			saturn.addEventListener(MouseEvent.CLICK, _saturn);
			uranus.addEventListener(MouseEvent.CLICK, _uranus);
			neptune.addEventListener(MouseEvent.CLICK, _neptune);
			

			addChild(solarsystem);
			addChild(sun);
			addChild(mercury);
			addChild(venus);
			addChild(earth);
			addChild(mars);
			addChild(jupiter);
			addChild(saturn);
			addChild(uranus);
			addChild(neptune);
				
			_solarsystemDAE = new DAE(true,"_dae",true);
			_solarsystemDAE.load('model/solar70.DAE');
			_solarsystemDAE.scale = 0.4;
			_solarsystemDAE.rotationX = 90;
			_solarsystemDAE.rotationZ = 90;
				
			_sunDAE = new DAE(true,"_dae",true);
			_sunDAE.load('model/sun.DAE');
			_sunDAE.scale = 1;
			_sunDAE.rotationX = 90;
			_sunDAE.rotationZ = 90;

			_mercuryDAE = new DAE(true,"_dae",true);
			_mercuryDAE.load('model/mercury.DAE');
			_mercuryDAE.scale = 1;
			_mercuryDAE.rotationX = 90;
			_mercuryDAE.rotationZ = 90;
			
			_venusDAE = new DAE(true,"_dae",true);
			_venusDAE.load('model/venus.DAE');
			_venusDAE.scale = 1;
			_venusDAE.rotationX = 90;
			_venusDAE.rotationZ = 90;
			
			_earthDAE = new DAE(true,"_dae",true);
			_earthDAE.load('model/earth.DAE');
			_earthDAE.scale = 1;
			_earthDAE.rotationX = 90;
			_earthDAE.rotationZ = 90;
			
			_marsDAE = new DAE(true,"_dae",true);
			_marsDAE.load('model/mars.DAE');
			_marsDAE.scale = 1;
			_marsDAE.rotationX = 90;
			_marsDAE.rotationZ = 90;
			
			_jupiterDAE = new DAE(true,"_dae",true);
			_jupiterDAE.load('model/jupiter.DAE');
			_jupiterDAE.scale = 1;
			_jupiterDAE.rotationX = 90;
			_jupiterDAE.rotationZ = 90;

			_saturnDAE = new DAE(true,"_dae",true);
			_saturnDAE.load('model/saturn.DAE');
			_saturnDAE.scale = 1;
			_saturnDAE.rotationX = 90;
			_saturnDAE.rotationZ = 90;

			_uranusDAE = new DAE(true,"_dae",true);
			_uranusDAE.load('model/uranus.DAE');
			_uranusDAE.scale = 1;
			_uranusDAE.rotationX = 90;
			_uranusDAE.rotationZ = 90;

			_neptuneDAE = new DAE(true,"_dae",true);
			_neptuneDAE.load('model/neptune.DAE');
			_neptuneDAE.scale = 1;
			_neptuneDAE.rotationX = 90;
			_neptuneDAE.rotationZ = 90;
			
			function _solarsystem (e:MouseEvent):void
			{	
				remove_all();
				_baseNode.addChild(_solarsystemDAE);
				addChild(solarsystem_word);
			}
			
			function _sun (e:MouseEvent):void
			{	
				remove_all();
				_baseNode.addChild(_sunDAE);
				addChild(sun_word);
			}

			function _mercury (e:MouseEvent):void
			{	
				remove_all();
				_baseNode.addChild(_mercuryDAE);
				addChild(mercury_word);
			}
			
			function _venus (e:MouseEvent):void
			{	
				remove_all();
				_baseNode.addChild(_venusDAE);
				addChild(venus_word);
			}
			
			function _earth (e:MouseEvent):void
			{	
				remove_all();
				_baseNode.addChild(_earthDAE);
				addChild(earth_word);
			}
			
			function _mars (e:MouseEvent):void
			{	
				remove_all();
				_baseNode.addChild(_marsDAE);
				addChild(mars_word);
			}
			
			function _jupiter (e:MouseEvent):void
			{	
				remove_all();
				_baseNode.addChild(_jupiterDAE);
				addChild(jupiter_word);
			}
			
			function _saturn (e:MouseEvent):void
			{	
				remove_all();
				_baseNode.addChild(_saturnDAE);
				addChild(saturn_word);
			}

			function _uranus (e:MouseEvent):void
			{	
				remove_all();
				_baseNode.addChild(_uranusDAE);
				addChild(uranus_word);
			}

			function _neptune (e:MouseEvent):void
			{	
				remove_all();
				_baseNode.addChild(_neptuneDAE);
				addChild(neptune_word);
			}
						
			function remove_all () : void
			{	
				_baseNode.removeChild(_startdae);
				_baseNode.removeChild(_solarsystemDAE);
				_baseNode.removeChild(_sunDAE);
				_baseNode.removeChild(_mercuryDAE);
				_baseNode.removeChild(_venusDAE);
				_baseNode.removeChild(_earthDAE);
				_baseNode.removeChild(_marsDAE);
				_baseNode.removeChild(_jupiterDAE);
				_baseNode.removeChild(_saturnDAE);
				_baseNode.removeChild(_uranusDAE);
				_baseNode.removeChild(_neptuneDAE);				
				
				addChild(solarsystem_word);
				addChild(sun_word);
				addChild(mercury_word);
				addChild(venus_word);
				addChild(earth_word);
				addChild(mars_word);
				addChild(jupiter_word);
				addChild(saturn_word);
				addChild(uranus_word);
				addChild(neptune_word);				
				
				removeChild(solarsystem_word);
				removeChild(sun_word);
				removeChild(mercury_word);
				removeChild(venus_word);
				removeChild(earth_word);
				removeChild(mars_word);
				removeChild(jupiter_word);
				removeChild(saturn_word);
				removeChild(uranus_word);
				removeChild(neptune_word);
			}
			
			var light:PointLight3D = new PointLight3D ;
			light.x=0;
			light.y =1000;
			light.z = -1000;
			
			}}
	}
