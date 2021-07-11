.class public Lcom/android/systemui/pip/phone/PipMenuActivityController;
.super Ljava/lang/Object;
.source "PipMenuActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;
    }
.end annotation


# instance fields
.field private mAppActions:Landroid/content/pm/ParceledListSlice;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

.field private mMediaActions:Landroid/content/pm/ParceledListSlice;

.field private mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

.field private mMenuState:I

.field private mMessenger:Landroid/os/Messenger;

.field private mOnAnimationEndRunnable:Ljava/lang/Runnable;

.field private mStartActivityRequested:Z

.field private mStartActivityRequestedTime:J

.field private mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

.field private mTmpDismissFractionData:Landroid/os/Bundle;

.field private mToActivityMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pip/phone/PipMediaController;Lcom/android/systemui/shared/system/InputConsumerController;)V
    .locals 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    .line 129
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    .line 169
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMessenger:Landroid/os/Messenger;

    .line 171
    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$46Yr3xVHMZsGyZiGhSKF_IPBnzk;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$46Yr3xVHMZsGyZiGhSKF_IPBnzk;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    .line 190
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    .line 192
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;Landroid/os/Bundle;)Ljava/lang/Runnable;
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->getMenuStateChangeFinishedCallback(Landroid/os/Messenger;Landroid/os/Bundle;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZLjava/lang/Runnable;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onMenuStateChanged(IZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Landroid/os/Messenger;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipMenuActivityController;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/lang/Runnable;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/pip/phone/PipMenuActivityController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->updateMenuActions()V

    return-void
.end method

.method private fadeOutMenu()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 361
    iput v1, v0, Landroid/os/Message;->what:I

    .line 363
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PipMenuActController"

    const-string v1, "Could not notify menu to fade out"

    .line 365
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private getMenuStateChangeFinishedCallback(Landroid/os/Messenger;Landroid/os/Bundle;)Ljava/lang/Runnable;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    new-instance p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_kNQCJDSdqogZpt_djM4gC8wQ7M;

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_kNQCJDSdqogZpt_djM4gC8wQ7M;-><init>(Landroid/os/Bundle;Landroid/os/Messenger;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isStartActivityRequestedElapsed()Z
    .locals 4

    .line 526
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidActions(Landroid/content/pm/ParceledListSlice;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getMenuStateChangeFinishedCallback$1(Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 2

    .line 288
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-string v1, "message_callback_what"

    .line 289
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Landroid/os/Message;->what:I

    .line 290
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAnimationEndRunnable:Ljava/lang/Runnable;

    :cond_0
    const-string p0, "PipMenuActController"

    const-string v0, "Expected start menu activity request timed out"

    .line 177
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$onMenuStateChanged$2(IZLjava/lang/Runnable;Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0

    .line 541
    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipMenuStateChanged(IZLjava/lang/Runnable;)V

    return-void
.end method

.method private onMenuStateChanged(IZLjava/lang/Runnable;)V
    .locals 2

    .line 540
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    if-eq p1, v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_vkUUS2B_ghvg2Kknl2htGLPiZU;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_vkUUS2B_ghvg2Kknl2htGLPiZU;-><init>(IZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 545
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    invoke-virtual {p2, p3}, Lcom/android/systemui/pip/phone/PipMediaController;->addListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V

    goto :goto_0

    .line 549
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    invoke-virtual {p2, p3}, Lcom/android/systemui/pip/phone/PipMediaController;->removeListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V

    .line 552
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    return-void
.end method

.method private resolveMenuActions()Landroid/content/pm/ParceledListSlice;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isValidActions(Landroid/content/pm/ParceledListSlice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    return-object p0

    .line 444
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object p0
.end method

.method private setStartActivityRequested(Z)V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 557
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz p1, :cond_0

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTime:J

    return-void
.end method

.method private showMenuInternal(ILandroid/graphics/Rect;ZZZZ)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 310
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "menu_state"

    .line 311
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string/jumbo p1, "stack_bounds"

    .line 313
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string p1, "allow_timeout"

    .line 315
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "resize_menu_on_show"

    .line 316
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "show_menu_with_delay"

    .line 317
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "show_resize_handle"

    .line 318
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    .line 320
    iput p2, p1, Landroid/os/Message;->what:I

    .line 321
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 323
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PipMenuActController"

    const-string p2, "Could not notify menu to show"

    .line 325
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 327
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isStartActivityRequestedElapsed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->startMenuActivity(ILandroid/graphics/Rect;ZZZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startMenuActivity(ILandroid/graphics/Rect;ZZZZ)V
    .locals 6

    const-string v0, "PipMenuActController"

    const/4 v1, 0x0

    .line 453
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 455
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v3, v3

    if-lez v3, :cond_1

    .line 457
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    .line 458
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "messenger"

    .line 459
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "actions"

    .line 460
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->resolveMenuActions()Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string/jumbo v4, "stack_bounds"

    .line 462
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string p2, "menu_state"

    .line 464
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "allow_timeout"

    .line 465
    invoke-virtual {v3, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "resize_menu_on_show"

    .line 466
    invoke-virtual {v3, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "show_menu_with_delay"

    .line 467
    invoke-virtual {v3, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "show_resize_handle"

    .line 468
    invoke-virtual {v3, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 469
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 470
    iget-object p2, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object p3, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length p3, p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 472
    invoke-virtual {p1, p4, p4}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 473
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p2, v3, p1, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 474
    invoke-direct {p0, p4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "No PIP tasks found"

    .line 476
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 479
    invoke-direct {p0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    const-string p0, "Error showing PIP menu activity"

    .line 480
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateMenuActions()V
    .locals 5

    const-string v0, "PipMenuActController"

    .line 488
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 492
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 495
    iget-object v1, v2, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Error showing PIP menu activity"

    .line 498
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    :cond_0
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "stack_bounds"

    .line 502
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 503
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->resolveMenuActions()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    const-string v3, "actions"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 504
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x4

    .line 505
    iput v3, v1, Landroid/os/Message;->what:I

    .line 506
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 508
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v1, "Could not notify menu activity to update actions"

    .line 510
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipMenuActController"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMenuState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mToActivityMessenger="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mListeners="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mStartActivityRequested="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mStartActivityRequestedTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method handlePointerEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 566
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 567
    iput v1, v0, Landroid/os/Message;->what:I

    .line 568
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 570
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PipMenuActController"

    const-string v0, "Could not dispatch touch event"

    .line 572
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public hideMenu()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 380
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 381
    iput v1, v0, Landroid/os/Message;->what:I

    .line 383
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PipMenuActController"

    const-string v1, "Could not notify menu to hide"

    .line 385
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public hideMenuWithoutResize()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 426
    invoke-direct {p0, v0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onMenuStateChanged(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public isMenuActivityVisible()Z
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$PipMenuActivityController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->lambda$new$0()V

    return-void
.end method

.method public onActivityPinned()V
    .locals 1

    .line 200
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer(Z)V

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->unregisterInputConsumer()V

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 213
    iput v1, v0, Landroid/os/Message;->what:I

    .line 215
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PipMenuActController"

    const-string v1, "Could not notify menu pinned animation ended"

    .line 217
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public pokeMenu()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 344
    iput v1, v0, Landroid/os/Message;->what:I

    .line 346
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PipMenuActController"

    const-string v1, "Could not notify poke menu"

    .line 348
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setAppActions(Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    .line 434
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->updateMenuActions()V

    return-void
.end method

.method public setDismissFraction(F)V
    .locals 7

    .line 239
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    const-string v1, "dismiss_fraction"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 242
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x5

    .line 243
    iput v0, p1, Landroid/os/Message;->what:I

    .line 244
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PipMenuActController"

    const-string v0, "Could not notify menu to update dismiss fraction"

    .line 248
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 250
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isStartActivityRequestedElapsed()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 253
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->startMenuActivity(ILandroid/graphics/Rect;ZZZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showMenu(ILandroid/graphics/Rect;ZZZ)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 277
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenuInternal(ILandroid/graphics/Rect;ZZZZ)V

    return-void
.end method

.method public showMenuWithDelay(ILandroid/graphics/Rect;ZZZ)V
    .locals 7

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->fadeOutMenu()V

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 268
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenuInternal(ILandroid/graphics/Rect;ZZZZ)V

    return-void
.end method
