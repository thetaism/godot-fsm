class_name State
extends Node

@onready var state_machine: StateMachine = get_parent()

var next_state: State = null

func state_physics_process(_delta: float) -> void:
    pass

func state_process(_delta: float) -> void:
    pass

func _on_state_enter() -> void:
    pass

func _on_state_exit() -> void:
    pass