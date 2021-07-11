.class Lcom/android/systemui/wm/SystemWindows$ContainerWindow;
.super Landroid/view/IWindow$Stub;
.source "SystemWindows.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wm/SystemWindows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerWindow"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/systemui/wm/SystemWindows;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dispatchAppVisibility(Z)V
    .locals 0

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 0

    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 0

    return-void
.end method

.method public dispatchPointerCaptureChanged(Z)V
    .locals 0

    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 0

    return-void
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 0

    return-void
.end method

.method public dispatchWallpaperOffsets(FFFFFZ)V
    .locals 0

    return-void
.end method

.method public dispatchWindowShown()V
    .locals 0

    return-void
.end method

.method public enterScreenCompatMode(ZI)V
    .locals 0

    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public hideInsets(IZ)V
    .locals 0

    return-void
.end method

.method public insetsChanged(Landroid/view/InsetsState;)V
    .locals 0

    return-void
.end method

.method public insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 0

    return-void
.end method

.method public locationInParentDisplayChanged(Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public longshotStart()V
    .locals 0

    return-void
.end method

.method public longshotStop()V
    .locals 0

    return-void
.end method

.method public moved(II)V
    .locals 0

    return-void
.end method

.method public requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 0

    return-void
.end method

.method public requestScrollCapture(Landroid/view/IScrollCaptureController;)V
    .locals 0

    .line 402
    :try_start_0
    invoke-interface {p1}, Landroid/view/IScrollCaptureController;->onClientUnavailable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V
    .locals 0

    return-void
.end method

.method public showInsets(IZ)V
    .locals 0

    return-void
.end method

.method public updatePointerIcon(FF)V
    .locals 0

    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 0

    return-void
.end method
