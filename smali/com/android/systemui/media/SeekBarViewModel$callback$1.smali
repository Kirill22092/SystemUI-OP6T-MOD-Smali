.class public final Lcom/android/systemui/media/SeekBarViewModel$callback$1;
.super Landroid/media/session/MediaController$Callback;
.source "SeekBarViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SeekBarViewModel;-><init>(Lcom/android/systemui/util/concurrency/RepeatableExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/SeekBarViewModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SeekBarViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1
    .param p1    # Landroid/media/session/PlaybackState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {v0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->access$setPlaybackState$p(Lcom/android/systemui/media/SeekBarViewModel;Landroid/media/session/PlaybackState;)V

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {p1}, Lcom/android/systemui/media/SeekBarViewModel;->access$getPlaybackState$p(Lcom/android/systemui/media/SeekBarViewModel;)Landroid/media/session/PlaybackState;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {v0}, Lcom/android/systemui/media/SeekBarViewModel;->access$getPlaybackState$p(Lcom/android/systemui/media/SeekBarViewModel;)Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {p0}, Lcom/android/systemui/media/SeekBarViewModel;->access$checkIfPollingNeeded(Lcom/android/systemui/media/SeekBarViewModel;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/media/SeekBarViewModel;->clearController()V

    :goto_1
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/media/SeekBarViewModel;->clearController()V

    return-void
.end method
