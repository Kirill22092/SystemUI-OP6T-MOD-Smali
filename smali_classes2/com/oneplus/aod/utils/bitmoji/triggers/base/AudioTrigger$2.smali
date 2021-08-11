.class Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "AudioTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-virtual {v4, v3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->checkAudioAttributes(Landroid/media/AudioAttributes;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    iget-object v1, v1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlaybackConfigChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->checkConfigIsActive(Landroid/media/AudioPlaybackConfiguration;)Z

    move-result v1

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-static {v2, v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;Z)V

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->cancelDelayToCheckStop()V

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    iget-wide v0, p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string p1, "already been played"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->mTag:Ljava/lang/String;

    const-string v0, "start playing"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->mPlayStart:J

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->startCountToCheckPlay()V

    return-void

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-static {p1, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;Z)V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->startDelayToCheckIfStop()V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-static {p1, v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->access$000(Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;Z)V

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->cancelDelayToCheckStop()V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger$2;->this$0:Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/AudioTrigger;->audioStopOrPause()V

    return-void
.end method
