.class public Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;
.super Landroid/view/View;
.source "OpNavigationHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;
    }
.end annotation


# instance fields
.field private mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

.field private mDisplay:Landroid/view/Display;

.field private mDownX:I

.field private mDownY:I

.field private mOriginTranX:F

.field private mOriginTranY:F

.field private mScreenWidth:I

.field private mStartAnim:Landroid/animation/Animator;

.field private mStartAnimPlayed:Z

.field private mStartAnimTargetTranX:F

.field private mStartAnimTargetTranY:F

.field private mTranslationLimit:I

.field private mTranslationRestore:I

.field private mTranslationReverse:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    const/4 p2, 0x0

    .line 51
    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimPlayed:Z

    const/4 p2, 0x0

    .line 54
    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranX:F

    .line 56
    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranY:F

    .line 71
    sget-object p2, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->NONE:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 77
    sget v0, Lcom/android/systemui/R$dimen;->op_nav_home_handle_translation_limit:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationLimit:I

    .line 78
    sget v0, Lcom/android/systemui/R$dimen;->op_nav_home_handle_anim_reverse:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationReverse:I

    .line 79
    sget v0, Lcom/android/systemui/R$dimen;->op_nav_home_handle_anim_restore:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationRestore:I

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p2

    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mOriginTranX:F

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p2

    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mOriginTranY:F

    .line 85
    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 86
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDisplay:Landroid/view/Display;

    .line 87
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 88
    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDisplay:Landroid/view/Display;

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mScreenWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->reset()V

    return-void
.end method

