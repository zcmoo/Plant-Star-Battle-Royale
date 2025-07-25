class_name KeyUtils
enum Action {LEFT, RIGHT, JUMP, ATTACK, SKILL, SELECT}
const ACTIONS_MAP : Dictionary = {
		Action.LEFT: "左",
		Action.RIGHT: "右",
		Action.JUMP: "跳",
		Action.ATTACK: "攻击", 
		Action.SKILL: "技能", 
		Action.SELECT: "确定"
}


static func is_action_pressed(action: Action) -> bool:
	return Input.is_action_pressed(ACTIONS_MAP[action])

static func is_action_just_pressed(action: Action) -> bool:
	return Input.is_action_just_pressed(ACTIONS_MAP[action])

static func is_action_just_released(action: Action) -> bool:
	return Input.is_action_just_released(ACTIONS_MAP[action])
