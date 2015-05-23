select 
	p.partitionNumber, 
	p.pool_poolId,
	pe.experiments_experimentId,
	k.kitId
from 
	SequencerPartitionContainer_Partition spcp,
	_Partition p,
 	Pool pool,
	Pool_Experiment pe,
	Experiment e,
	Experiment_Kit ek,
	Kit k
where
 spcp.partitions_partitionId=p.partitionId and 
 p.pool_poolId=pool.poolId and 
 p.pool_poolId=pe.pool_poolId and
 pe.experiments_experimentId=e.experimentId and 
 ek.experiments_experimentId=e.experimentId and
 ek.kits_kitId=k.kitId;
