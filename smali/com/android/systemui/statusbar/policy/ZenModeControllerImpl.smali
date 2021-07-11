.class public Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "ZenModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;
    }
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacksLock:Ljava/lang/Object;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

.field private final mContext:Landroid/content/Context;

.field private final mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mZenMode:I

.field private mZenUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZenModeController"

    const/4 v1, 0x3

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 2

    .line 83
    invoke-direct {p0, p3}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 63
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 64
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    .line 286
    new-instance p3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    .line 85
    new-instance p3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "zen_mode"

    invoke-direct {p3, p0, v0, p2, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 92
    new-instance p3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "zen_mode_config_etag"

    invoke-direct {p3, p0, v0, p2, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

    const-string p3, "notification"

    .line 98
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 99
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 100
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateZenMode(I)V

    .line 101
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p3, v0}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateZenModeConfig()V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateConsolidatedNotificationPolicy()V

    const-string p3, "alarm"

    .line 104
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 105
    new-instance p3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    .line 106
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    .line 107
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireNextAlarmChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireEffectsSuppressorChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenAvailableChanged(Z)V

    return-void
.end method

.method private fireConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$8ESweSQi2XbEG_Qu7VUYzDq1Zcs;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$8ESweSQi2XbEG_Qu7VUYzDq1Zcs;-><init>(Landroid/app/NotificationManager$Policy;)V

    invoke-static {p0, v1}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 238
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private fireEffectsSuppressorChanged()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$SV0AVEr3ZD6I5F0ZOAtC6EOyn-k;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$SV0AVEr3ZD6I5F0ZOAtC6EOyn-k;

    invoke-static {p0, v1}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 214
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private fireManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$8iaDxlkHjmysoUP7KwjUaBzkBiQ;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$8iaDxlkHjmysoUP7KwjUaBzkBiQ;-><init>(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    invoke-static {p0, v1}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 232
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private fireNextAlarmChanged()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$6_S_aAoRd9fsiJr9D0TIwCJGb6M;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$6_S_aAoRd9fsiJr9D0TIwCJGb6M;

    invoke-static {p0, v1}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 208
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private fireZenAvailableChanged(Z)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$SZ6Og1sK4NAner-jv0COJMr2bCU;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$SZ6Og1sK4NAner-jv0COJMr2bCU;-><init>(Z)V

    invoke-static {p0, v1}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 226
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private fireZenChanged(I)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$d6ICAgvR9KT8NKs4p-zRwBgYI2g;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$d6ICAgvR9KT8NKs4p-zRwBgYI2g;-><init>(I)V

    invoke-static {p0, v1}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 220
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic lambda$fireConfigChanged$6(Landroid/service/notification/ZenModeConfig;Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0

    .line 244
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onConfigChanged(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic lambda$fireConsolidatedPolicyChanged$5(Landroid/app/NotificationManager$Policy;Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0

    .line 237
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method static synthetic lambda$fireEffectsSuppressorChanged$1(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0

    .line 213
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onEffectsSupressorChanged()V

    return-void
.end method

.method static synthetic lambda$fireManualRuleChanged$4(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0

    .line 231
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    return-void
.end method

.method static synthetic lambda$fireNextAlarmChanged$0(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0

    .line 207
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onNextAlarmChanged()V

    return-void
.end method

.method static synthetic lambda$fireZenAvailableChanged$3(ZLcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0

    .line 225
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenAvailableChanged(Z)V

    return-void
.end method

.method static synthetic lambda$fireZenChanged$2(ILcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0

    .line 219
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenChanged(I)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

.method public areNotificationsHiddenInShade()Z
    .locals 2

    .line 119
    iget v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "ZenModeControllerImpl:"

    .line 300
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mZenMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mConfig="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mConsolidatedNotificationPolicy="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mZenUpdateTime="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenUpdateTime:J

    const-string p0, "MM-dd HH:mm:ss"

    invoke-static {p0, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected fireConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$idmtZJFosRgAGQLYktOBo_UGp5E;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$idmtZJFosRgAGQLYktOBo_UGp5E;-><init>(Landroid/service/notification/ZenModeConfig;)V

    invoke-static {p0, v1}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 245
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object p0
.end method

.method public getConsolidatedPolicy()Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    return-object p0
.end method

.method public getManualRule()Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    :goto_0
    return-object p0
.end method

.method public getNextAlarm()J
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getZen()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    return p0
.end method

.method public isVolumeRestricted()Z
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserManager:Landroid/os/UserManager;

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    const-string p0, "no_adjust_volume"

    invoke-virtual {v0, p0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isZenAvailable()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->isUserSetup()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onUserSwitched(I)V
    .locals 7

    .line 178
    iput p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    .line 179
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRegistered:Z

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    :cond_0
    new-instance v4, Landroid/content/IntentFilter;

    const-string p1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v4, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    .line 183
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    iget p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRegistered:Z

    .line 186
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

.method public setZen(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method protected updateConsolidatedNotificationPolicy()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    .line 259
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    :cond_0
    return-void
.end method

.method protected updateZenMode(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 250
    iput p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenUpdateTime:J

    return-void
.end method

.method protected updateZenModeConfig()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 268
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenUpdateTime:J

    .line 270
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireConfigChanged(Landroid/service/notification/ZenModeConfig;)V

    if-eqz v0, :cond_2

    .line 272
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 273
    :cond_2
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 274
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 278
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 280
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    .line 281
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    :cond_4
    return-void
.end method
