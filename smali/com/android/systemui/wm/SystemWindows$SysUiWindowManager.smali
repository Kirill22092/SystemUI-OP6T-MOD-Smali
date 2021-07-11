.class public Lcom/android/systemui/wm/SystemWindows$SysUiWindowManager;
.super Landroid/view/WindowlessWindowManager;
.source "SystemWindows.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wm/SystemWindows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SysUiWindowManager"
.end annotation


# instance fields
.field final mDisplayId:I

.field final synthetic this$0:Lcom/android/systemui/wm/SystemWindows;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wm/SystemWindows;ILandroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/systemui/wm/SystemWindows$ContainerWindow;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/android/systemui/wm/SystemWindows$SysUiWindowManager;->this$0:Lcom/android/systemui/wm/SystemWindows;

    .line 284
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p4, p3}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 286
    iput p2, p0, Lcom/android/systemui/wm/SystemWindows$SysUiWindowManager;->mDisplayId:I

    return-void
.end method


# virtual methods
.method getSurfaceControlForWindow(Landroid/view/View;)Landroid/view/SurfaceControl;
    .locals 0

    .line 316
    invoke-virtual {p0, p1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/graphics/Point;Landroid/view/SurfaceControl;)I
    .locals 2

    move-object v0, p0

    .line 298
    invoke-super/range {p0 .. p21}, Landroid/view/WindowlessWindowManager;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/graphics/Point;Landroid/view/SurfaceControl;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    .line 306
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/wm/SystemWindows$SysUiWindowManager;->this$0:Lcom/android/systemui/wm/SystemWindows;

    iget-object v1, v1, Lcom/android/systemui/wm/SystemWindows;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    iget v0, v0, Lcom/android/systemui/wm/SystemWindows$SysUiWindowManager;->mDisplayId:I

    invoke-virtual {v1, v0}, Lcom/android/systemui/wm/DisplayController;->getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/android/systemui/wm/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v0

    move-object/from16 v1, p14

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    return v0
.end method

.method setTouchableRegionForWindow(Landroid/view/View;Landroid/graphics/Region;)V
    .locals 0

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method
