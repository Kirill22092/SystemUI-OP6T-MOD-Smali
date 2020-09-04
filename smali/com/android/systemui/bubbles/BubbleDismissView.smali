.class public Lcom/android/systemui/bubbles/BubbleDismissView;
.super Landroid/widget/FrameLayout;
.source "BubbleDismissView.java"


# instance fields
.field private mDismissCircle:Landroid/view/View;

.field private mDismissGradient:Landroid/view/View;

.field private mDismissIcon:Landroid/widget/ImageView;

.field private mDismissTarget:Landroid/widget/LinearLayout;

.field private mDismissTargetAlphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mDismissTargetVerticalSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mDismissText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 57
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissGradient:Landroid/view/View;

    .line 59
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    .line 61
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 62
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissGradient:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->pip_dismiss_scrim:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xd8

    .line 65
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 66
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissGradient:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissGradient:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissGradient:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->bubble_dismiss_target:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 72
    sget p1, Lcom/android/systemui/R$id;->bubble_dismiss_icon_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    .line 73
    sget p1, Lcom/android/systemui/R$id;->bubble_dismiss_close_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    .line 74
    sget p1, Lcom/android/systemui/R$id;->bubble_dismiss_text:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissText:Landroid/widget/TextView;

    .line 75
    sget p1, Lcom/android/systemui/R$id;->bubble_dismiss_circle:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    .line 79
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissGradient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 94
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p1, v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x43480000    # 200.0f

    .line 97
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f400000    # 0.75f

    .line 98
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 96
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetAlphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 99
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p1, v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v2, 0x44bb8000    # 1500.0f

    .line 102
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 103
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 101
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetVerticalSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 105
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetAlphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleDismissView$k9Xt4VfLNoRaJ7mqmfivzckWcKM;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleDismissView$k9Xt4VfLNoRaJ7mqmfivzckWcKM;-><init>(Lcom/android/systemui/bubbles/BubbleDismissView;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method


# virtual methods
.method animateEncircleCenterWithX(Z)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 173
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    .line 171
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    .line 172
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    .line 173
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    .line 177
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, v4

    .line 178
    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 179
    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 181
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x96

    .line 182
    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 187
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissGradient:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v4

    .line 188
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_4

    .line 192
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 193
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 194
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 198
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_5

    move v1, v4

    goto :goto_4

    :cond_5
    move v1, v0

    .line 199
    :goto_4
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_6

    move v1, v4

    goto :goto_5

    :cond_6
    move v1, v0

    .line 200
    :goto_5
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_7

    move v0, v4

    .line 201
    :cond_7
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method animateEncirclingCircleDisappearance()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    .line 211
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 212
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 213
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 214
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 215
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method getDismissTarget()Landroid/view/View;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method getDismissTargetCenterY()F
    .locals 2

    .line 220
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public synthetic lambda$new$0$BubbleDismissView(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    const/16 p1, 0x8

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$springOut$1$BubbleDismissView()V
    .locals 1

    .line 152
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissGradient:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method springIn()V
    .locals 6

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 122
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetAlphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 125
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetVerticalSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 129
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissGradient:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissGradient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 139
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method

.method springOut()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetAlphaSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTargetVerticalSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissGradient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleDismissView$OmQt_CNRrZrAdQwJJOztMS1u0Y4;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleDismissView$OmQt_CNRrZrAdQwJJOztMS1u0Y4;-><init>(Lcom/android/systemui/bubbles/BubbleDismissView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 155
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDismissView;->mDismissCircle:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
