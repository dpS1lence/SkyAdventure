public var JumpForce : int;
var speed = 0;
function Start () {

}

function Update () {
print(speed);
if (Input.GetKeyDown("space")){
//simple "Jump" of the Car
rigidbody.AddForce (Vector3.up * JumpForce * 100);
}
}