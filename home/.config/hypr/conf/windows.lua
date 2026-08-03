hl.workspace_rule({
    workspace = 'w[tv1]',
    gaps_out = 0,
    gaps_in = 0
})

hl.window_rule({
    match = {
        float = false,
        workspace = 'w[tv1]'
    },
    border_size = 0,
    rounding = 0
})

hl.window_rule({
    match = { 
        class = '^xdg-desktop-portal-.*$'
    },
    float = true,
    size = '500 400',
    center = true
})
