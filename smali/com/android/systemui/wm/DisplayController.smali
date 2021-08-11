.class public Lcom/android/systemui/wm/DisplayController;
.super Ljava/lang/Object;
.source "DisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;,
        Lcom/android/systemui/wm/DisplayController$DisplayRecord;
    }
.end annotation


# instance fields
.field private final mChangeController:Lcom/android/systemui/wm/DisplayChangeController;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayContainerListener:Landroid/view/IDisplayWindowListener;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/wm/DisplayController$DisplayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayController;->mDisplays:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/wm/DisplayController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wm/DisplayController$1;-><init>(Lcom/android/systemui/wm/DisplayController;)V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayController;->mDisplayContainerListener:Landroid/view/IDisplayWindowListener;

    iput-object p2, p0, Lcom/android/systemui/wm/DisplayController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/wm/DisplayController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/wm/DisplayController;->mWmService:Landroid/view/IWindowManager;

    new-instance p1, Lcom/android/systemui/wm/DisplayChangeController;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/wm/DisplayChangeController;-><init>(Landroid/os/Handler;Landroid/view/IWindowManager;)V

    iput-object p1, p0, Lcom/android/systemui/wm/DisplayController;->mChangeController:Lcom/android/systemui/wm/DisplayChangeController;

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wm/DisplayController;->mWmService:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayController;->mDisplayContainerListener:Landroid/view/IDisplayWindowListener;

    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to register hierarchy listener"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/android/systemui/wm/DisplayController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/wm/DisplayController;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayController;->mDisplays:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wm/DisplayController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/wm/DisplayController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public addDisplayChangingController(Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayController;->mChangeController:Lcom/android/systemui/wm/DisplayChangeController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wm/DisplayChangeController;->addRotationListener(Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;)V

    return-void
.end method

.method public addDisplayWindowListener(Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wm/DisplayController;->mDisplays:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wm/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wm/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/wm/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/systemui/wm/DisplayController$OnDisplaysChangedListener;->onDisplayAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayContext(I)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wm/DisplayController$DisplayRecord;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayController$DisplayRecord;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getDisplayLayout(I)Lcom/android/systemui/wm/DisplayLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wm/DisplayController$DisplayRecord;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayController$DisplayRecord;->mDisplayLayout:Lcom/android/systemui/wm/DisplayLayout;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
