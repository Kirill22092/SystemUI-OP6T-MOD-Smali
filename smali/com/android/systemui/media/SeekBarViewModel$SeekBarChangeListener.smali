.class final Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/SeekBarViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekBarChangeListener"
.end annotation


# instance fields
.field private final viewModel:Lcom/android/systemui/media/SeekBarViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SeekBarViewModel;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/SeekBarViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SeekBarViewModel;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SeekBarViewModel;

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/SeekBarViewModel;->onSeekProgress(J)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/media/SeekBarViewModel;->onSeekStarting()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/SeekBarViewModel;->onSeek(J)V

    return-void
.end method
