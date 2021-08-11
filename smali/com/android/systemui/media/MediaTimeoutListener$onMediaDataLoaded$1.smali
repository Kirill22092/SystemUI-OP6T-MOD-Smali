.class final Lcom/android/systemui/media/MediaTimeoutListener$onMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "MediaTimeoutListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaTimeoutListener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/media/MediaTimeoutListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaTimeoutListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iput-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    invoke-static {v0}, Lcom/android/systemui/media/MediaTimeoutListener;->access$getMediaListeners$p(Lcom/android/systemui/media/MediaTimeoutListener;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->getPlaying()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deliver delayed playback state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaTimeout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaTimeoutListener;->getTimeoutCallback()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
