 --Toggle Term
t = {
        name = "Terminal",
        n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" }, -- Node Terminal
        t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" }, -- (Optional) Htop, If you have htop in linux
        p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" }, -- Python Terminal
        f = { "<cmd>ToggleTerm direction=float<cr>", "Float" }, -- Floating Terminal

        -- Play with size according to your needs.
        h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" } -- Horizontal Terminal,
        v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" }, -- Vertical Terminal
}
