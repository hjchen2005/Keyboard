Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Entity scan_code_to_ascii is
Port(
scan_code : in STD_LOGIC_VECTOR(7 downto 0);
shift : in STD_LOGIC;
ascii : out STD_LOGIC_VECTOR(7 downto 0)
);
End scan_code_to_ascii;
Architecture arch of scan_code_to_ascii is
Begin
process(shift, scan_code)
  begin
	  --C
		if (shift ='0' and scan_code = "01000011") then
		  ascii <= "01000011";
		--h
		elsif (shift ='0' and scan_code = "01000011") then
		  ascii <= "01101000";
		 --e
		elsif (shift ='0' and scan_code = "00101100") then
		  ascii <= "01100101";
	
		  --n
		elsif (shift ='0' and scan_code = "00110011") then
		  ascii <= "01101110";
		 --space
	--H 
	elsif (shift ='0' and scan_code = "01001000") then
		  ascii <= "01001000";
	--a
	
	elsif (shift ='0' and scan_code = "01100001") then
		  ascii <= "01100001";
	--n
	
	elsif (shift ='0' and scan_code = "01101110") then
		  ascii <= "01101110";
	--j
	
	elsif (shift ='0' and scan_code = "01101010") then
		  ascii <= "01101010";
	--u
	
	elsif (shift ='0' and scan_code = "01110101") then
		  ascii <= "01110101";
	--n
	
	elsif (shift ='0' and scan_code = "01101110") then
		  ascii <= "01101110";
	   end if;
	end process;
End arch;

