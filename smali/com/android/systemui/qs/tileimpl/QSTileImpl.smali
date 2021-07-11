.class public abstract Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.super Ljava/lang/Object;
.source "QSTileImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;,
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;,
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TState:",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/qs/QSTile;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# static fields
.field protected static final ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

.field protected static final DEBUG:Z


# instance fields
.field private final MDM_TAG:Ljava/lang/String;

.field protected TAG:Ljava/lang/String;

.field private mAnnounceNextStateChange:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/qs/QSTile$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
            "TTState;>.H;"
        }
    .end annotation
.end field

.field protected final mHost:Lcom/android/systemui/qs/QSHost;

.field private final mInstanceId:Lcom/android/internal/logging/InstanceId;

.field private mIsFullQs:I

.field private final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field private mShowingDetail:Z

.field private final mStaleListener:Ljava/lang/Object;

.field protected mState:Lcom/android/systemui/plugins/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTileSpec:Ljava/lang/String;

.field private mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field protected final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 3

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->MDM_TAG:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    .line 113
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 114
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 115
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    .line 131
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 171
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "init constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 178
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 179
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getNewInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 182
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getQSLogger()Lcom/android/systemui/qs/logging/QSLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 183
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getUiEventLogger()Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleAddCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRemoveCallbacks()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRemoveCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->MDM_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleShowDetail(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListeningInternal(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static getCircleColorForState(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    .line 606
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    .line 607
    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x65

    .line 608
    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x7

    .line 602
    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p0

    return p0

    :cond_2
    const/16 p0, 0x8

    .line 600
    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getColorForState(Landroid/content/Context;I)I
    .locals 3

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    .line 575
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTile"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 558
    :cond_0
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "#FFF5F5F5"

    .line 559
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 564
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 567
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    const v0, 0xffffff

    const/16 v1, 0x65

    .line 570
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "#%06X"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "#FFFFFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    const/16 p0, 0xa

    goto :goto_1

    :cond_3
    const/4 p0, 0x3

    .line 571
    :goto_1
    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x4

    .line 554
    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x5

    .line 549
    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getOPColorForState(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    .line 589
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x64

    .line 591
    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x4

    .line 586
    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x5

    .line 584
    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p0

    return p0
.end method

.method private handleAddCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method private handleRemoveCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleRemoveCallbacks()V
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 461
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onScanStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleSetListeningInternal(Ljava/lang/Object;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 475
    sget-boolean p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "handleSetListening true"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 477
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 482
    sget-boolean p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "handleSetListening false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 484
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 487
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->updateIsFullQs()V

    return-void
.end method

.method private handleShowDetail(Z)V
    .locals 2

    .line 444
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    const/4 v0, 0x0

    .line 445
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onShowDetail(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleStateChanged()V
    .locals 5

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->shouldAnnouncementBeDelayed()Z

    move-result v0

    .line 421
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    .line 422
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 423
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->composeChangeAnnouncement()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v3, v1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onAnnouncementRequested(Ljava/lang/CharSequence;)V

    .line 432
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z

    return-void
.end method

.method private handleToggleStateChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 455
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onToggleStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateIsFullQs()V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 492
    const-class v2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 493
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 497
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1

    .line 263
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method protected checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V
    .locals 3

    .line 520
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 521
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 520
    invoke-static {v0, p2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 523
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 522
    invoke-static {v1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 524
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 525
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 527
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    const/4 p1, 0x0

    .line 528
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :goto_0
    return-void
.end method

.method public click()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x39d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 278
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x638

    .line 277
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 276
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_CLICK:Lcom/android/systemui/qs/QSEvent;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v3

    const/4 v4, 0x0

    .line 279
    invoke-interface {v0, v1, v4, v2, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/logging/QSLogger;->logTileClick(Ljava/lang/String;II)V

    .line 283
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 239
    new-instance p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public destroy()V
    .locals 1

    .line 354
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 857
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    "

    .line 858
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public fireScanStateChanged(Z)V
    .locals 2

    .line 349
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public fireToggleStateChanged(Z)V
    .locals 2

    .line 344
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHost()Lcom/android/systemui/qs/QSHost;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method public getInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public abstract getLongClickIntent()Landroid/content/Intent;
.end method

.method public abstract getMetricsCategory()I
.end method

.method public getMetricsSpec()Ljava/lang/String;
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-object p0
.end method

.method protected getStaleTimeout()J
    .locals 2

    const-wide/32 v0, 0x927c0

    return-wide v0
.end method

.method public getState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation

    .line 358
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method public getTileSpec()Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract handleClick()V
.end method

.method protected handleDestroy()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    const-string v2, "Handle destroy"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 515
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-void
.end method

.method protected handleLongClick()V
    .locals 2

    .line 395
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    .line 395
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method protected handleRefreshState(Ljava/lang/Object;)V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V

    .line 408
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logTileUpdated(Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStateChanged()V

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v0, 0xe

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getStaleTimeout()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 416
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .line 387
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 503
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/logging/QSLogger;->logTileChangeListening(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected handleStale()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStaleListener:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected abstract handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTState;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected handleUserSwitch(I)V
    .locals 0

    const/4 p1, 0x0

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isShowingDetail()Z
    .locals 0

    .line 451
    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    return p0
.end method

.method public longClick()V
    .locals 6

    .line 299
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x16e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 301
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x638

    .line 300
    invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 299
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_LONG_PRESS:Lcom/android/systemui/qs/QSEvent;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    const/4 v5, 0x0

    .line 302
    invoke-interface {v0, v1, v5, v3, v4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v4, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/qs/logging/QSLogger;->logTileLongClick(Ljava/lang/String;II)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    const-string v1, "QsLongPressTooltipShownCount"

    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public abstract newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    instance-of v1, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v1, :cond_0

    const/16 v1, 0x3a0

    .line 316
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 v0, 0x639

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mIsFullQs:I

    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 v0, 0x39f

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 320
    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSHost;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public refreshState()V
    .locals 1

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method protected final refreshState(Ljava/lang/Object;)V
    .locals 1

    .line 334
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1

    .line 268
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public removeCallbacks()V
    .locals 1

    .line 272
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final resetStates()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-void
.end method

.method public secondaryClick()V
    .locals 5

    .line 287
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x39e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 289
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x638

    .line 288
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_SECONDARY_CLICK:Lcom/android/systemui/qs/QSEvent;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsSpec()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v3

    const/4 v4, 0x0

    .line 290
    invoke-interface {v0, v1, v4, v2, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/logging/QSLogger;->logTileSecondaryClick(Ljava/lang/String;II)V

    .line 295
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setDetailListening(Z)V
    .locals 0

    return-void
.end method

.method public setListening(Ljava/lang/Object;Z)V
    .locals 2

    .line 208
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p0, :cond_0

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setTileSpec(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDetail(Z)V
    .locals 2

    .line 325
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public userSwitch(I)V
    .locals 2

    .line 339
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
