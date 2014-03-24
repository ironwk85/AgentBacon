# -*- coding: utf-8 -*-
# Deployment settings for Agent.
# This file is autogenerated by the mkb system and used by the s3e deployment
# tool during the build process.

config = {}
cmdline = ['C:/Marmalade/6.2/s3e/makefile_builder/mkb.py', 'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/Agent.mkb', '--default-buildenv=vc10', '--msvc-project', '--deploy-only']
mkb = 'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/Agent.mkb'
mkf = ['c:\\marmalade\\6.2\\modules\\iwgx\\iwgx.mkf', 'c:\\marmalade\\6.2\\modules\\iwgeom\\iwgeom.mkf', 'c:\\marmalade\\6.2\\modules\\iwutil\\iwutil.mkf', u'c:\\users\\ironwk\\appdata\\roaming\\marmalade\\packages\\6.2.0\\libjpeg_6b\\libjpeg.mkf', u'c:\\users\\ironwk\\appdata\\roaming\\marmalade\\packages\\6.2.0\\libpng_1.2.34\\libpng.mkf', u'c:\\users\\ironwk\\appdata\\roaming\\marmalade\\packages\\6.2.0\\zlib_1.2.4\\zlib.mkf', 'c:\\marmalade\\6.2\\modules\\iwresmanager\\iwresmanager.mkf', 'c:\\marmalade\\6.2\\modules\\iwgl\\iwgl.mkf', 'c:\\marmalade\\6.2\\modules\\iw2d\\iw2d.mkf', 'c:\\marmalade\\6.2\\modules\\iwgxfont\\iwgxfont.mkf', u'c:\\users\\ironwk\\appdata\\roaming\\marmalade\\packages\\6.2.0\\tiniconv_1.0.1\\tiniconv.mkf', 'c:\\users\\ironwk\\documents\\blackberry\\juego\\agentbaconlalo - v1.3(ariel)\\soundengine\\soundengine.mkf']

class DeployConfig(object):
    pass

######### ASSET GROUPS #############

assets = {}

assets['Default'] = [
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/kevinBacon.png', 'textures/kevinBacon.png', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/music.wav', 'music.wav', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/crash.wav', 'crash.wav', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/life.wav', 'life.wav', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/maxiCoin.wav', 'maxiCoin.wav', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/fondo.jpg', 'textures/fondo.jpg', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/menu.jpg', 'textures/menu.jpg', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/lifeStatus.png', 'textures/lifeStatus.png', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/claw.png', 'textures/claw.png', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/tnt.png', 'textures/tnt.png', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/tank.png', 'textures/tank.png', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/chuletas.png', 'textures/chuletas.png', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/corazones.png', 'textures/corazones.png', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/musicOn.jpg', 'textures/musicOn.jpg', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/musicOf.jpg', 'textures/musicOf.jpg', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/monedas.png', 'textures/monedas.png', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/monedas200pts.png', 'textures/monedas200pts.png', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/loading.jpg', 'textures/loading.jpg', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/gameover.jpg', 'textures/gameover.jpg', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/textures/final.jpg', 'textures/final.jpg', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/iwgxfontbasic.group.bin', 'iwgxfontbasic.group.bin', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/splashscreen.jpg', 'splashscreen.jpg', 0),
    ('c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/Level1.group.bin', 'Level1.group.bin', 0),
]

######### DEFAULT CONFIG #############

class DefaultConfig(DeployConfig):
    embed_icf = -1
    name = 'AgentBacon'
    pub_sign_key = 0
    priv_sign_key = 0
    caption = 'Agent Bacon'
    long_caption = 'AgentBacon'
    version = [15, 0, 0]
    config = ['c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/app.icf']
    data_dir = 'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data'
    iphone_link_lib = []
    linux_ext_lib = []
    iphone_link_libdir = []
    blackberry_phone_icon = 'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/logo2.jpg'
    iphone_link_opts = []
    osx_ext_dll = []
    blackberry_cskpass = 'm2h5hzmb'
    android_external_jars = []
    android_external_res = []
    android_supports_gl_texture = []
    blackberry_authorid = 'gYAAgOqe5aNwTHsW31_f64VcFFQ'
    blackberry_keystore = 'C:/Users/ironwk/Local Settings/Application Data/Research In Motion/author.p12'
    android_extra_manifest = []
    iphone_link_libdirs = []
    android_extra_application_manifest = []
    icon = 'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/data/logo2.jpg'
    win32_ext_dll = []
    android_so = []
    version_string = '15.0'
    blackberry_author = 'smap'
    iphone_link_libs = []
    blackberry_storepass = 'M2H5hZmb'
    target = {
         'arm' : {
                   'debug'   : r'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10/Debug_Agent_VC10_arm/Agent.s3e',
                   'release' : r'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10/Release_Agent_VC10_arm/Agent.s3e',
                 },
         'mips_gcc' : {
                   'debug'   : r'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10/Debug_Agent_VC10_gcc_mips/Agent.so',
                   'release' : r'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10/Release_Agent_VC10_gcc_mips/Agent.so',
                 },
         'x86' : {
                   'debug'   : r'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10/Debug_Agent_VC10_x86/Agent.s86',
                   'release' : r'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10/Release_Agent_VC10_x86/Agent.s86',
                 },
         'arm_gcc' : {
                   'debug'   : r'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10/Debug_Agent_VC10_gcc_arm/Agent.s3e',
                   'release' : r'c:/Users/ironwk/Documents/blackberry/juego/agentBaconLalo - V1.3(ariel)/build_agent_vc10/Release_Agent_VC10_gcc_arm/Agent.s3e',
                 },
        }
    assets = assets['Default']

default = DefaultConfig()
