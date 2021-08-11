.class public Lcom/android/systemui/wm/DisplayChangeController;
.super Ljava/lang/Object;
.source "DisplayChangeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;
    }
.end annotation


# instance fields
.field private final mDisplayRotationController:Landroid/view/IDisplayWindowRotationController;

.field private final mHandler:Landroid/os/Handler;

.field private final mRotationListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/view/IWindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayChangeController;->mRotationListener:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayChangeController;->mTmpListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/wm/DisplayChangeController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wm/DisplayChangeController$1;-><init>(Lcom/android/systemui/wm/DisplayChangeController;)V

    iput-object v0, p0, Lcom/android/systemui/wm/DisplayChangeController;->mDisplayRotationController:Landroid/view/IDisplayWindowRotationController;

    iput-object p1, p0, Lcom/android/systemui/wm/DisplayChangeController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/wm/DisplayChangeController;->mWmService:Landroid/view/IWindowManager;

    :try_start_0
    invoke-interface {p2, v0}, Landroid/view/IWindowManager;->setDisplayWindowRotationController(Landroid/view/IDisplayWindowRotationController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to register rotation controller"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/android/systemui/wm/DisplayChangeController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayChangeController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/wm/DisplayChangeController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayChangeController;->mRotationListener:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wm/DisplayChangeController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayChangeController;->mTmpListeners:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public addRotationListener(Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wm/DisplayChangeController;->mRotationListener:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wm/DisplayChangeController;->mRotationListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
