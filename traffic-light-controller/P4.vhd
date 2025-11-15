library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity P4 is 
port(
	clk: in std_logic;
	rst: in std_logic;
	button: in std_logic;
	g, r, y: out std_logic;
	count: out std_logic_vector(2 downto 0)
	--countero: out std_logic
	);
end P4;
architecture asd of P4 is
type state is(idle, waiting_y, Sy, Sr);
signal c_st, nx_st: state;
signal sig0, sig1: std_logic;
signal button_e: std_logic;
signal enable: std_logic;
signal counter: integer range 0 to 14;
signal EoC: std_logic;

begin
--seq
process(clk, rst)
begin
if rst = '1' then 
	c_st <= idle;
	counter <= 0;
	sig0 <= '0';
elsif clk'event and clk = '1' then 
	if enable = '1' then 
	  if counter = 14 then
		counter <= 0;
	  else
		counter <= counter + 1;
      end if;
	else
		counter <= 0;
	end if;
	c_st <= nx_st;
	--edge det
	sig0 <= button;
	sig1 <= sig0; 
end if;
end process;

process(counter)
begin
  if counter = 4 then 
	EoC <= '1';
  elsif counter = 9 then 
	EoC <= '1';
  elsif counter = 14 then 
	EoC <= '1';
  else
	EoC <= '0';
  end if;
end process;
	
button_e <= sig0 and (not sig1);

--FSM
process(c_st, EoC, button_e)
begin

case c_st is
when idle =>

	g <= '1';
	r <= '0';
	y <= '0';
	enable<='0';
	if button_e = '1' then 
	nx_st <= waiting_y;
	
	else 
		nx_st <= idle;
	end if;
when waiting_y =>
	enable <= '1';
	r <= '0';
	g <= '1';
	y <= '0';
	if EoC = '1' then		
		nx_st <= Sy;
		
	else	  
	  nx_st <= waiting_y;
	end if;
when Sy =>
	enable <='1';
	y <= '1';
	r <= '0';
	g <= '0';
	if EoC = '1' then 
		nx_st <= sr;
		
	else
		nx_st <= Sy;
		
	end if;
when Sr =>
	enable <= '1';
	r <= '1';
	y <= '0';
	g <= '0';
	if EoC = '1' then 
		nx_st <= idle;
	else 
		nx_st <= Sr;
	end if;
end case;
end process;

--process(EoC)
--begin
--if EoC = '1' then
--	COUNTERO <= '1';
--end if;
--end process;
count <= std_logic_vector(to_unsigned(counter, 3));
end asd;