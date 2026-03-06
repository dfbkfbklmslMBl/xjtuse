counter_inst : counter PORT MAP (
		aclr	 => aclr_sig,
		clock	 => clock_sig,
		data	 => data_sig,
		sload	 => sload_sig,
		q	 => q_sig
	);
