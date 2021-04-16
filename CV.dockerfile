FROM mama-and-papa:14.05.1988 as Slawek

ENV LOCATION=Gdynia
ENV PHONE=+48506769748
ENV EMAIL="slawek_ostrowski@gazeta.pl"

RUN useradd -m slawek

USER slawek
WORKDIR /home/slawek

RUN echo -e "2011-2012 -> Gdansk University of Technology, Faculty of Electronics, Telecommunications and Informatics \
		  Field of study: Electronics and Telecommunications \
		  Spec: Radio Communication Systems and Networks; Second cycle M.A. studies with lecture English. \
		  Master’s thesis: “Analysis of spectrum occupancy in the frequency range from 300MHz to 2GHz \
		  on the area of Gdansk University of Technology \n" >> higher-education  \

RUN echo -e "2007-2011 -> Gdansk University of Technology, Faculty of Electronics, Telecommunications and Informatics \
		  Field of study: Electronics and Telecommunications \
		  Spec: Radio Communication Systems and Networks; First cycle engineering studies. \
		  Engineering project: WiFi network planning using wave propagation \
		  simulator for indoor environment (Old WETI)" >> higher-education 
		  
RUN cat > job-experience << 'EOF'
	January 2019 – present: DevOps Engineer at Intel Technology Poland \
	duties: Solution benchmarking automation with ansible, python and docker for \
	Intel Optane Persistent Memory, server HW managment and planning, \
	external customers support \
	\
	July 2017 – December 2018: DevOps/Validation Engineer at Intel Technology Poland \
	duties: IP scans automation, Klocwork service support, puppet modules \
	development, OpenStack maintenance, hosts provisioning and OS Image \
	building, automated test case development with python unit tests \
	framework , Jenkins jobs configuration. \
	\
	September 2016 – June 2017: Network Software Engineer at Intel Technology Poland \
	duties: Validation of RDMA Linux and FreeBSD driver for Intel Ethernet \
	network cards; developing test plans; storage testing; interoperability \
	testing; developing automated testing with bash and python. \
	\	 
   	January 2013 – August 2016: IT Systems Programmer at Intel Technology Poland \
	duties: L3 support for SCAN tools (Collaborator, Crucible/Fisheye, \
	Protex, CodeCenter), planning and executing application upgrades and \
	maintenance; deploying environment changes through puppet. \
	Developing application specific scripts in powershell/bash/python. \
	\	  
	January – December 2012 Internship at Intel Technology Poland as IT system programmer \
	duties: support for users of Collaborator, ClearCase, Incredibuild. Testing \
	and new version deployment of Collaborator. Web and Documentation \
	support for ITS3 Technical Conference. \
	\	  
	August-September 2011 Internship at Compuware, \
	duties: Performance tests of different software modules, software \
	compatibility tests, creating Perl scripts for software testing \
	\	  
	July 2009 Internship at VIVICOM; \
	duties: service of teleinformatic and video conferencing systems, setup of \
	VoIP exchange, maintenance and network installation, tests of video \
	conferencing terminals; \
	EOF
		  
RUN 
