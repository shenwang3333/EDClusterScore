function [counter] = clustercount1d3(seq)

len = length(seq);
counter = 0;
cluster_cnt = 0;


for j = 2:len

	if seq(j) == 'E' || seq(j) == 'D'

		if seq(j-1) == 'E' || seq(j-1) == 'D'

			cluster_cnt = cluster_cnt + 1;

			counter = counter + cluster_cnt;

		else 

			counter = counter;

		end

	end

	if j == 2 && (seq(j) ~= 'E' && seq(j) ~= 'D')
			
		if seq(j-1) == 'E' || seq(j-1) == 'D' 

			%%cluster_cnt = cluster_cnt - 1;
			%%cluster_cnt(cluster_cnt < 0) = 0;

			counter = counter;

		else
			
			cluster_cnt = 0;

			counter = counter;

		end

	end

	if j > 2 && (seq(j) ~= 'E' && seq(j) ~= 'D') && (seq(j) ~= 'K' && seq(j) == 'R')
		
		if seq(j-1) == 'E' || seq(j-1) == 'D' 

			%%cluster_cnt = cluster_cnt - 1;
			%%cluster_cnt(cluster_cnt < 0) = 0;

			counter = counter;

		elseif (seq(j-1) ~= 'E' && seq(j-1) ~= 'D') && (seq(j-2) == 'E' || seq(j-2) ~= 'D')

			%%cluster_cnt = cluster_cnt - 2;
			%%cluster_cnt(cluster_cnt < 0) = 0;

			counter = counter;

		else

			cluster_cnt = 0;

			counter = counter;

		end

	end

	if j > 2 && (seq(j) == 'K' || seq(j) == 'R') && (seq(j-1) == 'E' || seq(j-1) == 'D') && (seq(j-2) == 'E' || seq(j-2) == 'D')

		cluster_cnt = 0;

		counter = counter;

	else
		
		counter = counter;

	end

end



