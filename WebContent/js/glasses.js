// Webカメラ取得、出力部分
var video = document.getElementById('inputVideo');
var videoInput = video;
var localStream = null;
navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || window.navigator.mozGetUserMedia;
window.URL = window.URL || window.webkitURL;
navigator.getUserMedia({video: true, audio: false}, function(stream) { // for success case
  console.log(stream);
  video.src = window.URL.createObjectURL(stream);
  localStream = stream;
}, function(err) { // for error case
  console.log(err);
});

// カメラの作成
var width = 640;
var height = 605;
var fov = 60;  //画角
var aspect = width / height;  //撮影結果の縦横比
var near = 1;  //撮影可能な最もカメラに近い距離
var far = 1000;  //撮影可能な最もカメラから遠い距離
camera = new THREE.PerspectiveCamera(fov, aspect, near, far);

camera.position.set(0, 0, 50);

// シーン（舞台）の作成
scene = new THREE.Scene();

// レンダラーの設置
renderer = new THREE.WebGLRenderer()
renderer.setSize(width, height);
var output = document.getElementById("output");
output.appendChild(renderer.domElement);
//document.body.appendChild( renderer.domElement );

// 光源
var directionalLight = new THREE.DirectionalLight( 0xffffff,3 );
directionalLight.position.set(0,0.7,0.7);
scene.add( directionalLight );

//.mtl（マテリアル情報）ファイルの読み込み
var mtlLoader = new THREE.MTLLoader();  //mtl読み込み用オブジェクトの生成
mtlLoader.load('3d/Eyewere_sample.mtl', mtlCallBack);  //mtlファイルの読み込み

function mtlCallBack(materials) {  //mtlLoaderのコールバック関数
materials.preload();
//.obj（ジオメトリ情報）ファイルの読み込み
//obj読み込み用オブジェクトの生成
var objLoader = new THREE.OBJLoader();
//先読みしたマテリアル情報をobj読み込み用のオブジェクトにセット
objLoader.setMaterials(materials);
//objファイルの読み込み
objLoader.load('3d/Eyewere_sample.obj', objCallBack);
}

//objLoaderのコールバック関数
function objCallBack(object) {
// オブジェクト（メッシュ）のサイズ指定
object.scale.set(3, 3, 3);
object.position.set(0, 4, -8);
scene.add(object);
}

//オブジェクトを作成(webカメラ)
var behindGeometry = new THREE.PlaneGeometry(60, 60);
var videoTexture = new THREE.VideoTexture(video);  //videoをテクスチャとして使う（videoはwebカメラになっている）
videoTexture.minFilter = THREE.LinearFilter;
videoTexture.magFilter = THREE.LinearFilter;
videoTexture.format = THREE.RGBFormat;
videoTexture.wrapS = THREE.MirroredRepeatWrapping;
var behindMaterial = new THREE.MeshBasicMaterial( {map:videoTexture} ); //テクスチャをマテリアルにセット
var behindMesh = new THREE.Mesh(behindGeometry, behindMaterial);
scene.add(behindMesh);

animate();

function animate() {
  requestAnimationFrame(animate);
  renderer.render(scene, camera);
}
