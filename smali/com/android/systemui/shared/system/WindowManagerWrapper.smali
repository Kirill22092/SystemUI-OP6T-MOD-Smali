.class public Lcom/android/systemui/shared/system/WindowManagerWrapper;
.super Ljava/lang/Object;
.source "WindowManagerWrapper.java"


# static fields
.field private static final sInstance:Lcom/android/systemui/shared/system/WindowManagerWrapper;


# instance fields
.field private mPinnedStackListenerForwarder:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/android/systemui/shared/system/WindowManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/WindowManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/WindowManagerWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/WindowManagerWrapper;->mPinnedStackListenerForwarder:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;
    .locals 1

    .line 95
    sget-object v0, Lcom/android/systemui/shared/system/WindowManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/WindowManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public addPinnedStackListener(Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/systemui/shared/system/WindowManagerWrapper;->mPinnedStackListenerForwarder:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->addListener(Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;)V

    .line 210
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/shared/system/WindowManagerWrapper;->mPinnedStackListenerForwarder:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Landroid/view/IWindowManager;->registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V

    return-void
.end method

.method public getNavBarPosition(I)I
    .locals 0

    .line 197
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->getNavBarPosition(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "WindowManagerWrapper"

    const-string p1, "Failed to get nav bar position"

    .line 199
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public hasSoftNavigationBar(I)Z
    .locals 0

    .line 182
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public mirrorDisplay(I)Landroid/view/SurfaceControl;
    .locals 1

    .line 230
    :try_start_0
    new-instance p0, Landroid/view/SurfaceControl;

    invoke-direct {p0}, Landroid/view/SurfaceControl;-><init>()V

    .line 231
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/view/IWindowManager;->mirrorDisplay(ILandroid/view/SurfaceControl;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "WindowManagerWrapper"

    const-string v0, "Unable to reach window manager"

    .line 235
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public removePinnedStackListener(Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/shared/system/WindowManagerWrapper;->mPinnedStackListenerForwarder:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->removeListener(Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;)V

    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    .locals 1

    .line 141
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    .line 142
    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowManagerWrapper"

    const-string v0, "Failed to enable or disable navigation bar button haptics: "

    .line 144
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setPipVisibility(Z)V
    .locals 1

    .line 169
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->setPipVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowManagerWrapper"

    const-string v0, "Unable to reach window manager"

    .line 171
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
