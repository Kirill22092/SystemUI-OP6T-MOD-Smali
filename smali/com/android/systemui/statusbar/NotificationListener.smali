.class public Lcom/android/systemui/statusbar/NotificationListener;
.super Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;
.source "NotificationListener.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "OverrideAbstract"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;,
        Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mNotificationHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mSettingsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Landroid/os/Handler;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 64
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private static getRankingOrTemporaryStandIn(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;
    .locals 27

    .line 188
    new-instance v1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 189
    invoke-virtual {v0, v15, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    move-object v10, v0

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    move-object v11, v0

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v0, v1

    move-object/from16 v26, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v25}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;ZZ)V

    goto :goto_0

    :cond_0
    move-object/from16 v26, v1

    :goto_0
    return-object v26
.end method

.method private synthetic lambda$onListenerConnected$0([Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 5

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 98
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/systemui/statusbar/NotificationListener;->getRankingOrTemporaryStandIn(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_0
    new-instance p2, Landroid/service/notification/NotificationListenerService$RankingMap;

    new-array v1, v2, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p2, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 102
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, p1, v2

    .line 103
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 104
    invoke-interface {v4, v1, p2}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 108
    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationsInitialized()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private synthetic lambda$onNotificationPosted$1(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    .line 121
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->processForRemoteInput(Landroid/app/Notification;Landroid/content/Context;)V

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 124
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onNotificationRankingUpdate$3(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    .line 154
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 155
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onNotificationRemoved$2(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 1

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 137
    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener is already added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addNotificationSettingsListener(Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$onListenerConnected$0$NotificationListener([Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationListener;->lambda$onListenerConnected$0([Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public synthetic lambda$onNotificationPosted$1$NotificationListener(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationListener;->lambda$onNotificationPosted$1(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public synthetic lambda$onNotificationRankingUpdate$3$NotificationListener(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationListener;->lambda$onNotificationRankingUpdate$3(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public synthetic lambda$onNotificationRemoved$2$NotificationListener(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationListener;->lambda$onNotificationRemoved$2(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public onListenerConnected()V
    .locals 4

    .line 82
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    const-string v1, "NotificationListener"

    if-eqz v0, :cond_0

    const-string v0, "onListenerConnected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onPluginConnected()V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "onListenerConnected unable to get active notifications."

    .line 86
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$IqvG8K3BFQSXJ_G1S_U_QONW3G4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$IqvG8K3BFQSXJ_G1S_U_QONW3G4;-><init>(Lcom/android/systemui/statusbar/NotificationListener;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 112
    invoke-virtual {v0}, Landroid/app/NotificationManager;->shouldHideSilentStatusBarIcons()Z

    move-result v0

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationListener;->onSilentStatusBarIconsVisibilityChanged(Z)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    .line 118
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotificationPosted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onPluginNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$NvFmU0XrVPuc5pizHcri9I0apkw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$NvFmU0XrVPuc5pizHcri9I0apkw;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    .line 150
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationListener"

    const-string v1, "onRankingUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onPluginRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$MPB4hTnfgfJz099PViVIkkbEBIE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$MPB4hTnfgfJz099PViVIkkbEBIE;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 2

    .line 133
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotificationRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onPluginNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$WRx7hwu-hf4Oq9iR81FcmuDk9R0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$WRx7hwu-hf4Oq9iR81FcmuDk9R0;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onSilentStatusBarIconsVisibilityChanged(Z)V
    .locals 1

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    .line 164
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;->onStatusBarIconsBehaviorChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerAsSystemService()V
    .locals 4

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 179
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NotificationListener"

    const-string v1, "Unable to register notification listener"

    .line 183
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
