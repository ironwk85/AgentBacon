# coding=utf-8

###### Options ######

options={}

options["<config>"]=ur'Default'
options["<os>"]=ur'playbook'
options["appdata"]=ur'C:/Users/ironwk/AppData/Roaming/MarmaladeTools'
options["build"]=ur'ARM GCC Release'
options["cmdline"]=['C:/Marmalade/6.2/s3e/makefile_builder/mkb.py', 'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/Agent.mkb', '--deploy-only']
options["configlist"]=ur'Default ,'
options["deploymode"]=ur'Package'
options["device"]=ur'"{"localdir}/Deploy.py" device "{"tempdir}/DeployOpts.py" {hasmkb}'
options["dir"]=ur'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10'
options["folder"]=ur'"{"localdir}/Deploy.py" folder "{"tempdir}/DeployOpts.py" {hasmkb}'
options["hasmkb"]=ur''
options["helpfile"]=ur'../docs/Deployment.chm'
options["helppage"]=ur'0'
options["lastdir"]=ur'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10'
options["mkb"]=ur'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/Agent.mkb'
options["mkbdir"]=ur'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)'
options["mkbfile"]=ur'Agent.mkb'
options["outdir"]=ur'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10'
options["resdir"]=ur'c:/marmalade/6.2/tools/DeployTool/'
options["s3edir"]=ur'c:/marmalade/6.2/s3e/'
options["stage"]=ur'build'
options["target"]=ur'Agent'
options["task"]=ur'Default'
options["tasktype"]=ur'Package'

###### Tasks ######

tasks=[]

### Task Default:playbook ###

t={}
tasks.append(t)
t["tasktype"]="Package"
t["<config>"]="Default"
t["os"]="playbook"
t["endDir"]="c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10/deployments/default/playbook/release"

### Task Default:bb10 ###

t={}
tasks.append(t)
t["tasktype"]="Package"
t["<config>"]="Default"
t["os"]="bb10"
t["endDir"]="c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10/deployments/default/bb10/release"
t["hostname"]=["169.254.0.1"]
t["password"]=["31337"]
