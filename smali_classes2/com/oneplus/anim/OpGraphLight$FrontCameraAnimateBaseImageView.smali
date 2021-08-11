.class Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;
.super Landroid/widget/ImageView;
.source "OpGraphLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/anim/OpGraphLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrontCameraAnimateBaseImageView"
.end annotation


# instance fields
.field protected mAnimationArray:Landroid/content/res/TypedArray;

.field protected mAnimator:Landroid/animation/AnimatorSet;

.field protected mLp:Landroid/view/ViewGroup$LayoutParams;

.field protected mOrientationType:I

.field protected mStartAnimationAssets1:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/oneplus/anim/OpGraphLight;


# direct methods
.method public constructor <init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->getOrientation()I

    move-result p1

    iput p1, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mOrientationType:I

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected checkOrientationType()Z
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->getOrientation()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOrientationType / rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpGraphLight"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mOrientationType:I

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detect checkOrientationType() / rotation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / mOrientationType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mOrientationType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mOrientationType:I

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->relaseAnimationList()V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight;->access$800(Lcom/oneplus/anim/OpGraphLight;)V

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight;->postShow()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected getOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p0}, Lcom/oneplus/anim/OpGraphLight;->access$700(Lcom/oneplus/anim/OpGraphLight;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method protected relaseAnimationList()V
    .locals 2

    const-string v0, "OpGraphLight"

    const-string v1, "relaseAnimationList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mAnimationArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected setAnimationList()V
    .locals 4

    const-string v0, "OpGraphLight"

    const-string v1, "setAnimationList (clear & add)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mAnimationArray:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mAnimationArray:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected startAnimation(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->setAnimationList()V

    const-string v0, "OpGraphLight"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
