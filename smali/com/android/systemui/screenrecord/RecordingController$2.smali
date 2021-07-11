.class Lcom/android/systemui/screenrecord/RecordingController$2;
.super Landroid/os/CountDownTimer;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenrecord/RecordingController;->startCountdown(JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenrecord/RecordingController;

.field final synthetic val$startIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;JJLandroid/app/PendingIntent;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingController$2;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    iput-object p6, p0, Lcom/android/systemui/screenrecord/RecordingController$2;->val$startIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    const-string v0, "RecordingController"

    .line 109
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController$2;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/screenrecord/RecordingController;->access$202(Lcom/android/systemui/screenrecord/RecordingController;Z)Z

    .line 110
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController$2;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/screenrecord/RecordingController;->access$302(Lcom/android/systemui/screenrecord/RecordingController;Z)Z

    .line 111
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController$2;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-static {v1}, Lcom/android/systemui/screenrecord/RecordingController;->access$100(Lcom/android/systemui/screenrecord/RecordingController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    .line 112
    invoke-interface {v2}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onCountdownEnd()V

    goto :goto_0

    .line 115
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController$2;->val$startIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    .line 116
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingController$2;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-static {v2}, Lcom/android/systemui/screenrecord/RecordingController;->access$400(Lcom/android/systemui/screenrecord/RecordingController;)Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController$2;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    const-string p0, "sent start intent"

    .line 119
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending intent was cancelled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 102
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController$2;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingController;->access$100(Lcom/android/systemui/screenrecord/RecordingController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    .line 103
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onCountdown(J)V

    goto :goto_0

    :cond_0
    return-void
.end method
