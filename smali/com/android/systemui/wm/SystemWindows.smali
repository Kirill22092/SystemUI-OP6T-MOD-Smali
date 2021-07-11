.class public Lcom/android/systemui/wm/SystemWindows;
.super Ljava/lang/Object;
.source "SystemWindows.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wm/SystemWindows$ContainerWindow;,
        Lcom/android/systemui/wm/SystemWindows$SysUiWindowManager;,
        Lcom/android/systemui/wm/SystemWindows$PerDisplay;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDisplayController:Lcom/android/systemui/wm/DisplayController;

.field private final mDisplayListener:Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

.field private final mPerDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/wm/SystemWindows$PerDisplay;",
            ">;"
        }
    .end annotation
.end field

.field final mViewRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/view/SurfaceControlViewHost;",
            ">;"
        }
    .end annotation
.end field

.field mWmService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wm/DisplayController;Landroid/view/IWindowManager;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    .line 73
    new-instance v0, Lcom/android/systemui/wm/SystemWindows$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wm/SystemWindows$1;-><init>(Lcom/android/systemui/wm/SystemWindows;)V

    iput-object v0, p0, Lcom/android/systemui/wm/SystemWindows;->mDisplayListener:Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/wm/SystemWindows;->mContext:Landroid/content/Context;

    .line 95
    iput-object p3, p0, Lcom/android/systemui/wm/SystemWindows;->mWmService:Landroid/view/IWindowManager;

    .line 96
    iput-object p2, p0, Lcom/android/systemui/wm/SystemWindows;->mDisplayController:Lcom/android/systemui/wm/DisplayController;

    .line 97
    invoke-virtual {p2, v0}, Lcom/android/systemui/wm/DisplayController;->addDisplayWindowListener(Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;)V

    .line 99
    :try_start_0
    new-instance p1, Lcom/android/systemui/wm/SystemWindows$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/wm/SystemWindows$2;-><init>(Lcom/android/systemui/wm/SystemWindows;)V

    invoke-interface {p3, p1}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SystemWindows"

    const-string p2, "Unable to create layer"

    .line 105
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wm/SystemWindows;)Landroid/util/SparseArray;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/wm/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/systemui/wm/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wm/SystemWindows$PerDisplay;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/android/systemui/wm/SystemWindows$PerDisplay;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/wm/SystemWindows$PerDisplay;-><init>(Lcom/android/systemui/wm/SystemWindows;I)V

    .line 117
    iget-object p0, p0, Lcom/android/systemui/wm/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    :cond_0
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/systemui/wm/SystemWindows$PerDisplay;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    return-void
.end method

.method public getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wm/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 198
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/wm/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wm/SystemWindows$PerDisplay;

    invoke-static {v3}, Lcom/android/systemui/wm/SystemWindows$PerDisplay;->access$100(Lcom/android/systemui/wm/SystemWindows$PerDisplay;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/android/systemui/wm/SystemWindows;->mPerDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wm/SystemWindows$PerDisplay;

    invoke-static {v3}, Lcom/android/systemui/wm/SystemWindows$PerDisplay;->access$100(Lcom/android/systemui/wm/SystemWindows$PerDisplay;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wm/SystemWindows$SysUiWindowManager;

    .line 200
    invoke-virtual {v3, p1}, Lcom/android/systemui/wm/SystemWindows$SysUiWindowManager;->getSurfaceControlForWindow(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/wm/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControlViewHost;

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->release()V

    :cond_0
    return-void
.end method

.method public setTouchableRegion(Landroid/view/View;Landroid/graphics/Region;)V
    .locals 1

    .line 156
    iget-object p0, p0, Lcom/android/systemui/wm/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControlViewHost;

    if-nez p0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getWindowlessWM()Landroid/view/WindowlessWindowManager;

    move-result-object p0

    .line 161
    instance-of v0, p0, Lcom/android/systemui/wm/SystemWindows$SysUiWindowManager;

    if-nez v0, :cond_1

    return-void

    .line 164
    :cond_1
    check-cast p0, Lcom/android/systemui/wm/SystemWindows$SysUiWindowManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wm/SystemWindows$SysUiWindowManager;->setTouchableRegionForWindow(Landroid/view/View;Landroid/graphics/Region;)V

    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 142
    iget-object p0, p0, Lcom/android/systemui/wm/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControlViewHost;

    if-eqz p0, :cond_1

    .line 143
    instance-of v0, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p2}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method
