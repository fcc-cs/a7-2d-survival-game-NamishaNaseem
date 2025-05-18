extends ProgressBar

var parent
var max_health_val
var min_health_val

func _ready():
	parent = get_parent()
	max_health_val = parent.max_health
	min_health_val = parent.min_health


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	self.value = parent.health
	if parent.health != max_health_val:
		self.visible = true
		if parent.health == min_health_val:
			self.visible = false
	else:
		self.visible = false
