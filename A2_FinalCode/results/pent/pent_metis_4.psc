<?xml version="1.0" encoding="UTF-8"?>
<Experiment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.lrr.in.tum.de/Periscope" xsi:schemaLocation="http://www.lrr.in.tum.de/Periscope psc_properties.xsd ">

  <date>2013-01-27</date>
  <time>13:44:24</time>
  <numProcs>4</numProcs>
  <numThreads>1</numThreads>
  <dir>/home/hpc/h039u/h039uab/A2.3_total</dir>
  <sir>./gccg.sir</sir>

  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>13.3494</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>265834</CallTime>
		<PhaseTime>1991362</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>12.8982</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>265834</CallTime>
		<LateTime>256850</LateTime>
		<PhaseTime>1991362</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>13.3487</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>265852</CallTime>
		<PhaseTime>1991588</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>12.8947</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>265852</CallTime>
		<LateTime>256809</LateTime>
		<PhaseTime>1991588</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>13.3519</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>265914</CallTime>
		<PhaseTime>1991582</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>12.8975</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>265914</CallTime>
		<LateTime>256865</LateTime>
		<PhaseTime>1991582</PhaseTime>
	</addInfo>
  </property>
</Experiment>
