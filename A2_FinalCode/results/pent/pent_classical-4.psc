<?xml version="1.0" encoding="UTF-8"?>
<Experiment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.lrr.in.tum.de/Periscope" xsi:schemaLocation="http://www.lrr.in.tum.de/Periscope psc_properties.xsd ">

  <date>2013-01-27</date>
  <time>13:46:50</time>
  <numProcs>4</numProcs>
  <numThreads>1</numThreads>
  <dir>/home/hpc/h039u/h039uab/A2.3_total</dir>
  <sir>./gccg.sir</sir>

  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>7.59809</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>229860</CallTime>
		<PhaseTime>3025233</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>6.84751</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>229860</CallTime>
		<LateTime>207153</LateTime>
		<PhaseTime>3025233</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>14.5966</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>441580</CallTime>
		<PhaseTime>3025233</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>29.0838</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>879853</CallTime>
		<PhaseTime>3025233</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>6.48805</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>169054</CallTime>
		<PhaseTime>2605621</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>6.48533</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>169054</CallTime>
		<LateTime>168983</LateTime>
		<PhaseTime>2605621</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>31.3035</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>815650</CallTime>
		<PhaseTime>2605621</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>23.3557</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>608562</CallTime>
		<PhaseTime>2605621</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>6.40224</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>608562</CallTime>
		<LateTime>166818</LateTime>
		<PhaseTime>2605621</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>6.48791</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>169067</CallTime>
		<PhaseTime>2605878</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>6.48472</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>169067</CallTime>
		<LateTime>168984</LateTime>
		<PhaseTime>2605878</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>41.1329</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1071872</CallTime>
		<PhaseTime>2605878</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>17.0201</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>443523</CallTime>
		<PhaseTime>2605878</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>6.4893</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>169103</CallTime>
		<PhaseTime>2605873</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>6.48504</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>169103</CallTime>
		<LateTime>168992</LateTime>
		<PhaseTime>2605873</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>47.5266</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1238483</CallTime>
		<PhaseTime>2605873</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>10.6878</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>278510</CallTime>
		<PhaseTime>2605873</PhaseTime>
	</addInfo>
  </property>
</Experiment>
