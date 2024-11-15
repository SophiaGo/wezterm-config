local gpu_adapters = require('utils.gpu_adapter')
local backdrops = require('utils.backdrops')
local colors = require('colors.custom')

return {
    term = "xterm-256color",

    max_fps = 120,
    front_end = 'WebGpu',
    webgpu_power_preference = 'HighPerformance',
    webgpu_preferred_adapter = gpu_adapters:pick_best(),
    -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Dx12', 'IntegratedGpu'),

    -- cursor
    animation_fps = 120,
    cursor_blink_ease_in = 'EaseOut',
    cursor_blink_ease_out = 'EaseOut',
    default_cursor_style = 'BlinkingBlock',
    cursor_blink_rate = 650,

    -- color scheme
    colors = colors,

    -- background
    background = backdrops:create_opts(),
    -- background = {
    --   {
    --     soucrce = { File = wezterm.config_dir .. '/bulb-5258341_1920.jpg'},
    --   },
    --   {
    --     source = { Color = color.background },
    --     height = '100%',
    --     width = '100%',
    --     opacity = 0.80,
    --   },
    -- },

    -- scrollbar
    enable_scroll_bar = true,
    min_scroll_bar_height = "3cell",
    -- colors = {
    --   srollbar_thumb = '#454545'
    -- },

    -- tab bar
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = false,
    use_fancy_tab_bar = false,
    tab_max_width = 25,
    show_tab_index_in_tab_bar = false,
    switch_to_last_active_tab_when_closing_tab = true,

    -- window
    window_padding = {
        left = 0,
        right = 0,
        top = 10,
        bottom = 7.5
    },
    adjust_window_size_when_changing_font_size = false,
    window_close_confirmation = 'NeverPrompt',
    window_frame = {
        active_titlebar_bg = '#090909'
        -- font = fonts.font,
        -- font_size = fonts.font_size,
    },
    -- inactive_pane_hsb = {
    --    saturation = 0.9,
    --    brightness = 0.65,
    -- },
    inactive_pane_hsb = {
        saturation = 1,
        brightness = 1
    }
}
