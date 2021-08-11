.class public Lcom/android/systemui/bubbles/BadgedImageView;
.super Landroid/widget/ImageView;
.source "BadgedImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;
    }
.end annotation


# instance fields
.field private mAnimatingToDotScale:F

.field private mBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

.field private mBubbleBitmapSize:I

.field private mDotColor:I

.field private mDotIsAnimating:Z

.field private mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

.field private mDotScale:F

.field private final mDotSuppressionFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

.field private mOnLeft:Z

.field private mTempBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p1, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotScale:F

    iput p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mAnimatingToDotScale:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotIsAnimating:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->bubble_bitmap_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mBubbleBitmapSize:I

    new-instance p1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {p1}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x104022c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/icons/DotRenderer;

    iget p3, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mBubbleBitmapSize:I

    const/16 p4, 0x64

    invoke-direct {p2, p3, p1, p4}, Lcom/android/launcher3/icons/DotRenderer;-><init>(ILandroid/graphics/Path;I)V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method private animateDotScale(FLjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotIsAnimating:Z

    iget v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mAnimatingToDotScale:F

    cmpl-float v1, v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BadgedImageView;->shouldDrawDot()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mAnimatingToDotScale:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BadgedImageView$5JtatqU5fJ_DVxOW3Qg2hefSWas;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/bubbles/-$$Lambda$BadgedImageView$5JtatqU5fJ_DVxOW3Qg2hefSWas;-><init>(Lcom/android/systemui/bubbles/BadgedImageView;Z)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BadgedImageView$v47cozs89EavNMNnxmtPzE3ZmYs;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BadgedImageView$v47cozs89EavNMNnxmtPzE3ZmYs;-><init>(Lcom/android/systemui/bubbles/BadgedImageView;ZLjava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotIsAnimating:Z

    return-void
.end method

.method private synthetic lambda$animateDotScale$1(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotScale(F)V

    return-void
.end method

.method private synthetic lambda$animateDotScale$2(ZLjava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotScale(F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotIsAnimating:Z

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setDotPositionOnLeft$0(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotOnLeft(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BadgedImageView;->animateDotScale(FLjava/lang/Runnable;)V

    return-void
.end method

.method private shouldDrawDot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotIsAnimating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->showDot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method addDotSuppressionFlag(Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    :cond_1
    return-void
.end method

.method drawDot(Landroid/graphics/Path;)V
    .locals 3

    new-instance v0, Lcom/android/launcher3/icons/DotRenderer;

    iget v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mBubbleBitmapSize:I

    const/16 v2, 0x64

    invoke-direct {v0, v1, p1, v2}, Lcom/android/launcher3/icons/DotRenderer;-><init>(ILandroid/graphics/Path;I)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method getDotCenter()[F
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mOnLeft:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/DotRenderer;->getLeftDotPosition()[F

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/DotRenderer;->getRightDotPosition()[F

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    mul-float/2addr v1, v3

    iget-object p0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 v3, 0x1

    aget v0, v0, v3

    mul-float/2addr p0, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v1, v0, v2

    aput p0, v0, v3

    return-object v0
.end method

.method getDotColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotColor:I

    return p0
.end method

.method getDotOnLeft()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mOnLeft:Z

    return p0
.end method

.method getDotPositionOnLeft()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BadgedImageView;->getDotOnLeft()Z

    move-result p0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public synthetic lambda$animateDotScale$1$BadgedImageView(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BadgedImageView;->lambda$animateDotScale$1(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$animateDotScale$2$BadgedImageView(ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BadgedImageView;->lambda$animateDotScale$2(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$setDotPositionOnLeft$0$BadgedImageView(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->lambda$setDotPositionOnLeft$0(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BadgedImageView;->shouldDrawDot()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotColor:I

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->color:I

    iget-object v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mOnLeft:Z

    iput-boolean v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    iget v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotScale:F

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object p0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    return-void
.end method

.method removeDotSuppressionFlag(Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotSuppressionFlags:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    :cond_1
    return-void
.end method

.method setDotOnLeft(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mOnLeft:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method setDotPositionOnLeft(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BadgedImageView;->getDotOnLeft()Z

    move-result p2

    if-eq p1, p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BadgedImageView;->shouldDrawDot()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BadgedImageView$Z7e3tGxE0eQYPk5Be9lp1Zt58bs;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BadgedImageView$Z7e3tGxE0eQYPk5Be9lp1Zt58bs;-><init>(Lcom/android/systemui/bubbles/BadgedImageView;Z)V

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/bubbles/BadgedImageView;->animateDotScale(FLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotOnLeft(Z)V

    :goto_0
    return-void
.end method

.method setDotScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotScale:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setRenderedBubble(Lcom/android/systemui/bubbles/BubbleViewProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {p1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getBadgedImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-interface {p1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getDotColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotColor:I

    invoke-interface {p1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getDotPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->drawDot(Landroid/graphics/Path;)V

    return-void
.end method

.method updateDotVisibility(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BadgedImageView;->shouldDrawDot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->animateDotScale(FLjava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotScale:F

    iput v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mAnimatingToDotScale:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :goto_1
    return-void
.end method
