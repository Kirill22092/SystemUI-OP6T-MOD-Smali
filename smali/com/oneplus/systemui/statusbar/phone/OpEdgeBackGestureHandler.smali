.class public Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;
.super Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.source "OpEdgeBackGestureHandler.java"

# interfaces
.implements Lcom/oneplus/systemui/statusbar/phone/OpOnNavigationBarHiddenListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(I)V
    .locals 2

    .line 34
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpEdgeBackGestureHandler"

    const-string v1, "OpEdgeBackGestureHandler onConfigurationChanged"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onConfigurationChanged(I)V

    return-void
.end method

.method public onNavigationBarHidden()V
    .locals 2

    const-string v0, "OpEdgeBackGestureHandler"

    const-string v1, "onNavigationBarHidden"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsHidden:Z

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavBarAttached()V

    return-void
.end method

.method public onNavigationBarShow()V
    .locals 2

    const-string v0, "OpEdgeBackGestureHandler"

    const-string v1, "onNavigationBarShow"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsHidden:Z

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavBarDetached()V

    return-void
.end method
