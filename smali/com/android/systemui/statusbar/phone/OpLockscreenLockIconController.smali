.class public Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;
.super Ljava/lang/Object;
.source "OpLockscreenLockIconController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$IntrinsicSizeDrawable;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDeviceInteractive:Z

.field private mFacelockAnimationSet:Landroid/view/animation/Animation;

.field private mFacelockFailAnimationSet:Landroid/view/animation/Animation;

.field private mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

.field private mFacelockRunningType:I

.field protected mHandler:Landroid/os/Handler;

.field protected mLastDeviceInteractive:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected final mPaddingRetryRunnable:Ljava/lang/Runnable;

.field protected mTrustDrawable:Lcom/oneplus/phone/OpTrustDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockRunningType:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$OpLockscreenLockIconController$CZhdpKDblH5uV1JYAsyTk1evmXo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$OpLockscreenLockIconController$CZhdpKDblH5uV1JYAsyTk1evmXo;-><init>(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mPaddingRetryRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getLastState()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->setRetryIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private getAccessibilityController()Lcom/android/systemui/statusbar/policy/AccessibilityController;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const-string v1, "mAccessibilityController"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    return-object p0
.end method

.method private getFacelockRetryAnimator()Landroid/animation/AnimatorSet;
    .locals 7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$3;-><init>(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)V

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$4;-><init>(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)V

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v2, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$5;-><init>(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const-string v1, "mKeyguardStateController"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method private getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const-string v1, "mKeyguardUpdateMonitor"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private getLastState()I
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const-string v1, "mLastState"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const-string v1, "mLockIcon"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object p0
.end method

.method private getScreenOn()Z
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const-string v1, "mScreenOn"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private getTransientBiometricsError()Z
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const-string v1, "mTransientBiometricsError"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "LockIcon"

    const-string v1, "mPaddingRetryRunnable run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->setRetryIcon()V

    return-void
.end method

.method private opUpdate()V
    .locals 3

    const-class v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "update"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRetryIcon()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->op_facelock_lock_ripple_drawable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockWaitingTap()Z

    move-result v0

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRetryIcon, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockIcon"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->facelock_refresh_fod:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->facelock_lock_icon_fod:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected initOpLockscreenLockIconController()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/phone/OpTrustDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/phone/OpTrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mTrustDrawable:Lcom/oneplus/phone/OpTrustDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$anim;->facelock_lock_blink:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$anim;->facelock_lock_fail_blink:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockFailAnimationSet:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getFacelockRetryAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public synthetic lambda$new$0$OpLockscreenLockIconController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->lambda$new$0()V

    return-void
.end method

.method protected opGetAnimationResForTransition(IIZZZZ)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->shouldShowFacelockIcon()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    const/16 v2, 0xf

    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_1

    sget p0, Lcom/android/systemui/R$drawable;->lockscreen_fingerprint_fp_to_error_state_animation:I

    return p0

    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    if-ne p2, v0, :cond_2

    sget p0, Lcom/android/systemui/R$drawable;->op_trusted_state_to_error_animation:I

    return p0

    :cond_2
    if-ne p1, v0, :cond_3

    if-ne p2, v3, :cond_3

    sget p0, Lcom/android/systemui/R$drawable;->op_error_to_trustedstate_animation:I

    return p0

    :cond_3
    if-ne p1, v0, :cond_4

    if-ne p2, v2, :cond_4

    sget p0, Lcom/android/systemui/R$drawable;->lockscreen_fingerprint_error_state_to_fp_animation:I

    return p0

    :cond_4
    if-ne p1, v2, :cond_5

    if-ne p2, v3, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isTrusted()Z

    move-result p0

    if-nez p0, :cond_5

    sget p0, Lcom/android/systemui/R$drawable;->lockscreen_fingerprint_draw_off_animation:I

    return p0

    :cond_5
    if-ne p2, v2, :cond_8

    if-nez p5, :cond_6

    if-eqz p6, :cond_6

    if-nez p4, :cond_7

    :cond_6
    if-eqz p6, :cond_8

    if-nez p3, :cond_8

    if-eqz p4, :cond_8

    :cond_7
    sget p0, Lcom/android/systemui/R$drawable;->op_lockscreen_fingerprint_draw_on_animation:I

    return p0

    :cond_8
    return v1
.end method

.method protected opGetIconForState(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    sget p1, Lcom/android/systemui/R$drawable;->op_ic_fingerprint:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$drawable;->op_lockscreen_fingerprint_draw_on_animation:I

    goto :goto_0

    :pswitch_1
    sget p1, Lcom/android/systemui/R$drawable;->ic_lock_empty:I

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$drawable;->facelock_alert_fod:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$drawable;->facelock_lock_icon_fod:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$drawable;->facelock_lock_icon_fod:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    sget p1, Lcom/android/systemui/R$drawable;->ic_fingerprint_error:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/android/systemui/R$drawable;->facelock_lock_icon_fod:I

    goto :goto_0

    :cond_3
    sget p1, Lcom/android/systemui/R$drawable;->ic_lock_open_fod:I

    goto :goto_0

    :cond_4
    sget p1, Lcom/android/systemui/R$drawable;->ic_lock_24dp:I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected opGetState()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p0, 0xc

    return p0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p0, 0xb

    return p0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isCameraErrorState()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 p0, 0xd

    return p0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 p0, 0xe

    return p0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getTransientBiometricsError()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p0

    if-nez p0, :cond_6

    const/16 p0, 0xf

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public opSetDeviceInteractive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mDeviceInteractive:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->opUpdate()V

    return-void
.end method

.method public opSetScreenOn(Z)V
    .locals 0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mPaddingRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected opUpdateClickability()V
    .locals 10

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getAccessibilityController()Lcom/android/systemui/statusbar/policy/AccessibilityController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getAccessibilityController()Lcom/android/systemui/statusbar/policy/AccessibilityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v2

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v0, :cond_4

    if-eqz v4, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v6

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isCameraErrorState()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_4

    :cond_5
    move v7, v3

    :goto_4
    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "opUpdateClickability: clickToUnlock= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", canSkipBouncer= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", clickToForceLock= "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", longClickToForceLock= "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isFacelockAvailable= "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isCameraErrorState= "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "LockIcon"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v6, :cond_8

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    move v4, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v4, v2

    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v6

    if-nez v1, :cond_a

    if-nez v0, :cond_a

    if-eqz v4, :cond_9

    goto :goto_7

    :cond_9
    move v0, v3

    goto :goto_8

    :cond_a
    :goto_7
    move v0, v2

    :goto_8
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    if-nez v5, :cond_c

    if-eqz v4, :cond_b

    goto :goto_9

    :cond_b
    move v2, v3

    :cond_c
    :goto_9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLongClickable(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getAccessibilityController()Lcom/android/systemui/statusbar/policy/AccessibilityController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-void
.end method

.method protected opUpdateIconAnimation(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockFailAnimationSet:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    const-string v1, "LockIcon"

    if-nez v0, :cond_8

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "stop recog anim"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/16 v0, 0xc

    if-ne p2, v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getScreenOn()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_3

    const-string p1, "play retry anim"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockRetryAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_4
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_5

    const-string p1, "screen is off, padding show try icon"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mPaddingRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mPaddingRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->shouldPlayFacelockFailAnim()Z

    move-result p2

    if-eqz p2, :cond_a

    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_7

    const-string p2, "play fail anim"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockFailAnimationSet:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_8
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    new-instance v0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$6;-><init>(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_9

    const-string/jumbo p2, "start anim"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public setFacelockRunning(IZ)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockRunningType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFacelockRunning , type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateIcon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockIcon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mFacelockRunningType:I

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->opUpdate()V

    :cond_1
    return-void
.end method
