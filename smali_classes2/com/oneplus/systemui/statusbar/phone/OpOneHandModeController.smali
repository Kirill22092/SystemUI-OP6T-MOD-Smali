.class public Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;
.super Ljava/lang/Object;
.source "OpOneHandModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsOneHandedPerformed:Z

.field private mIsOneHandedSettingEnable:I

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mOneHandedGestureObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mIsOneHandedSettingEnable:I

    .line 36
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mIsOneHandedPerformed:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mListeners:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mMainThreadHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mOneHandedGestureObserver:Landroid/database/ContentObserver;

    .line 40
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mContext:Landroid/content/Context;

    .line 41
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    .line 42
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mOneHandedGestureObserver:Landroid/database/ContentObserver;

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_one_hand_mode_setting"

    .line 44
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mOneHandedGestureObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 43
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 48
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "one_hand_mode_status"

    .line 49
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mOneHandedGestureObserver:Landroid/database/ContentObserver;

    .line 48
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 53
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mOneHandedGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mIsOneHandedPerformed:Z

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mIsOneHandedPerformed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mIsOneHandedSettingEnable:I

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mIsOneHandedSettingEnable:I

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;)Z
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->isOneHandedSettingEnable()Z

    move-result p0

    return p0
.end method

.method private isOneHandedSettingEnable()Z
    .locals 1

    .line 72
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mIsOneHandedSettingEnable:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addListener(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->isOneHandedSettingEnable()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;->onOneHandEnableStateChange(Z)V

    .line 63
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mIsOneHandedPerformed:Z

    invoke-interface {p1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;->onOneHandPerformStateChange(Z)V

    return-void
.end method

.method public notifyLeaveOneHandedMode()V
    .locals 1

    .line 76
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "OpOneHandModeController"

    const-string v0, "notifyLeaveOneHandedMode"

    .line 77
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
