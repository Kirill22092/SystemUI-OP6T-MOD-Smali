.class Lcom/android/systemui/wm/DisplayChangeController$1;
.super Landroid/view/IDisplayWindowRotationController$Stub;
.source "DisplayChangeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wm/DisplayChangeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wm/DisplayChangeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wm/DisplayChangeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wm/DisplayChangeController$1;->this$0:Lcom/android/systemui/wm/DisplayChangeController;

    invoke-direct {p0}, Landroid/view/IDisplayWindowRotationController$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRotateDisplay$0(IIILandroid/view/IDisplayWindowRotationCallback;)V
    .locals 4

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/wm/DisplayChangeController$1;->this$0:Lcom/android/systemui/wm/DisplayChangeController;

    invoke-static {v1}, Lcom/android/systemui/wm/DisplayChangeController;->access$100(Lcom/android/systemui/wm/DisplayChangeController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wm/DisplayChangeController$1;->this$0:Lcom/android/systemui/wm/DisplayChangeController;

    invoke-static {v2}, Lcom/android/systemui/wm/DisplayChangeController;->access$200(Lcom/android/systemui/wm/DisplayChangeController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/wm/DisplayChangeController$1;->this$0:Lcom/android/systemui/wm/DisplayChangeController;

    invoke-static {v2}, Lcom/android/systemui/wm/DisplayChangeController;->access$200(Lcom/android/systemui/wm/DisplayChangeController;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wm/DisplayChangeController$1;->this$0:Lcom/android/systemui/wm/DisplayChangeController;

    invoke-static {v3}, Lcom/android/systemui/wm/DisplayChangeController;->access$100(Lcom/android/systemui/wm/DisplayChangeController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/systemui/wm/DisplayChangeController$1;->this$0:Lcom/android/systemui/wm/DisplayChangeController;

    invoke-static {p0}, Lcom/android/systemui/wm/DisplayChangeController;->access$200(Lcom/android/systemui/wm/DisplayChangeController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/systemui/wm/DisplayChangeController$OnDisplayChangingListener;->onRotateDisplay(IIILandroid/window/WindowContainerTransaction;)V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {p4, p3, v0}, Landroid/view/IDisplayWindowRotationCallback;->continueRotateDisplay(ILandroid/window/WindowContainerTransaction;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public synthetic lambda$onRotateDisplay$0$DisplayChangeController$1(IIILandroid/view/IDisplayWindowRotationCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/wm/DisplayChangeController$1;->lambda$onRotateDisplay$0(IIILandroid/view/IDisplayWindowRotationCallback;)V

    return-void
.end method

.method public onRotateDisplay(IIILandroid/view/IDisplayWindowRotationCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/wm/DisplayChangeController$1;->this$0:Lcom/android/systemui/wm/DisplayChangeController;

    invoke-static {v0}, Lcom/android/systemui/wm/DisplayChangeController;->access$000(Lcom/android/systemui/wm/DisplayChangeController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;-><init>(Lcom/android/systemui/wm/DisplayChangeController$1;IIILandroid/view/IDisplayWindowRotationCallback;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
