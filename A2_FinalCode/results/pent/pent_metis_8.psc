<?xml version="1.0" encoding="UTF-8"?>
<Experiment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.lrr.in.tum.de/Periscope" xsi:schemaLocation="http://www.lrr.in.tum.de/Periscope psc_properties.xsd ">

  <date>2013-01-27</date>
  <time>15:10:26</time>
  <numProcs>8</numProcs>
  <numThreads>1</numThreads>
  <dir>/home/hpc/h039u/h039uab/A2.3_total</dir>
  <sir>./gccg.sir</sir>

  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="8x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="1" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="4" thread="0"/>
	</context>
	<severity>15.4677</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="8x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="1" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="4" thread="0"/>
	</context>
	<severity>14.7967</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>5.51626</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>91851</CallTime>
		<PhaseTime>1665095</PhaseTime>
	</addInfo>
  </property>
</Experiment>
