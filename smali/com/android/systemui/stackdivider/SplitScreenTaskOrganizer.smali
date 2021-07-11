.class Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;
.super Landroid/window/TaskOrganizer;
.source "SplitScreenTaskOrganizer.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field final mDivider:Lcom/android/systemui/stackdivider/Divider;

.field mHomeBounds:Landroid/graphics/Rect;

.field mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

.field mPrimaryDim:Landroid/view/SurfaceControl;

.field mPrimarySurface:Landroid/view/SurfaceControl;

.field mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

.field mSecondaryDim:Landroid/view/SurfaceControl;

.field mSecondarySurface:Landroid/view/SurfaceControl;

.field private mSplitScreenSupported:Z

.field final mSurfaceSession:Landroid/view/SurfaceSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/window/TaskOrganizer;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mHomeBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSplitScreenSupported:Z

    .line 50
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    return-void
.end method

.method private handleTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 10

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSplitScreenSupported:Z

    const-string v1, "SplitScreenTaskOrg"

    if-nez v0, :cond_0

    .line 170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got handleTaskInfoChanged when not initialized: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 175
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v5

    .line 176
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez v6, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v4

    .line 177
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez v7, :cond_4

    move v7, v5

    goto :goto_3

    :cond_4
    move v7, v4

    .line 178
    :goto_3
    iget-object v8, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v8}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v9}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    if-ne v8, v9, :cond_5

    .line 179
    iput-object p1, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_4

    .line 180
    :cond_5
    iget-object v8, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v8}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v9}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    if-ne v8, v9, :cond_6

    .line 181
    iput-object p1, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 183
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez p1, :cond_7

    move p1, v5

    goto :goto_5

    :cond_7
    move p1, v4

    .line 184
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez v8, :cond_8

    move v8, v5

    goto :goto_6

    :cond_8
    move v8, v4

    .line 185
    :goto_6
    iget-object v9, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eq v9, v3, :cond_9

    if-ne v9, v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 187
    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/Divider;->isHomeStackResizable()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move v4, v5

    .line 188
    :cond_a
    sget-boolean v2, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskInfoChanged, , primaryIsEmpty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", secondaryIsEmpty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", secondaryImpliesMinimize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mPrimary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mSecondary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-ne p1, v6, :cond_c

    if-ne v7, v8, :cond_c

    if-ne v0, v4, :cond_c

    return-void

    :cond_c
    if-nez p1, :cond_f

    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    if-eqz v4, :cond_e

    .line 241
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->ensureMinimizedSplit()V

    goto/16 :goto_8

    .line 244
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->ensureNormalSplit()V

    goto/16 :goto_8

    .line 209
    :cond_f
    :goto_7
    sget-boolean v0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->DEBUG:Z

    const-string v2, "  "

    if-eqz v0, :cond_10

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at-least one split empty "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 216
    sget-boolean v0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    was in split, so this means leave it "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->startDismissSplit()V

    if-eq p1, v8, :cond_14

    .line 224
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->ensureMinimizedSplit()V

    goto :goto_8

    :cond_12
    if-nez p1, :cond_14

    if-eqz v6, :cond_14

    if-eqz v7, :cond_14

    .line 233
    sget-boolean p1, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->DEBUG:Z

    if-eqz p1, :cond_13

    const-string p1, "   was not in split, but primary is populated, so enter it"

    .line 234
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_13
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->startEnterSplit()V

    :cond_14
    :goto_8
    return-void
.end method

.method private synthetic lambda$onTaskInfoChanged$0(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->handleTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method


# virtual methods
.method getTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p0}, Lcom/android/systemui/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 57
    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->registerOrganizer(I)V

    const/4 v1, 0x4

    .line 58
    invoke-virtual {p0, v1}, Landroid/window/TaskOrganizer;->registerOrganizer(I)V

    .line 59
    monitor-enter p0

    const/4 v2, 0x0

    .line 61
    :try_start_0
    invoke-static {v2, v0}, Landroid/window/TaskOrganizer;->createRootTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 63
    invoke-static {v2, v1}, Landroid/window/TaskOrganizer;->createRootTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {p0}, Landroid/window/TaskOrganizer;->unregisterOrganizer()V

    .line 68
    throw v0

    .line 70
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method isSplitScreenSupported()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSplitScreenSupported:Z

    return p0
.end method

.method public synthetic lambda$onTaskInfoChanged$0$SplitScreenTaskOrganizer(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->lambda$onTaskInfoChanged$0(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 7

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 93
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iput-object p2, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimarySurface:Landroid/view/SurfaceControl;

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 96
    iput-object p2, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondarySurface:Landroid/view/SurfaceControl;

    .line 99
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSplitScreenSupported:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimarySurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondarySurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSplitScreenSupported:Z

    .line 103
    new-instance p2, Landroid/view/SurfaceControl$Builder;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {p2, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimarySurface:Landroid/view/SurfaceControl;

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string v0, "Primary Divider Dim"

    .line 105
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string v0, "SplitScreenTaskOrganizer.onTaskAppeared"

    .line 106
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 107
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimaryDim:Landroid/view/SurfaceControl;

    .line 108
    new-instance p2, Landroid/view/SurfaceControl$Builder;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {p2, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondarySurface:Landroid/view/SurfaceControl;

    .line 109
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string v0, "Secondary Divider Dim"

    .line 110
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string v0, "SplitScreenTaskOrganizer.onTaskAppeared"

    .line 111
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 112
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondaryDim:Landroid/view/SurfaceControl;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    .line 114
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimaryDim:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimaryDim:Landroid/view/SurfaceControl;

    const/4 v2, 0x3

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    aput v5, v3, p1

    const/4 v6, 0x2

    aput v5, v3, v6

    invoke-virtual {p2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondaryDim:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondaryDim:Landroid/view/SurfaceControl;

    new-array v1, v2, [F

    aput v5, v1, v4

    aput v5, v1, p1

    aput v5, v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 118
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 121
    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    const-string p2, "SplitScreenTaskOrg"

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received onTaskAppeared before creating root tasks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskInfoChanged: , taskInfo.displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenTaskOrg"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$SplitScreenTaskOrganizer$VFKjLFziXUrC1SQQoEI4rRScXR8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/-$$Lambda$SplitScreenTaskOrganizer$VFKjLFziXUrC1SQQoEI4rRScXR8;-><init>(Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 128
    invoke-virtual {v0, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 129
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 130
    invoke-virtual {p1, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 132
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSplitScreenSupported:Z

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 133
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSplitScreenSupported:Z

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimaryDim:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondaryDim:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mPrimarySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mSecondarySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 140
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 143
    iget-object p1, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/Divider;->onTaskVanished()V

    .line 145
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/stackdivider/SplitScreenTaskOrganizer;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider;->mTransactionPool:Lcom/android/systemui/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/systemui/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
