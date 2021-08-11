.class final Lcom/android/systemui/media/SeekBarViewModel$clearController$1;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SeekBarViewModel;->clearController()V
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

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$clearController$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$clearController$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/media/SeekBarViewModel;->access$setController$p(Lcom/android/systemui/media/SeekBarViewModel;Landroid/media/session/MediaController;)V

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$clearController$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {v0, v1}, Lcom/android/systemui/media/SeekBarViewModel;->access$setPlaybackState$p(Lcom/android/systemui/media/SeekBarViewModel;Landroid/media/session/PlaybackState;)V

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$clearController$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {v0}, Lcom/android/systemui/media/SeekBarViewModel;->access$getCancel$p(Lcom/android/systemui/media/SeekBarViewModel;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$clearController$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {v0, v1}, Lcom/android/systemui/media/SeekBarViewModel;->access$setCancel$p(Lcom/android/systemui/media/SeekBarViewModel;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$clearController$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {p0}, Lcom/android/systemui/media/SeekBarViewModel;->access$get_data$p(Lcom/android/systemui/media/SeekBarViewModel;)Lcom/android/systemui/media/SeekBarViewModel$Progress;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SeekBarViewModel$Progress;ZZLjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/android/systemui/media/SeekBarViewModel$Progress;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/media/SeekBarViewModel;->access$set_data$p(Lcom/android/systemui/media/SeekBarViewModel;Lcom/android/systemui/media/SeekBarViewModel$Progress;)V

    return-void
.end method
