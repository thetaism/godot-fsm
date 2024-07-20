class_name StateMachine
extends Node

var states: Array = []

@export var current_state: State
var previous_state: State

signal state_changed()

func _ready() -> void:
    for state: State in get_children():
        states.append(state)

func _physics_process(delta) -> void:
    current_state.state_physics_process(delta)

func _process(delta) -> void:
    if not current_state.next_state == null:
        pass
    
    current_state.state_process(delta)

func switch_states(_next_state: State) -> void:
    if not current_state == null:
        current_state._on_state_exit()
        current_state.next_state = null
    
    current_state = _next_state
    current_state._on_state_enter()