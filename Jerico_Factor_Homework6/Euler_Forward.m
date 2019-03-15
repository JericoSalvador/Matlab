


	functiion [y,t] = Euler_Forward(f, y0, NSTEPS, DT, IOSSTEP)

		y = y0; 
		for ii = 1 : NSTEPS

			ts = f(ii-1) + DT; 
			y0 = y0 + DT + f(y0, ts); 

			if mod(ii, IOSTEP) == 0
				y = [y y0];
				t = [t ts]; 
			end

		end


	end