.method private doEndAnim()V
    .locals 8

    .line 191
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->DOWN:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 192
    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->isOneHandedEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownX:I

    int-to-float v1, v0

    iget v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mScreenWidth:I

    int-to-float v4, v3

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_0

    int-to-float v0, v0

    int-to-float v1, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDisplay:Landroid/view/Display;

    .line 194
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->reset()V

    return-void

    .line 201
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x96

    .line 202
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 206
    sget-object v1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$3;->$SwitchMap$com$oneplus$systemui$statusbar$phone$OpNavigationHandle$AnimDirection:[I

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_5

    if-eq v1, v2, :cond_5

    const/4 v6, 0x3

    if-eq v1, v6, :cond_2

    const/4 v6, 0x4

    if-eq v1, v6, :cond_2

    move-object v1, v3

    goto/16 :goto_5

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v3, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->UP:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne v1, v3, :cond_3

    .line 223
    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationReverse:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationReverse:I

    rsub-int/lit8 v1, v1, 0x0

    .line 224
    :goto_0
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v6, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->UP:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne v3, v6, :cond_4

    .line 225
    iget v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationRestore:I

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationRestore:I

    rsub-int/lit8 v3, v3, 0x0

    :goto_1
    new-array v6, v2, [F

    .line 226
    iget v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranY:F

    aput v7, v6, v5

    int-to-float v1, v1

    add-float/2addr v7, v1

    aput v7, v6, v4

    const-string v1, "translationY"

    invoke-static {p0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v2, v2, [F

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v3, v7

    aput v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v4

    .line 228
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_4

    .line 209
    :cond_5
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v3, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->LEFT:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne v1, v3, :cond_6

    .line 210
    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationReverse:I

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationReverse:I

    rsub-int/lit8 v1, v1, 0x0

    .line 211
    :goto_2
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v6, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->LEFT:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne v3, v6, :cond_7

    .line 212
    iget v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationRestore:I

    goto :goto_3

    :cond_7
    iget v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationRestore:I

    rsub-int/lit8 v3, v3, 0x0

    :goto_3
    new-array v6, v2, [F

    .line 214
    iget v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranX:F

    aput v7, v6, v5

    int-to-float v1, v1

    add-float/2addr v7, v1

    aput v7, v6, v4

    const-string v1, "translationX"

    invoke-static {p0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v2, v2, [F

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v3, v7

    aput v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v4

    .line 216
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    :goto_4
    move-object v1, v3

    move-object v3, v6

    :goto_5
    if-eqz v3, :cond_a

    if-nez v1, :cond_8

    goto :goto_6

    .line 236
    :cond_8
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 237
    sget-object v1, Lcom/android/systemui/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$1;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 261
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    new-instance v2, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$2;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$2;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_6

    .line 283
    :cond_9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_a
    :goto_6
    return-void
.end method

.method private doStartAnim()V
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->DOWN:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 152
    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->isOneHandedEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownX:I

    int-to-float v1, v0

    iget v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mScreenWidth:I

    int-to-float v4, v3

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_0

    int-to-float v0, v0

    int-to-float v1, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDisplay:Landroid/view/Display;

    .line 154
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->reset()V

    return-void

    .line 161
    :cond_1
    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$3;->$SwitchMap$com$oneplus$systemui$statusbar$phone$OpNavigationHandle$AnimDirection:[I

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    goto :goto_2

    .line 173
    :cond_2
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mOriginTranY:F

    .line 174
    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v5, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->UP:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationLimit:I

    rsub-int/lit8 v4, v4, 0x0

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationLimit:I

    :goto_0
    int-to-float v4, v4

    add-float/2addr v0, v4

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranY:F

    new-array v2, v2, [F

    .line 175
    iget v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mOriginTranY:F

    aput v4, v2, v1

    aput v0, v2, v3

    const-string v0, "translationY"

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    goto :goto_2

    .line 164
    :cond_4
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mOriginTranX:F

    .line 165
    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v5, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->LEFT:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationLimit:I

    rsub-int/lit8 v4, v4, 0x0

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationLimit:I

    :goto_1
    int-to-float v4, v4

    add-float/2addr v0, v4

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranX:F

    new-array v2, v2, [F

    .line 166
    iget v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mOriginTranX:F

    aput v4, v2, v1

    aput v0, v2, v3

    const-string v0, "translationX"

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    .line 181
    :goto_2
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    .line 182
    iput-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimPlayed:Z

    const-wide/16 v1, 0x96

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 184
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    sget-object v1, Lcom/android/systemui/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_6
    return-void
.end method

.method private reset()V
    .locals 1

    .line 288
    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->NONE:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimPlayed:Z

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranX:F

    .line 293
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranY:F

    return-void
.end method


# virtual methods
.method public handleTouch(Landroid/view/MotionEvent;)V
    .locals 5

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    goto/16 :goto_4

    .line 105
    :cond_0
    iget p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownX:I

    sub-int p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 106
    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownY:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 109
    iget-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimPlayed:Z

    if-nez v3, :cond_6

    const/16 v3, 0x28

    if-ge p1, v3, :cond_1

    if-ge v2, v3, :cond_1

    goto :goto_3

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v4, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->NONE:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne v3, v4, :cond_5

    if-le p1, v2, :cond_3

    .line 121
    iget p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownX:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_2

    sget-object p1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->LEFT:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->RIGHT:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    :goto_0
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    goto :goto_2

    :cond_3
    if-ge p1, v2, :cond_5

    .line 126
    iget p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownY:I

    sub-int/2addr v1, p1

    if-lez v1, :cond_4

    sget-object p1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->DOWN:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->UP:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    :goto_1
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    .line 131
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->doStartAnim()V

    goto :goto_4

    .line 110
    :cond_6
    :goto_3
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_a

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation played "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimPlayed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", xDiff "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", yDiff "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpNavigationHandle"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 138
    :cond_7
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->NONE:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne p1, v0, :cond_8

    .line 139
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->reset()V

    goto :goto_4

    .line 143
    :cond_8
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->doEndAnim()V

    goto :goto_4

    .line 99
    :cond_9
    sget-object p1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->NONE:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    .line 100
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownX:I

    .line 101
    iput v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownY:I

    :cond_a
    :goto_4
    return-void
.end method
