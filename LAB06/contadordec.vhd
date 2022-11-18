library ieee;
use ieee.std_logic_1164.all;

entity contadordec is
port(
	CLK: in bit; --entrada de clock
	ld: in bit; --carrega os dados
	reset: in bit;
	data: in integer range 15 downto 0; -- entrada de dados
	tc: out bit;
	q: out integer range 15 downto 0); --saída de dados
END contadordec;

architecture main of contadordec is 
begin 

process (CLK, reset)

variable qsignal: integer range 15 downto 0; --variavel auxiliar para saida

begin 
	if(reset ='1')then
		qsignal:= 15;
		tc<='0';
	
	elsif(CLK' event and CLK='1')then
		if(ld = '1') then
			qsignal := data;
			tc<='0';
		else
			if(qsignal <= 0) then
				qsignal := 15;
				tc <='0';
			else
				qsignal := qsignal - 1;
				if(qsignal=0)then
					tc<='1';
				end if;
			end if;
		end if;
	end if;
	
	q <= qsignal;
end process;

end architecture main;