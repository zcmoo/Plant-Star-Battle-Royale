class_name KeyUtils
enum Action {LEFT, RIGHT, JUMP, ATTACK, SKILL, SELECT, NULL}
const ACTIONS_MAP : Dictionary = {
	Charater.ControlScheme.P1:
		{
			Action.LEFT: "左",
			Action.RIGHT: "右",
			Action.JUMP: "跳",
			Action.ATTACK: "攻击", 
			Action.SKILL: "技能", 
			Action.SELECT: "确定",
			Action.NULL: "无"
		}
}


static func get_input_vector(scheme: Charater.ControlScheme) -> Vector2:
	var map:Dictionary = ACTIONS_MAP[scheme]
	return Input.get_vector(map[Action.LEFT], map[Action.RIGHT], map[Action.NULL], map[Action.NULL])

static func is_action_pressed(scheme: Charater.ControlScheme, action: Action) -> bool:
	return Input.is_action_pressed(ACTIONS_MAP[scheme][action])

static func is_action_just_pressed(scheme: Charater.ControlScheme, action: Action) -> bool:
	return Input.is_action_just_pressed(ACTIONS_MAP[scheme][action])

static func is_action_just_released(scheme: Charater.ControlScheme, action: Action) -> bool:
	return Input.is_action_just_released(ACTIONS_MAP[scheme][action])
