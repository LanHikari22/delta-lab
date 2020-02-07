library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package custom_types is
	-- this is used when specifiying N slv busses between entities
	type bus_arr is array (natural range <>) of std_logic_vector;
end package;

package body custom_types is

end package body;