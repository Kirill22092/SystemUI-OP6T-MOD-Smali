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

    .line 1035
    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 1036
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .line 1040
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OpNotificationController;->access$600(Lcom/oneplus/notification/OpNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1042
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$700()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1046
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$800()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1050
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$900()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v4, 0x11a

    aput v4, v1, v2

    .line 1055
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1000()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1061
    :cond_0
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1100()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1063
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1200()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x0

    .line 1065
    invoke-virtual {p0, v0}, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1070
    invoke-virtual {p0, p2}, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 6

    .line 1074
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OpNotificationController;->access$600(Lcom/oneplus/notification/OpNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1077
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$800()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1078
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
    invoke-static {v4, v5}, Lcom/oneplus/notification/OpNotificationController;->access$1302(Lcom/oneplus/notification/OpNotificationController;Z)Z

    :cond_2
    if-eqz p1, :cond_3

    .line 1083
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$900()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1084
    :cond_3
    iget-object v4, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    const-string v5, "esport_mode_enabled"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    invoke-static {v4, v5}, Lcom/oneplus/notification/OpNotificationController;->access$1402(Lcom/oneplus/notification/OpNotificationController;Z)Z

    :cond_5
    new-array v4, v1, [I

    const/16 v5, 0x11a

    aput v5, v4, v3

    .line 1089
    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p1, :cond_6

    .line 1090
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1000()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1091
    :cond_6
    iget-object v4, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    const-string v5, "key_do_not_disturb_enabled"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_2
    invoke-static {v4, v1}, Lcom/oneplus/notification/OpNotificationController;->access$1502(Lcom/oneplus/notification/OpNotificationController;Z)Z

    :cond_8
    if-eqz p1, :cond_9

    .line 1097
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1100()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1098
    :cond_9
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    const-string v4, "game_mode_block_notification"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-static {v1, v3}, Lcom/oneplus/notification/OpNotificationController;->access$1602(Lcom/oneplus/notification/OpNotificationController;I)I

    .line 1100
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OpNotificationController;->access$1600(Lcom/oneplus/notification/OpNotificationController;)I

    move-result v1

    if-eqz v1, :cond_a

    .line 1101
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OpNotificationController;->access$1700(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object v1

    sget-object v3, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_HEADSUPNOTIFICATION:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v1, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    goto :goto_3

    .line 1103
    :cond_a
    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OpNotificationController;->access$1700(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object v1

    sget-object v3, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_HEADSUPNOTIFICATION:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v1, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    :cond_b
    :goto_3
    const-string v1, "OpNotificationController"

    if-eqz p1, :cond_c

    .line 1106
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1200()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1107
    :cond_c
    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    const-string v4, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/notification/OpNotificationController;->access$1802(Lcom/oneplus/notification/OpNotificationController;Ljava/lang/String;)Ljava/lang/String;

    .line 1109
    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OpNotificationController;->access$1800(Lcom/oneplus/notification/OpNotificationController;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OpNotificationController;->access$1800(Lcom/oneplus/notification/OpNotificationController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1110
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->removeHeadsUps()V

    .line 1111
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1900()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeHeadsUps for 3rd party app calling uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v4}, Lcom/oneplus/notification/OpNotificationController;->access$1800(Lcom/oneplus/notification/OpNotificationController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz p1, :cond_e

    .line 1118
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$700()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    const-string v3, "op_quickreply_im_list"

    .line 1119
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1121
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1122
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/notification/OpNotificationController;->access$2002(Lcom/oneplus/notification/OpNotificationController;Ljava/util/List;)Ljava/util/List;

    .line 1124
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-virtual {v2}, Lcom/oneplus/notification/OpNotificationController;->setQuickReplyFlags()V

    .line 1127
    :cond_f
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1900()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-nez p1, :cond_11

    .line 1142
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OpNotificationController;->access$1700(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object v0

    sget-object v2, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_HEADSUPNOTIFICATION_ZEN:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v0, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    .line 1145
    :cond_11
    invoke-static {}, Lcom/oneplus/notification/OpNotificationController;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mBlockedByDriving: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 1147
    invoke-static {p1}, Lcom/oneplus/notification/OpNotificationController;->access$1300(Lcom/oneplus/notification/OpNotificationController;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mEsportsModeOn: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 1148
    invoke-static {p1}, Lcom/oneplus/notification/OpNotificationController;->access$1400(Lcom/oneplus/notification/OpNotificationController;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mESportModeDndOn: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 1150
    invoke-static {p1}, Lcom/oneplus/notification/OpNotificationController;->access$1500(Lcom/oneplus/notification/OpNotificationController;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mGameModeNotifyType: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 1152
    invoke-static {p1}, Lcom/oneplus/notification/OpNotificationController;->access$1600(Lcom/oneplus/notification/OpNotificationController;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mGameMode3rdPartyCallsUid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->this$0:Lcom/oneplus/notification/OpNotificationController;

    .line 1153
    invoke-static {p0}, Lcom/oneplus/notification/OpNotificationController;->access$1800(Lcom/oneplus/notification/OpNotificationController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1146
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method
