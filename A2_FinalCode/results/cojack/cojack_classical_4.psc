<?xml version="1.0" encoding="UTF-8"?>
<Experiment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.lrr.in.tum.de/Periscope" xsi:schemaLocation="http://www.lrr.in.tum.de/Periscope psc_properties.xsd ">

  <date>2013-01-27</date>
  <time>13:56:46</time>
  <numProcs>4</numProcs>
  <numThreads>1</numThreads>
  <dir>/home/hpc/h039u/h039uab/A2.3_total</dir>
  <sir>./gccg.sir</sir>

  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>12.5539</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1652419</CallTime>
		<PhaseTime>13162628</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>12.2223</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1652419</CallTime>
		<LateTime>1608772</LateTime>
		<PhaseTime>13162628</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>14.5737</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1918284</CallTime>
		<PhaseTime>13162628</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>29.6759</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3906125</CallTime>
		<PhaseTime>13162628</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>29.5523</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3509034</CallTime>
		<PhaseTime>11873973</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>22.963</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2726616</CallTime>
		<PhaseTime>11873973</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>6.47743</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2726616</CallTime>
		<LateTime>769128</LateTime>
		<PhaseTime>11873973</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>39.3386</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4671320</CallTime>
		<PhaseTime>11874653</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>16.5534</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1965653</CallTime>
		<PhaseTime>11874653</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>45.9121</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>5451902</CallTime>
		<PhaseTime>11874647</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="4x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>9.99668</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1187070</CallTime>
		<PhaseTime>11874647</PhaseTime>
	</addInfo>
  </property>
</Experiment>
