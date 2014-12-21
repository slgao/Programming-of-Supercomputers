<?xml version="1.0" encoding="UTF-8"?>
<Experiment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.lrr.in.tum.de/Periscope" xsi:schemaLocation="http://www.lrr.in.tum.de/Periscope psc_properties.xsd ">

  <date>2013-01-27</date>
  <time>13:48:59</time>
  <numProcs>4</numProcs>
  <numThreads>1</numThreads>
  <dir>/home/hpc/h039u/h039uab/A2.3_total</dir>
  <sir>./gccg.sir</sir>

  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>6.88924</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>527231</CallTime>
		<PhaseTime>7652966</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>6.54035</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>527231</CallTime>
		<LateTime>500531</LateTime>
		<PhaseTime>7652966</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>6.8902</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>527353</CallTime>
		<PhaseTime>7653664</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>6.53832</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>527353</CallTime>
		<LateTime>500421</LateTime>
		<PhaseTime>7653664</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>6.89109</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>527421</CallTime>
		<PhaseTime>7653666</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="4x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>6.53911</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>527421</CallTime>
		<LateTime>500482</LateTime>
		<PhaseTime>7653666</PhaseTime>
	</addInfo>
  </property>
</Experiment>
