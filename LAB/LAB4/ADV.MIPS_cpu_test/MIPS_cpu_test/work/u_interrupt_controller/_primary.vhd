library verilog;
use verilog.vl_types.all;
entity u_interrupt_controller is
    port(
        irqn            : in     vl_logic;
        rst_n           : in     vl_logic;
        clk             : in     vl_logic;
        if_pc           : in     vl_logic;
        epc             : out    vl_logic_vector(31 downto 0);
        status          : out    vl_logic_vector(31 downto 0);
        cause           : out    vl_logic_vector(31 downto 0)
    );
end u_interrupt_controller;
