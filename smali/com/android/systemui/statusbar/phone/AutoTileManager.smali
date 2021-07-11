.class public Lcom/android/systemui/statusbar/phone/AutoTileManager;
.super Ljava/lang/Object;
.source "AutoTileManager.java"

# interfaces
.implements Lcom/android/systemui/util/UserAwareController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;
    }
.end annotation


# instance fields
.field private final mAutoAddSettingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

.field final mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCastController:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:Landroid/os/UserHandle;

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

.field final mNightDisplayCallback:Landroid/hardware/display/NightDisplayListener$Callback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

.field private final mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Landroid/hardware/display/NightDisplayListener;Lcom/android/systemui/statusbar/policy/CastController;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoAddSettingList:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .line 215
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    .line 227
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 239
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayCallback:Landroid/hardware/display/NightDisplayListener$Callback;

    .line 265
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$5;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    .line 82
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 83
    invoke-virtual {p3}, Lcom/android/systemui/qs/QSTileHost;->getUserContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCurrentUser:Landroid/os/UserHandle;

    .line 84
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/AutoAddTracker$Builder;->setUserId(I)Lcom/android/systemui/qs/AutoAddTracker$Builder;

    invoke-virtual {p2}, Lcom/android/systemui/qs/AutoAddTracker$Builder;->build()Lcom/android/systemui/qs/AutoAddTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    .line 85
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 87
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 88
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    .line 89
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    .line 90
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->populateSettingsList()V

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->startControllersAndSettingsListeners()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/AutoAddTracker;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/CastController;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/ManagedProfileController;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/DataSaverController;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/hardware/display/NightDisplayListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    return-object p0
.end method

.method private synthetic lambda$changeUser$0(Landroid/os/UserHandle;)V
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->changeUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method private populateSettingsList()V
    .locals 15

    const-string v0, "AutoTileManager"

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$array;->config_quickSettingsAutoAdd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const-string v6, ":"

    .line 158
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 159
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 160
    aget-object v13, v6, v3

    const/4 v5, 0x1

    .line 161
    aget-object v14, v6, v5

    .line 163
    new-instance v5, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    move-object v9, v5

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoAddSettingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed item in array: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    const-string p0, "Missing config resource"

    .line 153
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public changeUser(Landroid/os/UserHandle;)V
    .locals 4

    .line 173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$YUAO-oFSfDM4QNvsf1l5gpCAopQ;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$YUAO-oFSfDM4QNvsf1l5gpCAopQ;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->stopListening()V

    .line 181
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCurrentUser:Landroid/os/UserHandle;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoAddSettingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 184
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoAddSettingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/AutoAddTracker;->changeUser(Landroid/os/UserHandle;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->startControllersAndSettingsListeners()V

    return-void
.end method

.method public getCurrentUserId()I
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method protected getSecureSettingForKey(Ljava/lang/String;)Lcom/android/systemui/qs/SecureSetting;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 290
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoAddSettingList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecureSetting;

    .line 291
    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$changeUser$0$AutoTileManager(Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->lambda$changeUser$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method protected startControllersAndSettingsListeners()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string v1, "hotspot"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string v1, "saver"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string/jumbo v1, "work"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string v1, "night"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayCallback:Landroid/hardware/display/NightDisplayListener$Callback;

    invoke-virtual {v0, v1}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string v1, "cast"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoAddSettingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 116
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoAddSettingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->access$000(Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 117
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoAddSettingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected stopListening()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoAddSettingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 132
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoAddSettingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unmarkTileAsAutoAdded(Ljava/lang/String;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/AutoAddTracker;->setTileRemoved(Ljava/lang/String;)V

    return-void
.end method
