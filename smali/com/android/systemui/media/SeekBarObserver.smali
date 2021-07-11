.class public final Lcom/android/systemui/media/SeekBarObserver;
.super Ljava/lang/Object;
.source "SeekBarObserver.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/android/systemui/media/SeekBarViewModel$Progress;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSeekBarObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeekBarObserver.kt\ncom/android/systemui/media/SeekBarObserver\n*L\n1#1,71:1\n*E\n"
.end annotation


# instance fields
.field private final holder:Lcom/android/systemui/media/PlayerViewHolder;

.field private final seekBarDefaultMaxHeight:I

.field private final seekBarDisabledHeight:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/PlayerViewHolder;)V
    .locals 3
    .param p1    # Lcom/android/systemui/media/PlayerViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    .line 31
    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    const-string v0, "holder.seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "holder.seekBar.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 32
    sget v2, Lcom/android/systemui/R$dimen;->qs_media_enabled_seekbar_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDefaultMaxHeight:I

    .line 33
    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 34
    sget v0, Lcom/android/systemui/R$dimen;->qs_media_disabled_seekbar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDisabledHeight:I

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/media/SeekBarViewModel$Progress;)V
    .locals 6
    .param p1    # Lcom/android/systemui/media/SeekBarViewModel$Progress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "holder.seekBar"

    if-nez v0, :cond_1

    .line 40
    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMaxHeight()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDisabledHeight:I

    if-eq p1, v0, :cond_0

    .line 41
    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDisabledHeight:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 44
    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 45
    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 46
    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getElapsedTimeView()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getTotalTimeView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->getSeekAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xff

    :cond_2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->getSeekAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMaxHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDefaultMaxHeight:I

    if-eq v0, v1, :cond_3

    .line 55
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDefaultMaxHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    .line 58
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->getElapsedTime()Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 59
    iget-object v3, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v3}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 60
    iget-object v3, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v3}, Lcom/android/systemui/media/PlayerViewHolder;->getElapsedTimeView()Landroid/widget/TextView;

    move-result-object v3

    int-to-long v4, v0

    .line 61
    div-long/2addr v4, v1

    .line 60
    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->getDuration()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 66
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getTotalTimeView()Landroid/widget/TextView;

    move-result-object p0

    int-to-long v3, p1

    .line 67
    div-long/2addr v3, v1

    .line 66
    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarObserver;->onChanged(Lcom/android/systemui/media/SeekBarViewModel$Progress;)V

    return-void
.end method
