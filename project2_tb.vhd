-- *** Test Bench - User Defined Section ***
        tb : PROCESS --password:101
   BEGIN
		CLR<= '1';
        A <= '0';
		B <= '0';
		C <='0';
		D <= '0';
		E<= '0'; --NOTHING
		WAIT FOR 20ns;
		A <= '0';
		B <= '1';
		C <='1';
		D <= '0';
		E<= '1'; --DOOR 1 OPEN
		WAIT FOR 50ns;
		A <= '1';
		B <= '0';
		C <='1';
		D <= '0';
		E<= '1'; --DOOR 2 OPEN
		WAIT FOR 50ns;
		A <= '1';
		B <= '1'; --ALARM
		WAIT FOR 50ns;
		-----------------------------
		CLR <= '1';
		A <= '0';
		B <= '0';
		C <='0';
		D <= '0';
		E<= '0';		--RESET
		WAIT FOR 50ns;
		CLR <= '0';
		A <= '0';
		B <= '0';
		C <='0';
		D <= '0';
		E<= '0';
		WAIT FOR 50ns;
		A <= '0';
		B <= '1';
		C <='1';
		D <= '0';
		E<= '0';--WRONG PASS
		WAIT FOR 50ns;
		A <= '0';
		B <= '1';
		C <='0';
		D <= '1';
		E<= '0'; --WRONG PASS--> ALARM
		WAIT FOR 50ns;
		A <= '0';
		B <= '1';
		C <='1';
		D <= '0';
		E<= '0';--WRONG PASS
		WAIT FOR 50ns;
   END PROCESS;
-- *** End Test Bench - User Defined Section ***
