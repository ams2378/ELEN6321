--------------------------------------
-- OR gate (ESD book figure 2.3)
--
-- two descriptions provided
--------------------------------------

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------

entity OR_ent is
port(	x: in std_logic;
	y: in std_logic;
	F: out std_logic
);
end OR_ent;  

---------------------------------------


architecture OR_beh of OR_ent is 
begin 

    F <= x or y; 

end OR_beh;

---------------------------------------
