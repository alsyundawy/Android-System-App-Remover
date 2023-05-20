#!/bin/bash

# Samsung Bloatware Remover tools...
# Make sure you have ADB installed on your PC...

## Declaring array of packages to uninstall ##
declare -a arr=(
    
    ############################################################
    ## Samsung Bloatware List ##
    ############################################################
    "samsung.android.bixby.wakeup"
    "samsung.android.app.spage"
    "samsung.android.app.routines"
    "samsung.android.bixby.service"
    "samsung.android.visionintelligence"
    "samsung.android.bixby.agent"
    "samsung.android.bixby.agent.dummy"
    "samsung.android.bixbyvision.framework"
    "samsung.android.messaging"
    "sec.android.app.sbrowser"
    "samsung.android.drivelink.stub"
    "samsung.android.mateagent"
    "sec.android.easyMover.Agent"
    "samsung.android.app.watchmanagerstub"
    "sec.android.daemonapp"
    "samsung.android.app.social"
    "samsung.ecomm.global"
    "sec.android.app.voicenote"
    "samsung.android.voc"
    "sec.android.app.popupcalculator"
    "samsung.android.oneconnect"
    "samsung.android.widgetapp.yahooedge.finance"
    "samsung.android.widgetapp.yahooedge.sport"
    "samsung.app.highlightplayer"
    "samsung.android.svoiceime"
    "samsung.android.email.provider"
    "samsung.android.wellbeing"
    "samsung.android.service.livedrawing"
    "sec.android.mimage.avatarstickers"
    "samsung.android.game.gamehome"
    "samsung.android.game.gametools"
    "samsung.android.gametuner.thin"
    "samsung.android.game.gos"
    "samsung.android.hmt.vrsvc"
    "com.samsung.android.messaging"
    "com.sec.android.easyonehand"
    "com.samsung.android.app.watchmanagerstub"
    "com.sec.android.daemonapp"
    "com.samsung.ecomm.global"
    "com.sec.android.app.popupcalculator"
    "com.samsung.android.service.aircommand"
    "com.wsomacp"
    "flipboard.boxer.app"
    "com.samsung.android.wellbeing"
    "com.samsung.android.aremoji"
    "com.sec.android.mimage.avatarstickers"
    "com.samsung.android.emojiupdater"
    "com.samsung.android.game.gamehome"
    "com.samsung.android.app.camera.sticker.stamp.preload"
    "com.samsung.android.stickercenter"
    "com.samsung.android.app.vrsetupwizardstub"
    "com.google.vr.vrcore"
    "jp.gocro.smartnews.android"
    "com.linkedin.android"
    "com.samsung.android.app.contacts"
    "com.cnn.mobile.android.phone"
    
    
    
    ############################################################
    ## Google Bloatware List ##
    ############################################################
    "com.android.hotwordenrollment.okgoogle"
    "com.google.android.apps.googleassistant"
    "com.google.android.apps.magazines"
    "com.google.android.inputmethod.latin"
    "com.google.android.inputmethod.pinyin"
    "com.google.android.inputmethod.japanese"
    "com.google.android.inputmethod.korean"
    "com.google.android.apps.docs"
    "com.google.android.apps.photos"
    "com.google.android.apps.tachyon"
    "com.google.android.apps.translate"
    "com.google.android.apps.youtube"
    "com.google.android.apps.books"
    "com.google.android.feedback"
    "com.google.android.apps.magazines"
    "com.google.android.apps.maps"
    "com.google.android.projection.gearhead"
    "com.google.android.apps.messaging"
    "com.google.android.apps.walletnfcrel"
    "com.google.android.apps.wallet"
    "com.google.android.apps.youtube.music"
    "com.google.android.apps.nbu.paisa.user"
    "com.google.android.googlequicksearchbox"
    "com.google.android.printservice.recommendation"
    "com.google.android.apps.subscriptions.red"
    "com.google.android.apps.podcasts"
    "com.google.android.music"
    "com.google.ar.lens"
    "com.google.android.apps.wellbeing"
    
    
    
    ############################################################
    # Android OS Bloatware List ##
    ############################################################
    "com.android.printspooler"
    "com.android.bookmarkprovider"
    "com.android.filemanager"
    "com.android.notes"
    "com.android.providers.partnerbookmarks"
    "com.android.stk"
    "com.android.stk2"
    "com.android.VideoPlayer"
    
    
    
    ############################################################
    # Third-Party System Apps ##
    ############################################################
    "com.amazon.mShop.android.shopping"
    "com.netflix.partner.activation"
    "ru.yandex.searchplugin"
    "com.ebay.mobile"
    "com.ebay.carrier"
    "com.alibaba.aliexpresshd"
    "sg.bigo.live"
    "com.amazon.appmanager"
    
    ############################################################
    ## Add Package Name Here ##
    # Write packages name inside quotation marks
    ############################################################
    "add.app.package.name.here"
    "add.app.package.name.here"
    "continue.to.add.if.you.have.more"
    
    
    
    ## Do Not add any more elements after this line
)

rm_pkg="adb shell pm uninstall --user 0"

for i in "${arr[@]}"
do
    $rm_pkg $i
done
