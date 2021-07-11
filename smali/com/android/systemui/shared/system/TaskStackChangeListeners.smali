.class public Lcom/android/systemui/shared/system/TaskStackChangeListeners;
.super Landroid/app/TaskStackListener;
.source "TaskStackChangeListeners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;,
        Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mRegistered:Z

.field private final mTaskStackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/system/TaskStackChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/system/TaskStackChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTmpListeners:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;-><init>(Lcom/android/systemui/shared/system/TaskStackChangeListeners;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addListener(Landroid/app/IActivityManager;Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    monitor-enter p1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-boolean p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mRegistered:Z

    if-nez p1, :cond_0

    .line 66
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 69
    sget-object p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    const-string p2, "Failed to call registerTaskStackListener"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 62
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onActivityDismissingDockedStack()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 127
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 128
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 129
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 130
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 131
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityRotation(I)V
    .locals 2

    .line 242
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRecentTaskListFrozenChanged(Z)V
    .locals 2

    .line 231
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/16 v1, 0x17

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRecentTaskListUpdated()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSingleTaskDisplayDrawn(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 210
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSingleTaskDisplayEmpty(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 216
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 237
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskDisplayChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskProfileLocked(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTmpListeners:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTmpListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTmpListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskStackChangedBackground()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTmpListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception p0

    .line 99
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 80
    iget-boolean p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mRegistered:Z

    if-eqz p1, :cond_0

    .line 83
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 86
    sget-object p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    const-string v0, "Failed to call unregisterTaskStackListener"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 79
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
