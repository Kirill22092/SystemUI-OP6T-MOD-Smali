.class public Lcom/android/systemui/biometrics/AuthContainerView;
.super Landroid/widget/LinearLayout;
.source "AuthContainerView.java"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthDialog;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;,
        Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;,
        Lcom/android/systemui/biometrics/AuthContainerView$Injector;,
        Lcom/android/systemui/biometrics/AuthContainerView$Builder;,
        Lcom/android/systemui/biometrics/AuthContainerView$Config;
    }
.end annotation


# instance fields
.field final mBackgroundView:Landroid/widget/ImageView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mBiometricScrollView:Landroid/widget/ScrollView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

.field private mContainerState:I

.field mCredentialAttestation:[B

.field private final mCredentialCallback:Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

.field mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mEffectiveUserId:I

.field final mFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field private final mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

.field private final mPanelView:Landroid/view/View;

.field mPendingCallbackReason:Ljava/lang/Integer;

.field private final mTranslationY:F

.field final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView$Config;Lcom/android/systemui/biometrics/AuthContainerView$Injector;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowManager:Landroid/view/WindowManager;

    const-class p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$dimen;->biometric_dialog_animation_translation_offset:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    new-instance p2, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    new-instance p2, Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialCallback:Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    invoke-virtual {v1, p2, p0}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->inflateContainerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    invoke-virtual {v2, v1}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getPanelView(Landroid/widget/FrameLayout;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getPanelController(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/biometrics/AuthPanelController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mBiometricPromptBundle:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/android/systemui/biometrics/Utils;->isBiometricAllowed(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mModalityMask:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    sget p1, Lcom/android/systemui/R$layout;->auth_biometric_fingerprint_view:I

    invoke-virtual {p2, p1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    sget p1, Lcom/android/systemui/R$layout;->auth_biometric_face_view:I

    invoke-virtual {p2, p1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/AuthBiometricFaceView;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported biometric modality: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mModalityMask:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BiometricPrompt/AuthContainerView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iput-object v3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getBiometricScrollView(Landroid/widget/FrameLayout;)Landroid/widget/ScrollView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getBackgroundView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/android/systemui/biometrics/-$$Lambda$AuthContainerView$DgtzYoQDVOv5iHGCr90WcpJUnck;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthContainerView$DgtzYoQDVOv5iHGCr90WcpJUnck;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/AuthContainerView;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/AuthContainerView;)Lcom/android/systemui/biometrics/AuthContainerView$Injector;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/AuthContainerView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/AuthContainerView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView;->addCredentialView(ZZ)V

    return-void
.end method

.method private addBiometricView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-boolean v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequireConfirmation:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setRequireConfirmation(Z)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setPanelController(Lcom/android/systemui/biometrics/AuthPanelController;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mBiometricPromptBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setBiometricPromptBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setCallback(Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setBackgroundView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setUserId(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->setEffectiveUserId(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addCredentialView(ZZ)V
    .locals 6

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mInjector:Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;->getCredentialType(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown credential type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget v2, Lcom/android/systemui/R$layout;->auth_credential_pattern_view:I

    invoke-virtual {v0, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/AuthCredentialView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    goto :goto_1

    :cond_2
    :goto_0
    sget v2, Lcom/android/systemui/R$layout;->auth_credential_password_view:I

    invoke-virtual {v0, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/AuthCredentialView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/AuthCredentialView;->setContainerView(Lcom/android/systemui/biometrics/AuthContainerView;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget v2, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/AuthCredentialView;->setUserId(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-wide v2, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOperationId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/biometrics/AuthCredentialView;->setOperationId(J)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/AuthCredentialView;->setEffectiveUserId(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthCredentialView;->setCredentialType(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialCallback:Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthCredentialView;->setCallback(Lcom/android/systemui/biometrics/AuthCredentialView$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mBiometricPromptBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthCredentialView;->setBiometricPromptBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/biometrics/AuthCredentialView;->setPanelController(Lcom/android/systemui/biometrics/AuthPanelController;Z)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/AuthCredentialView;->setShouldAnimateContents(Z)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private animateAway(ZI)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const-string v1, "BiometricPrompt/AuthContainerView"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo p1, "startDismiss(): waiting for onDialogAnimatedIn"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    return-void

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already dismissing, sendReason: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " reason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    if-eqz p1, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    :goto_0
    new-instance p1, Lcom/android/systemui/biometrics/-$$Lambda$AuthContainerView$vtbE2-wtRO04iHv7UirSn4_zgk0;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthContainerView$vtbE2-wtRO04iHv7UirSn4_zgk0;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$AuthContainerView$hmGjJ8kJosRRIFfZpgTQM0R9XiM;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/biometrics/-$$Lambda$AuthContainerView$hmGjJ8kJosRRIFfZpgTQM0R9XiM;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$animateAway$2()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->removeWindowIfAttached(Z)V

    return-void
.end method

.method private synthetic lambda$animateAway$3(Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->sendEarlyUserCanceled()V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onBackKeyClicked()V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(I)V

    :cond_2
    return p2
.end method

.method private synthetic lambda$onAttachedToWindowInternal$1()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget v4, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private onDialogAnimatedIn()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "BiometricPrompt/AuthContainerView"

    const-string v1, "onDialogAnimatedIn(): mPendingDismissDialog=true, dismissing now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(ZI)V

    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onDialogAnimatedIn()V

    :cond_1
    return-void
.end method

.method private removeWindowIfAttached(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->sendPendingCallbackIfNotNull()V

    :cond_0
    iget p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const-string v0, "BiometricPrompt/AuthContainerView"

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container already STATE_GONE, mSysUiSessionId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSysUiSessionId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing container, mSysUiSessionId: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget v2, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSysUiSessionId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private sendPendingCallbackIfNotNull()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pendingCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sysUISessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSysUiSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthContainerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthDialogCallback;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialAttestation:[B

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/biometrics/AuthDialogCallback;->onDismissed(I[B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    :cond_0
    return-void
.end method


# virtual methods
.method animateAway(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(ZI)V

    return-void
.end method

.method public animateToCredentialUI()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->startTransitionToCredentialUI()V

    return-void
.end method

.method public dismissFromSystemServer()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->removeWindowIfAttached(Z)V

    return-void
.end method

.method public dismissWithoutCallback(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(ZI)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->removeWindowIfAttached(Z)V

    :goto_0
    return-void
.end method

.method public getLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e1

    const v4, 0x1002100

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    or-int/2addr v1, v2

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v0, "BiometricPrompt"

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p1, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    instance-of p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :cond_0
    return-object v6
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOpPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public isAllowDeviceCredentials()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mBiometricPromptBundle:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$animateAway$2$AuthContainerView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$animateAway$2()V

    return-void
.end method

.method public synthetic lambda$animateAway$3$AuthContainerView(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$animateAway$3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$new$0$AuthContainerView(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onAttachedToWindowInternal$1$AuthContainerView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->lambda$onAttachedToWindowInternal$1()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->onAttachedToWindowInternal()V

    return-void
.end method

.method onAttachedToWindowInternal()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mBiometricPromptBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->isBiometricAllowed(Landroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->addBiometricView()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mBiometricPromptBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->addCredentialView(ZZ)V

    :goto_0
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    instance-of v2, v2, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "BiometricPrompt/AuthContainerView"

    const-string v1, "current orientation is landscape, wait to recreate..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-boolean v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSkipIntro:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onBiometricPromptReady()V

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setY(F)V

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->onDialogAnimatedIn()V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$AuthContainerView$9SlioxBspj7c8LZaxiUDurCbgao;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthContainerView$9SlioxBspj7c8LZaxiUDurCbgao;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mBiometricPromptBundle:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/systemui/biometrics/Utils;->getAuthenticators(Landroid/os/Bundle;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAuthenticationFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAuthenticationSucceeded()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onHelp(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onHelp(Ljava/lang/String;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/biometrics/AuthPanelController;->setContainerDimensions(II)V

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    const-string v1, "container_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "biometric_showing"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Lcom/android/systemui/biometrics/AuthCredentialView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "credential_showing"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onSaveState(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(I)V

    return-void
.end method

.method sendEarlyUserCanceled()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthDialogCallback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthDialogCallback;->onSystemEvent(I)V

    return-void
.end method

.method public show(Landroid/view/WindowManager;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->restoreState(Landroid/os/Bundle;)V

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/AuthContainerView;->getLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
