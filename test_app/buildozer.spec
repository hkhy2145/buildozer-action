[app]

title = Test App
package.name = testapp
package.domain = org.test

source.dir = .
source.include_exts = py,png,jpg,kv,atlas

version = 0.1
requirements = android,app,python3,kivy,pyjnius,androidsdk=34,buildozer
orientation = portrait
fullscreen = 0
android.archs = armeabi-v7a
android.accept_sdk_license = True
# iOS specific
ios.kivy_ios_url = https://github.com/kivy/kivy-ios
ios.kivy_ios_branch = master
ios.ios_deploy_url = https://github.com/phonegap/ios-deploy
ios.ios_deploy_branch = 1.7.0

[buildozer]
log_level = 2
