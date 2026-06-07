# @pet-path
default_pet_path='pet'
pet_path=$(tmux show-option -gqv "@pet-path")
pet_path=${pet_path:-$default_pet_path}

# @pet-pane-size
default_pet_pane_size=''
pet_pane_size=$(tmux show-option -gqv "@pet-pane-size")
pet_pane_size=${pet_pane_size:-$default_pet_pane_size}

# @pet-pane-percentage
default_pet_pane_percentage=''
pet_pane_percentage=$(tmux show-option -gqv "@pet-pane-percentage")
pet_pane_percentage=${pet_pane_percentage:-$default_pet_pane_percentage}

# @pet-new-pane-key
default_pet_new_pane_key=''
pet_new_pane_key=$(tmux show-option -gqv "@pet-new-pane-key")
pet_new_pane_key=${pet_new_pane_key:-$default_pet_new_pane_key}

# @pet-vertical-split-pane-key
default_pet_vsplit_pane_key=''
pet_vsplit_pane_key=$(tmux show-option -gqv "@pet-vertical-split-pane-key")
pet_vsplit_pane_key=${pet_vsplit_pane_key:-$default_pet_vsplit_pane_key}

# @pet-horizontal-split-pane-key
default_pet_hsplit_pane_key=''
pet_hsplit_pane_key=$(tmux show-option -gqv "@pet-horizontal-split-pane-key")
pet_hsplit_pane_key=${pet_hsplit_pane_key:-$default_pet_hsplit_pane_key}

# @pet-popup-window-key
default_pet_popup_window_key=''
pet_popup_window_key=$(tmux show-option -gqv "@pet-popup-window-key")
pet_popup_window_key=${pet_popup_window_key:-$default_pet_popup_window_key}

# @pet-popup-width
default_pet_popup_width='80%'
pet_popup_width=$(tmux show-option -gqv "@pet-popup-width")
pet_popup_width=${pet_popup_width:-$default_pet_popup_width}

# @pet-popup-height
default_pet_popup_height='60%'
pet_popup_height=$(tmux show-option -gqv "@pet-popup-height")
pet_popup_height=${pet_popup_height:-$default_pet_popup_height}
