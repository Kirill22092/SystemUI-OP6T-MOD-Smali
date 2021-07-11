.class final Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;
.super Landroid/os/Handler;
.source "TaskStackChangeListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/TaskStackChangeListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/TaskStackChangeListeners;Landroid/os/Looper;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 273
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 278
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 279
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1a

    .line 438
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_6

    .line 439
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityRotation(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 431
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 432
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_6

    .line 433
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v3, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 425
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2
    if-ltz v1, :cond_6

    .line 426
    iget-object v4, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v4}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_3

    :cond_0
    move v5, v2

    :goto_3
    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onRecentTaskListFrozenChanged(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 406
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_4
    if-ltz v1, :cond_6

    .line 407
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onSingleTaskDisplayEmpty(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 419
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_5
    if-ltz v1, :cond_6

    .line 420
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onRecentTaskListUpdated()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 413
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_6
    if-ltz v1, :cond_6

    .line 414
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskDisplayChanged(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 400
    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_7
    if-ltz v1, :cond_6

    .line 401
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onSingleTaskDisplayDrawn(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 393
    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_8
    if-ltz v1, :cond_6

    .line 394
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 386
    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_9
    if-ltz v1, :cond_6

    .line 387
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 345
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 346
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_a
    if-ltz v2, :cond_6

    .line 347
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 348
    invoke-virtual {v3, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 379
    :pswitch_b
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_b
    if-ltz v1, :cond_6

    .line 380
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 381
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityRequestedOrientationChanged(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 372
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 373
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_c
    if-ltz v2, :cond_6

    .line 374
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v3, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 366
    :pswitch_d
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_d
    if-ltz v1, :cond_6

    .line 367
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskRemoved(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 359
    :pswitch_e
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_e
    if-ltz v1, :cond_6

    .line 360
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 337
    :pswitch_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 338
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_f
    if-ltz v2, :cond_6

    .line 339
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 340
    invoke-virtual {v3, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 306
    :pswitch_10
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_10
    if-ltz v1, :cond_6

    .line 307
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityUnpinned()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 353
    :pswitch_11
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_11
    if-ltz v1, :cond_6

    .line 354
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskProfileLocked(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 331
    :pswitch_12
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_12
    if-ltz v1, :cond_6

    .line 332
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityDismissingDockedStack()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 324
    :pswitch_13
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_13
    if-ltz v1, :cond_6

    .line 325
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 312
    :pswitch_14
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 313
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 314
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_14

    :cond_1
    move v5, v2

    .line 315
    :goto_14
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_15

    :cond_2
    move v6, v2

    .line 316
    :goto_15
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz v1, :cond_3

    move v2, v3

    .line 317
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_16
    if-ltz v1, :cond_6

    .line 318
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 298
    :pswitch_15
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;

    .line 299
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_17
    if-ltz v2, :cond_6

    .line 300
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget-object v4, v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mUserId:I

    iget v6, v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mTaskId:I

    iget v7, v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mStackId:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityPinned(Ljava/lang/String;III)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :pswitch_16
    const-string v1, "onTaskSnapshotChanged"

    .line 289
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_18
    if-ltz v1, :cond_4

    .line 291
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-direct {v4, v5}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/app/ActivityManager$TaskSnapshot;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 294
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1a

    :pswitch_17
    const-string v1, "onTaskStackChanged"

    .line 281
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_19
    if-ltz v1, :cond_5

    .line 283
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskStackChanged()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 285
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 444
    :cond_6
    :goto_1a
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p1, p0, Lcom/android/internal/os/SomeArgs;

    if-eqz p1, :cond_7

    .line 446
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    .line 444
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
