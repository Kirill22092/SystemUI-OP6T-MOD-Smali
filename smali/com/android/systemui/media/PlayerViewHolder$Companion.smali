.class public final Lcom/android/systemui/media/PlayerViewHolder$Companion;
.super Ljava/lang/Object;
.source "PlayerViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/PlayerViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerViewHolder.kt\ncom/android/systemui/media/PlayerViewHolder$Companion\n*L\n1#1,110:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/media/PlayerViewHolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/systemui/media/PlayerViewHolder;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "inflater"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget p0, Lcom/android/systemui/R$layout;->media_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "mediaView"

    .line 101
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 102
    new-instance p1, Lcom/android/systemui/media/PlayerViewHolder;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/PlayerViewHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p0

    const-string p2, "seekBar"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setLayoutDirection(I)V

    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getProgressTimes()Landroid/view/ViewGroup;

    move-result-object p0

    const-string p2, "progressTimes"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-object p1
.end method
