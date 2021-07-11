.class public Lcom/android/systemui/screenrecord/RecordingController;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mIsRecording:Z

.field private mIsStarting:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStopIntent:Landroid/app/PendingIntent;

.field protected final mUserChangeReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lcom/android/systemui/screenrecord/RecordingController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/RecordingController$1;-><init>(Lcom/android/systemui/screenrecord/RecordingController;)V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenrecord/RecordingController;)Landroid/app/PendingIntent;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStopIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenrecord/RecordingController;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/screenrecord/RecordingController;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/screenrecord/RecordingController;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/screenrecord/RecordingController;)Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/RecordingController;->addCallback(Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;)V

    return-void
.end method

.method public cancelCountdown()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0

    :cond_0
    const-string v0, "RecordingController"

    const-string v1, "Timer was null"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    .line 140
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    .line 141
    invoke-interface {v0}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onCountdownEnd()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getPromptIntent()Landroid/content/Intent;
    .locals 2

    .line 79
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.android.systemui"

    const-string v1, "com.android.systemui.screenrecord.ScreenRecordDialog"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 83
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public declared-synchronized isRecording()Z
    .locals 1

    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isStarting()Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    return p0
.end method

.method public removeCallback(Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/RecordingController;->removeCallback(Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;)V

    return-void
.end method

.method public startCountdown(JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    .line 97
    iput-object p6, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStopIntent:Landroid/app/PendingIntent;

    .line 99
    new-instance p6, Lcom/android/systemui/screenrecord/RecordingController$2;

    move-object v1, p6

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/screenrecord/RecordingController$2;-><init>(Lcom/android/systemui/screenrecord/RecordingController;JJLandroid/app/PendingIntent;)V

    iput-object p6, p0, Lcom/android/systemui/screenrecord/RecordingController;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 126
    invoke-virtual {p6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public stopRecording()V
    .locals 4

    const-string v0, "RecordingController"

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStopIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStopIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    goto :goto_0

    :cond_0
    const-string v1, "Stop intent was null"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenrecord/RecordingController;->updateState(Z)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public declared-synchronized updateState(Z)V
    .locals 2

    monitor-enter p0

    .line 183
    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z

    .line 184
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    if-eqz p1, :cond_0

    .line 186
    invoke-interface {v1}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onRecordingStart()V

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {v1}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onRecordingEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 191
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
