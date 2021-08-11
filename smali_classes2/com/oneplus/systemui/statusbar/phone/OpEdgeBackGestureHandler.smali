.class public Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;
.super Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.source "OpEdgeBackGestureHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/shared/plugins/PluginManager;)V
    .locals 6

    new-instance v5, Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler$1;

    invoke-direct {v5}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler$1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(I)V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpEdgeBackGestureHandler"

    const-string v1, "OpEdgeBackGestureHandler onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onConfigurationChanged(I)V

    return-void
.end method

.method public onNavigationBarHidden()V
    .locals 2

    const-string v0, "OpEdgeBackGestureHandler"

    const-string v1, "onNavigationBarHidden"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsHidden:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavBarAttached()V

    return-void
.end method

.method public onNavigationBarShow()V
    .locals 2

    const-string v0, "OpEdgeBackGestureHandler"

    const-string v1, "onNavigationBarShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsHidden:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavBarDetached()V

    return-void
.end method
