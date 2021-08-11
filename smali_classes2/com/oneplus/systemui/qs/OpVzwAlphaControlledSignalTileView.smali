.class public Lcom/oneplus/systemui/qs/OpVzwAlphaControlledSignalTileView;
.super Lcom/android/systemui/qs/AlphaControlledSignalTileView;
.source "OpVzwAlphaControlledSignalTileView.java"


# static fields
.field private static final DEFAULT_DURATION:J

.field private static final SHORT_DURATION:J


# instance fields
.field private mSignalIndicatorToIconFrameSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/systemui/qs/OpVzwAlphaControlledSignalTileView;->DEFAULT_DURATION:J

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    sput-wide v0, Lcom/oneplus/systemui/qs/OpVzwAlphaControlledSignalTileView;->SHORT_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/AlphaControlledSignalTileView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->op_vzw_signal_indicator_to_icon_frame_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/qs/OpVzwAlphaControlledSignalTileView;->mSignalIndicatorToIconFrameSpacing:I

    return-void
.end method


# virtual methods
.method protected layoutIndicator(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v0, "test.9"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/oneplus/systemui/qs/OpVzwAlphaControlledSignalTileView;->mSignalIndicatorToIconFrameSpacing:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/systemui/qs/OpVzwAlphaControlledSignalTileView;->mSignalIndicatorToIconFrameSpacing:I

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalIndicatorShiftDownAmount:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    iget p0, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalIndicatorShiftDownAmount:I

    add-int/2addr v3, p0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected setVisibility(Landroid/view/View;ZZ)V
    .locals 1

    if-eqz p3, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p3, :cond_2

    sget-wide p2, Lcom/oneplus/systemui/qs/OpVzwAlphaControlledSignalTileView;->SHORT_DURATION:J

    goto :goto_1

    :cond_2
    sget-wide p2, Lcom/oneplus/systemui/qs/OpVzwAlphaControlledSignalTileView;->DEFAULT_DURATION:J

    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    return-void
.end method
