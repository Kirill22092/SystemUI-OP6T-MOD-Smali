.class public abstract Lcom/android/systemui/biometrics/AuthBiometricView;
.super Landroid/widget/LinearLayout;
.source "AuthBiometricView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthBiometricView$Injector;,
        Lcom/android/systemui/biometrics/AuthBiometricView$Callback;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mBackgroundClickListener:Landroid/view/View$OnClickListener;

.field private mBiometricPromptBundle:Landroid/os/Bundle;

.field private mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

.field private mDescriptionView:Landroid/widget/TextView;

.field protected mDialogSizeAnimating:Z

.field private mEffectiveUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIconOriginalY:F

.field protected mIconView:Landroid/widget/ImageView;

.field protected mIndicatorView:Landroid/widget/TextView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

.field private mMediumHeight:I

.field private mMediumWidth:I

.field mNegativeButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

.field mPositiveButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRequireConfirmation:Z

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field private final mResetHelpRunnable:Ljava/lang/Runnable;

.field protected mSavedState:Landroid/os/Bundle;

.field mSize:I

.field protected mState:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private final mTextColorError:I

.field private final mTextColorHint:I

.field private mTitleView:Landroid/widget/TextView;

.field mTryAgainButton:Landroid/widget/Button;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/biometrics/AuthBiometricView$Injector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/biometrics/AuthBiometricView$Injector;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$74Ox-j14CYJ3ddBOXoxeI-wTUBk;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$74Ox-j14CYJ3ddBOXoxeI-wTUBk;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBackgroundClickListener:Landroid/view/View$OnClickListener;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->biometric_dialog_error:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorError:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x1010038

    invoke-static {p2, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorHint:I

    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    iput-object p0, p3, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance p1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$2drOaNVaSONPnaFzaOUoYj-j85g;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$2drOaNVaSONPnaFzaOUoYj-j85g;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$h7WED3KSGw20PO7Z91wwxRtsrCg;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$h7WED3KSGw20PO7Z91wwxRtsrCg;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/AuthBiometricView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/AuthBiometricView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/AuthBiometricView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/AuthBiometricView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private isDeviceCredentialAllowed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    const-string v0, "BiometricPrompt/AuthBiometricView"

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const-string p0, "Ignoring background click after authenticated"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p0, "Ignoring background click during small dialog"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const-string p0, "Ignoring background click during large dialog"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getStateForAfterError()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->handleResetAfterError()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->handleResetAfterHelp()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$onError$8()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method private synthetic lambda$onFinishInflateInternal$10(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->positiveCallback()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->negativeCallback()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onFinishInflateInternal$11(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflateInternal$9(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->negativeCallback()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->positiveCallback()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateSize$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method private synthetic lambda$updateSize$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$updateSize$5(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method static synthetic lambda$updateSize$6(Lcom/android/systemui/biometrics/AuthBiometricView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$updateState$7()V
    .locals 2

    const-string v0, "BiometricPrompt/AuthBiometricView"

    const-string v1, "Sending ACTION_AUTHENTICATED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method private removePendingAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private showTemporaryMessage(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorError:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected getBiometricIconSize()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->biometric_dialog_biometric_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method protected getBiometricPromptBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method protected getBottomSpaceHeight(Landroid/util/DisplayMetrics;)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->op_biometric_dialog_bottom_height_no_fod:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method protected abstract getDelayAfterAuthenticatedDurationMs()I
.end method

.method protected abstract getStateForAfterError()I
.end method

.method protected abstract handleResetAfterError()V
.end method

.method protected abstract handleResetAfterHelp()V
.end method

.method public synthetic lambda$new$0$AuthBiometricView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$AuthBiometricView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$new$1()V

    return-void
.end method

.method public synthetic lambda$new$2$AuthBiometricView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$new$2()V

    return-void
.end method

.method public synthetic lambda$onError$8$AuthBiometricView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onError$8()V

    return-void
.end method

.method public synthetic lambda$onFinishInflateInternal$10$AuthBiometricView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onFinishInflateInternal$10(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflateInternal$11$AuthBiometricView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onFinishInflateInternal$11(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflateInternal$9$AuthBiometricView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onFinishInflateInternal$9(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$updateSize$3$AuthBiometricView(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$updateSize$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$updateSize$4$AuthBiometricView(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$updateSize$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$updateState$7$AuthBiometricView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$updateState$7()V

    return-void
.end method

.method protected needWrap(Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)Lcom/android/systemui/biometrics/AuthBiometricView$Callback;
    .locals 0

    return-object p1
.end method

.method protected negativeCallback()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->isDeviceCredentialAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->startTransitionToCredentialUI()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAttachedToWindowInternal()V

    return-void
.end method

.method onAttachedToWindowInternal()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->isDeviceCredentialAllowed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mEffectiveUserId:I

    invoke-static {v0, v2}, Lcom/android/systemui/biometrics/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_use_password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_use_password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_use_pattern:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_use_pin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    const-string v2, "negative_text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "subtitle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    const-string v3, "description"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    const-string/jumbo v1, "try_agian_visibility"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->showTemporaryMessage(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    :goto_0
    return-void
.end method

.method public onBackKeyClicked()V
    .locals 0

    return-void
.end method

.method protected onBiometricPromptReady()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDialogAnimatedIn()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onBiometricPromptReady()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->showTemporaryMessage(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$IjJmXNzRMZpZA04YZLx9v3gpf7E;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$IjJmXNzRMZpZA04YZLx9v3gpf7E;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getDelayAfterError()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onFinishInflateInternal()V

    return-void
.end method

.method onFinishInflateInternal()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getSubtitleView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getIndicatorView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getPositiveButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getTryAgainButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$qlVsSDplrDVUHj3VMy1YMdB9Z2Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$qlVsSDplrDVUHj3VMy1YMdB9Z2Q;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$qLp3TPGAuJEy2AApoHqHuLR3prY;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$qLp3TPGAuJEy2AApoHqHuLR3prY;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$qQg25Tq_M8BNbfsr-x1MChyC8F0;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$qQg25Tq_M8BNbfsr-x1MChyC8F0;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x64

    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->shouldAdjustForOpUiDesign()V

    return-void
.end method

.method public onHelp(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Help received in size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricPrompt/AuthBiometricView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->showTemporaryMessage(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onLayoutInternal()V

    return-void
.end method

.method onLayoutInternal()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconOriginalY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconOriginalY:F

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->supportsSmallDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    const-string v1, "indicator_string"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    const-string v2, "hint_is_temporary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onHelp(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    const-string v2, "error_is_temporary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAuthenticationFailed(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/systemui/R$id;->biometric_icon:I

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getBiometricIconSize()I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_0
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/systemui/R$id;->button_bar:I

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/systemui/R$id;->divider:I

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/systemui/R$id;->bottom_space:I

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    iput v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumWidth:I

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string/jumbo v1, "try_agian_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "indicator_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const-string v1, "error_is_temporary"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const-string v1, "hint_is_temporary"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    const-string/jumbo v0, "size"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected positiveCallback()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBackgroundClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBiometricPromptBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBiometricPromptBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setCallback(Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->needWrap(Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    return-void
.end method

.method public setEffectiveUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mEffectiveUserId:I

    return-void
.end method

.method public setPanelController(Lcom/android/systemui/biometrics/AuthPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    return-void
.end method

.method public setRequireConfirmation(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setUserId(I)V
    .locals 0

    return-void
.end method

.method protected shouldAdjustForOpUiDesign()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getBiometricIconSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getBiometricIconSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->getBottomSpaceHeight(Landroid/util/DisplayMetrics;)I

    move-result v3

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v1

    add-int/2addr v3, v2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    sub-int/2addr v3, v0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getBottomSpace()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v3, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method startTransitionToCredentialUI()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$Callback;->onAction(I)V

    return-void
.end method

.method protected abstract supportsSmallDialog()Z
.end method

.method updateSize(I)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " New size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthBiometricView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->biometric_dialog_icon_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setY(F)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    float-to-int v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    iget v3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumWidth:I

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    goto/16 :goto_0

    :cond_0
    iget v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    if-ne v4, v2, :cond_2

    if-ne p1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDialogSizeAnimating:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDialogSizeAnimating:Z

    new-array v1, v3, [F

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    aput v4, v1, v0

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconOriginalY:F

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$Wj3pIUGv2yvV3z4ykqi4KllVNJU;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$Wj3pIUGv2yvV3z4ykqi4KllVNJU;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$wnwcoDTpdgktx5JVpsJj4HSA0jk;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$wnwcoDTpdgktx5JVpsJj4HSA0jk;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/biometrics/AuthBiometricView$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumWidth:I

    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumHeight:I

    const/16 v2, 0x96

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    goto/16 :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumWidth:I

    iget v3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mMediumHeight:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/systemui/R$dimen;->biometric_dialog_medium_to_large_translation_offset:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    new-array v5, v3, [F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result v6

    aput v6, v5, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    sub-float/2addr v0, v1

    aput v0, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getMediumToLargeAnimationDurationMs()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$DNZGqOzv_lXEbjrYTngC9OQfLl4;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$DNZGqOzv_lXEbjrYTngC9OQfLl4;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView$2;

    invoke-direct {v1, p0, p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$2;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v3, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getMediumToLargeAnimationDurationMs()I

    move-result v1

    div-int/2addr v1, v3

    int-to-long v5, v1

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$NITDpz2-CemnJIsSGRaKPYHZqW4;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$NITDpz2-CemnJIsSGRaKPYHZqW4;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/biometrics/AuthPanelController;->setUseFullScreen(Z)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthPanelController;->getContainerWidth()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v5}, Lcom/android/systemui/biometrics/AuthPanelController;->getContainerHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {v6}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getMediumToLargeAnimationDurationMs()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mInjector:Lcom/android/systemui/biometrics/AuthBiometricView$Injector;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->getMediumToLargeAnimationDurationMs()I

    move-result p1

    mul-int/2addr p1, v3

    div-int/2addr p1, v4

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown transition from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method updateState(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthBiometricView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v4, 0x4

    if-eq p1, v4, :cond_3

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_authenticated:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$A6c9EVpo4leekZpDntHzHp57vns;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$A6c9EVpo4leekZpDntHzHp57vns;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getDelayAfterAuthenticatedDurationMs()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    sget v3, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorHint:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    sget v2, Lcom/android/systemui/R$string;->biometric_dialog_tap_confirm:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    return-void
.end method
