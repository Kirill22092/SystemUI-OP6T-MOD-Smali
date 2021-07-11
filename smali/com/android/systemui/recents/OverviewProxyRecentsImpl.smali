.class public Lcom/android/systemui/recents/OverviewProxyRecentsImpl;
.super Ljava/lang/Object;
.source "OverviewProxyRecentsImpl.java"

# interfaces
.implements Lcom/android/systemui/recents/RecentsImplementation;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDividerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustManager:Landroid/app/trust/TrustManager;


# direct methods
.method public constructor <init>(Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/Lazy;

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mStatusBarLazy:Ldagger/Lazy;

    .line 71
    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mDividerOptional:Ljava/util/Optional;

    return-void
.end method

.method private synthetic lambda$toggleRecentApps$0()V
    .locals 2

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewToggle()V

    .line 121
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyToggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OverviewProxyRecentsImpl"

    const-string v1, "Cannot send toggle recents through proxy service."

    .line 124
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$toggleRecentApps$1(Ljava/lang/Runnable;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 132
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public hideRecentApps(ZZ)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 102
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewHidden(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyRecentsImpl"

    const-string p2, "Failed to send overview hide event to launcher."

    .line 105
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public synthetic lambda$toggleRecentApps$0$OverviewProxyRecentsImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->lambda$toggleRecentApps$0()V

    return-void
.end method

.method public synthetic lambda$toggleRecentApps$1$OverviewProxyRecentsImpl(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->lambda$toggleRecentApps$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart(Landroid/content/Context;)V
    .locals 1

    .line 76
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "trust"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 79
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    return-void
.end method

.method public showRecentApps(Z)V
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 87
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyRecentsImpl"

    const-string v0, "Failed to send overview show event to launcher."

    .line 90
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public splitPrimaryTask(ILandroid/graphics/Rect;I)Z
    .locals 5

    .line 147
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 149
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    .line 150
    invoke-virtual {p2, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 151
    new-instance p2, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-direct {p2, v0, v0, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 155
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 157
    iget-object v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 159
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v4

    :goto_2
    if-eqz p3, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    .line 163
    iget-boolean v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-eqz v1, :cond_5

    .line 164
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v1, p3, p1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->setTaskWindowingModeSplitScreenPrimary(IILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 174
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->mEnterFromToggleSplitScreenMode:Z

    if-nez p1, :cond_4

    .line 175
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mDividerOptional:Ljava/util/Optional;

    sget-object p2, Lcom/android/systemui/recents/-$$Lambda$fHPOCVoTSvBox_jGWtU7jxIAav4;->INSTANCE:Lcom/android/systemui/recents/-$$Lambda$fHPOCVoTSvBox_jGWtU7jxIAav4;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 176
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mDividerOptional:Ljava/util/Optional;

    sget-object p1, Lcom/android/systemui/recents/-$$Lambda$SmHdjDaQkSsbiXXCyer-AyvUNnY;->INSTANCE:Lcom/android/systemui/recents/-$$Lambda$SmHdjDaQkSsbiXXCyer-AyvUNnY;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    return v4

    .line 182
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->dock_non_resizeble_failed_to_dock_text:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 187
    :cond_6
    sput-boolean v0, Lcom/oneplus/util/OpUtils;->mEnterFromToggleSplitScreenMode:Z

    return v0
.end method

.method public toggleRecentApps()V
    .locals 8

    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyRecentsImpl$ZzsBj6p_GVl3rLvpPg-WKT0NW9E;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyRecentsImpl$ZzsBj6p_GVl3rLvpPg-WKT0NW9E;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;)V

    .line 128
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mStatusBarLazy:Ldagger/Lazy;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyRecentsImpl$PUSBynP3ZsSZrPqXO1jJqSKnayU;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyRecentsImpl$PUSBynP3ZsSZrPqXO1jJqSKnayU;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method
