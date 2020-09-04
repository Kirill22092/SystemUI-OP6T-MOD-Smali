.class final Lcom/oneplus/notification/OpNotificationController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OpNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/OpNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/notification/OpNotificationController;


# direct methods
.method constructor <init>(Lcom/oneplus/notification/OpNotificationController;Landroid/os/Handler;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 618
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 622
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OpNotificationController;->access$500(Lcom/oneplus/notification/OpNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 624
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$600()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 628
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$700()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 632
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$800()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 635
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$900()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 637
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1000()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x0

    .line 639
    invoke-virtual {p0, v0}, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 644
    invoke-virtual {p0, p2}, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 6

    .line 648
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OpNotificationController;->access$500(Lcom/oneplus/notification/OpNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 651
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$700()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 652
    :cond_0
    iget-object v4, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    const-string v5, "driving_mode_state"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-static {v4, v5}, Lcom/oneplus/notification/OpNotificationController;->access$1102(Lcom/oneplus/notification/OpNotificationController;Z)Z

    :cond_2
    if-eqz p1, :cond_3

    .line 657
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$800()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 658
    :cond_3
    iget-object v4, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    const-string v5, "esport_mode_enabled"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    invoke-static {v4, v1}, Lcom/oneplus/notification/OpNotificationController;->access$1202(Lcom/oneplus/notification/OpNotificationController;Z)Z

    :cond_5
    if-eqz p1, :cond_6

    .line 662
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$900()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 663
    :cond_6
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    const-string v4, "game_mode_block_notification"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/notification/OpNotificationController;->access$1302(Lcom/oneplus/notification/OpNotificationController;I)I

    .line 665
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OpNotificationController;->access$1300(Lcom/oneplus/notification/OpNotificationController;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 666
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OpNotificationController;->access$1400(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object v1

    sget-object v2, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_HEADSUPNOTIFICATION:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    goto :goto_2

    .line 668
    :cond_7
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OpNotificationController;->access$1400(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object v1

    sget-object v2, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_HEADSUPNOTIFICATION:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    :cond_8
    :goto_2
    const-string v1, "OpNotificationController"

    if-eqz p1, :cond_9

    .line 671
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1000()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 672
    :cond_9
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    const-string v3, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/notification/OpNotificationController;->access$1502(Lcom/oneplus/notification/OpNotificationController;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v2}, Lcom/oneplus/notification/OpNotificationController;->access$1500(Lcom/oneplus/notification/OpNotificationController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v2}, Lcom/oneplus/notification/OpNotificationController;->access$1500(Lcom/oneplus/notification/OpNotificationController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 675
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->removeHeadsUps()V

    .line 676
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeHeadsUps for 3rd party app calling uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OpNotificationController;->access$1500(Lcom/oneplus/notification/OpNotificationController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz p1, :cond_b

    .line 682
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$600()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    const-string v2, "op_quickreply_im_list"

    .line 683
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 684
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 685
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/notification/OpNotificationController;->access$1702(Lcom/oneplus/notification/OpNotificationController;Ljava/util/List;)Ljava/util/List;

    .line 687
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-virtual {v2}, Lcom/oneplus/notification/OpNotificationController;->setQuickReplyFlags()V

    .line 690
    :cond_c
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-nez p1, :cond_e

    .line 697
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OpNotificationController;->access$1400(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object v0

    sget-object v2, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_HEADSUPNOTIFICATION_ZEN:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v0, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    .line 699
    :cond_e
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mBlockedByDriving: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 701
    invoke-static {p1}, Lcom/oneplus/notification/OpNotificationController;->access$1100(Lcom/oneplus/notification/OpNotificationController;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mEsportsModeOn: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 702
    invoke-static {p1}, Lcom/oneplus/notification/OpNotificationController;->access$1200(Lcom/oneplus/notification/OpNotificationController;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mGameModeNotifyType: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 703
    invoke-static {p1}, Lcom/oneplus/notification/OpNotificationController;->access$1300(Lcom/oneplus/notification/OpNotificationController;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mGameMode3rdPartyCallsUid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 704
    invoke-static {p0}, Lcom/oneplus/notification/OpNotificationController;->access$1500(Lcom/oneplus/notification/OpNotificationController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 700
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method
