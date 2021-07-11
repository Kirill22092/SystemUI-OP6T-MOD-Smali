.class final Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;
.super Ljava/lang/Object;
.source "MediaTimeoutListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->processState(Landroid/media/session/PlaybackState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $dispatchEvents:Z

.field final synthetic this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    iput-boolean p2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->$dispatchEvents:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->access$setCancellation$p(Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;Ljava/lang/Runnable;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Execute timeout for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    invoke-static {v1}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->access$getKey$p(Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaTimeout"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->setTimedOut(Z)V

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->$dispatchEvents:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    iget-object v0, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaTimeoutListener;->getTimeoutCallback()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    invoke-static {v1}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->access$getKey$p(Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->getTimedOut()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
