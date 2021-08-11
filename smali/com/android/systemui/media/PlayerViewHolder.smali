.class public final Lcom/android/systemui/media/PlayerViewHolder;
.super Ljava/lang/Object;
.source "PlayerViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/PlayerViewHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerViewHolder.kt\ncom/android/systemui/media/PlayerViewHolder\n*L\n1#1,110:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;


# instance fields
.field private final action0:Landroid/widget/ImageButton;

.field private final action1:Landroid/widget/ImageButton;

.field private final action2:Landroid/widget/ImageButton;

.field private final action3:Landroid/widget/ImageButton;

.field private final action4:Landroid/widget/ImageButton;

.field private final albumView:Landroid/widget/ImageView;

.field private final appIcon:Landroid/widget/ImageView;

.field private final appName:Landroid/widget/TextView;

.field private final artistText:Landroid/widget/TextView;

.field private final elapsedTimeView:Landroid/widget/TextView;

.field private final player:Lcom/android/systemui/util/animation/TransitionLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final progressTimes:Landroid/view/ViewGroup;

.field private final seamless:Landroid/view/ViewGroup;

.field private final seamlessFallback:Landroid/widget/ImageView;

.field private final seamlessIcon:Landroid/widget/ImageView;

.field private final seamlessText:Landroid/widget/TextView;

.field private final seekBar:Landroid/widget/SeekBar;

.field private final titleText:Landroid/widget/TextView;

.field private final totalTimeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/PlayerViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/PlayerViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/PlayerViewHolder;->Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/util/animation/TransitionLayout;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    sget v0, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->appName:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->album_art:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->albumView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->header_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->titleText:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->header_artist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->artistText:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->media_seamless:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamless:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->media_seamless_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->media_seamless_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->media_seamless_fallback:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessFallback:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->media_progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    sget v0, Lcom/android/systemui/R$id;->notification_media_progress_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->progressTimes:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->media_elapsed_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->media_total_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->action0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action0:Landroid/widget/ImageButton;

    sget v0, Lcom/android/systemui/R$id;->action1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action1:Landroid/widget/ImageButton;

    sget v0, Lcom/android/systemui/R$id;->action2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action2:Landroid/widget/ImageButton;

    sget v0, Lcom/android/systemui/R$id;->action3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action3:Landroid/widget/ImageButton;

    sget v0, Lcom/android/systemui/R$id;->action4:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action4:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/media/IlluminationDrawable;

    iget-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamless:Landroid/view/ViewGroup;

    const-string v2, "seamless"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action0:Landroid/widget/ImageButton;

    const-string v2, "action0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action1:Landroid/widget/ImageButton;

    const-string v2, "action1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action2:Landroid/widget/ImageButton;

    const-string v2, "action2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action3:Landroid/widget/ImageButton;

    const-string v2, "action3"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action4:Landroid/widget/ImageButton;

    const-string v1, "action4"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    sget p0, Lcom/android/systemui/R$id;->qs_media_controls_options:I

    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    return-void

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.android.systemui.media.IlluminationDrawable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.android.systemui.util.animation.TransitionLayout"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/PlayerViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getAction(I)Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget v0, Lcom/android/systemui/R$id;->action0:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action0:Landroid/widget/ImageButton;

    const-string p1, "action0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$id;->action1:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action1:Landroid/widget/ImageButton;

    const-string p1, "action1"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/R$id;->action2:I

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action2:Landroid/widget/ImageButton;

    const-string p1, "action2"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/systemui/R$id;->action3:I

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action3:Landroid/widget/ImageButton;

    const-string p1, "action3"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/systemui/R$id;->action4:I

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action4:Landroid/widget/ImageButton;

    const-string p1, "action4"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final getAlbumView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->albumView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getAppIcon()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getAppName()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->appName:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getArtistText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->artistText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getElapsedTimeView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    return-object p0
.end method

.method public final getProgressTimes()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->progressTimes:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getSeamless()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamless:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getSeamlessFallback()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessFallback:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getSeamlessIcon()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getSeamlessText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getSeekBar()Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public final getTitleText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->titleText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTotalTimeView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    return-object p0
.end method
