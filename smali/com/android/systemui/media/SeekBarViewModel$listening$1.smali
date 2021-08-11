.class final Lcom/android/systemui/media/SeekBarViewModel$listening$1;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SeekBarViewModel;->setListening(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $value:Z

.field final synthetic this$0:Lcom/android/systemui/media/SeekBarViewModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SeekBarViewModel;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$listening$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iput-boolean p2, p0, Lcom/android/systemui/media/SeekBarViewModel$listening$1;->$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$listening$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {v0}, Lcom/android/systemui/media/SeekBarViewModel;->access$getListening$lp(Lcom/android/systemui/media/SeekBarViewModel;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/media/SeekBarViewModel$listening$1;->$value:Z

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$listening$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {v0, v1}, Lcom/android/systemui/media/SeekBarViewModel;->access$setListening$lp(Lcom/android/systemui/media/SeekBarViewModel;Z)V

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$listening$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {p0}, Lcom/android/systemui/media/SeekBarViewModel;->access$checkIfPollingNeeded(Lcom/android/systemui/media/SeekBarViewModel;)V

    :cond_0
    return-void
.end method
