.class final Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SeekBarViewModel;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/SeekBarViewModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/media/SeekBarViewModel;->access$setController$p(Lcom/android/systemui/media/SeekBarViewModel;Landroid/media/session/MediaController;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {v0, v1}, Lcom/android/systemui/media/SeekBarViewModel;->access$setPlaybackState$p(Lcom/android/systemui/media/SeekBarViewModel;Landroid/media/session/PlaybackState;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {v0}, Lcom/android/systemui/media/SeekBarViewModel;->access$getCancel$p(Lcom/android/systemui/media/SeekBarViewModel;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 219
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {p0, v1}, Lcom/android/systemui/media/SeekBarViewModel;->access$setCancel$p(Lcom/android/systemui/media/SeekBarViewModel;Ljava/lang/Runnable;)V

    return-void
.end method
