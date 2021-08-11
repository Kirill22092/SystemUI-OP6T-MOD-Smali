.class public Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;
.super Landroid/widget/FrameLayout;
.source "OpHighlightHintView.java"

# interfaces
.implements Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final OP_DEBUG:Z


# instance fields
.field breathingAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBackgroundColor:I

.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field mChronometerContainer:Landroid/widget/FrameLayout;

.field private mContainer:Landroid/view/ViewGroup;

.field mContentWidth:I

.field private mContext:Landroid/content/Context;

.field private mHint:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mOrientation:I

.field private mShowBreathingEffect:Z

.field private mShowHighlightHint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->OP_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mShowBreathingEffect:Z

    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mShowHighlightHint:Z

    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContentWidth:I

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$layout;->highlight_hint_view_notch:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mBackgroundColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mBackgroundColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mShowHighlightHint:Z

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mShowBreathingEffect:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->OP_DEBUG:Z

    return v0
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private getMaxHighlightHintTextWidth()I
    .locals 6

    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getStatusBarChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getKeyguardChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v4

    if-eqz v4, :cond_3

    iget v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContentWidth:I

    if-eq v5, v4, :cond_4

    :cond_3
    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->measure(II)V

    iput v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContentWidth:I

    :cond_4
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->highlighthint_chronometer_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-double v0, p0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v4

    double-to-int p0, v0

    if-lez v3, :cond_6

    goto :goto_1

    :cond_6
    move v3, p0

    :goto_1
    return v3
.end method

.method private playBreathingAnimation(II)V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;)V

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v4, 0x1

    aput p2, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v1, [I

    aput p2, v1, v3

    aput p1, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$2;

    invoke-direct {p2, p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView$2;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    sget-boolean p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->OP_DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "HighlightHintView"

    const-string p1, "playBreathingAnimation: Start breathing animation"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateHint()V
    .locals 9

    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "op_show_breathing"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mShowBreathingEffect:Z

    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "op_breathing_color_start"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "op_breathing_color_end"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-boolean v4, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->OP_DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "HighlightHintView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHint, mShowBreathingEffect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mShowBreathingEffect:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " breathingColorStart "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " breathingColorEnd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mShowBreathingEffect:Z

    if-eqz v4, :cond_3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->playBreathingAnimation(II)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->breathingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->cancelAnimation()V

    :cond_4
    invoke-virtual {v1}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v2

    iput v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mBackgroundColor:I

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v3

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eq v3, v4, :cond_6

    invoke-virtual {v1}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/android/systemui/R$dimen;->status_bar_clock_size:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mHint:Landroid/widget/TextView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mHint:Landroid/widget/TextView;

    int-to-float v8, v3

    invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v7

    if-eq v7, v4, :cond_8

    invoke-virtual {v1}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->getMaxHighlightHintTextWidth()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_7
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Landroid/app/Notification;->ShowChronometerOnStatusBar()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->highlight_hint_view_chronometer_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x3e8

    if-ne v2, v4, :cond_a

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getStatusBarChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    goto :goto_3

    :cond_a
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getKeyguardChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    int-to-float v2, v3

    invoke-virtual {v0, v6, v2}, Landroid/widget/Chronometer;->setTextSize(IF)V

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_c
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    :cond_d
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_4
    return-void
.end method

.method private updateLayout()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->highlight_hint_width_notch:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->highlight_hint_bg_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->highlight_hint_bg_vertical_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->highlight_hint_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->highlight_hint_icon_size_notch:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->highlight_hint_bg_radius:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mOrientation:I

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->updateLayout()V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->updateLayout()V

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->updateHint()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->highlight_hint_notification_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mIconView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->highlight_hint_notification_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mHint:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->highlight_hint_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    sget v0, Lcom/android/systemui/R$id;->highlight_hint_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mOrientation:I

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->updateLayout()V

    return-void
.end method

.method public onHighlightHintInfoChange()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->updateHint()V

    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mShowHighlightHint:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->updateHint()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->cancelAnimation()V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-le p3, p2, :cond_0

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
