.class public abstract Lcom/android/systemui/biometrics/BiometricDialogView;
.super Landroid/widget/LinearLayout;
.source "BiometricDialogView.java"


# instance fields
.field private mAnimatingAway:Z

.field private final mAnimationTranslationOffset:F

.field protected final mBiometricIcon:Landroid/widget/ImageView;

.field private mBundle:Landroid/os/Bundle;

.field protected final mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

.field protected final mDescriptionText:Landroid/widget/TextView;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field protected final mDialog:Landroid/widget/LinearLayout;

.field private final mDialogWidth:F

.field private final mErrorColor:I

.field protected final mErrorText:Landroid/widget/TextView;

.field protected mHandler:Landroid/os/Handler;

.field protected final mLayout:Landroid/view/ViewGroup;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field protected final mNegativeButton:Landroid/widget/Button;

.field protected final mPositiveButton:Landroid/widget/Button;

.field protected mRequireConfirmation:Z

.field private mRestoredState:Landroid/os/Bundle;

.field private final mShowAnimationRunnable:Ljava/lang/Runnable;

.field private mSkipIntro:Z

.field private mState:I

.field protected final mSubtitleText:Landroid/widget/TextView;

.field protected final mTextColor:I

.field protected final mTitleText:Landroid/widget/TextView;

.field protected final mTryAgainButton:Landroid/widget/Button;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mWasForceRemoved:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V
    .locals 4

    .line 150
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    .line 116
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$1;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$2;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    .line 151
    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    .line 152
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 153
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    .line 154
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserManager:Landroid/os/UserManager;

    .line 155
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 156
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->biometric_dialog_animation_translation_offset:I

    .line 157
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimationTranslationOffset:F

    .line 158
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->biometric_dialog_error:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorColor:I

    .line 159
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->biometric_dialog_gray:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTextColor:I

    .line 161
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 163
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialogWidth:F

    .line 166
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 167
    sget v0, Lcom/android/systemui/R$layout;->biometric_dialog:I

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    .line 168
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    new-instance p2, Lcom/android/systemui/biometrics/BiometricDialogView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$3;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 189
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/R$id;->space:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 190
    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->left_space:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 191
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->right_space:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->dialog:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    .line 194
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    .line 195
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    .line 196
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->description:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    .line 197
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->biometric_icon:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    .line 198
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->error:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    .line 199
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->button2:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    .line 200
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->button1:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    .line 201
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->button_try_again:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    .line 203
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    .line 204
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getIconDescriptionResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 207
    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 208
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 210
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$RYcTkb_tfg9qgMigefa-LgT2rmQ;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$RYcTkb_tfg9qgMigefa-LgT2rmQ;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$2B_4hvtZC5hBNK8tMhbM4pc0Qyc;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$2B_4hvtZC5hBNK8tMhbM4pc0Qyc;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$0WbgvKDg-E592VyX7dMGcDXbGTQ;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$0WbgvKDg-E592VyX7dMGcDXbGTQ;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 234
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/WindowManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/biometrics/BiometricDialogView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/BiometricDialogView;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimationTranslationOffset:F

    return p0
.end method

.method private setDismissesDialog(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 327
    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$agcwyvTgMSypTMy6oXZQaR3oBGY;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$agcwyvTgMSypTMy6oXZQaR3oBGY;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public forceRemove()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 379
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    return-void
.end method

.method protected abstract getAuthenticatedAccessibilityResourceId()I
.end method

.method protected abstract getDelayAfterAuthenticatedDurationMs()I
.end method

.method protected abstract getHintStringResourceId()I
.end method

.method protected abstract getIconDescriptionResourceId()I
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 497
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7de

    const/high16 v4, 0x1000000

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 503
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v0, "BiometricDialogView"

    .line 504
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 505
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v6
.end method

.method protected getState()I
    .locals 0

    .line 493
    iget p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    return p0
.end method

.method protected abstract handleResetMessage()V
.end method

.method public synthetic lambda$new$0$BiometricDialogView(Landroid/view/View;)V
    .locals 1

    .line 211
    iget p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onNegativePressed()V

    goto :goto_1

    .line 212
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$new$1$BiometricDialogView()V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onPositivePressed()V

    return-void
.end method

.method public synthetic lambda$new$2$BiometricDialogView(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x4

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 220
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$Qw9PC-sGZ_LOQrNNiplnrZAouws;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogView$Qw9PC-sGZ_LOQrNNiplnrZAouws;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getDelayAfterAuthenticatedDurationMs()I

    move-result p0

    int-to-long v1, p0

    .line 220
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$new$3$BiometricDialogView(Landroid/view/View;)V
    .locals 0

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->handleResetMessage()V

    const/4 p1, 0x1

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    const/4 p1, 0x0

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTryAgainButton(Z)V

    .line 229
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onTryAgainPressed()V

    return-void
.end method

.method public synthetic lambda$setDismissesDialog$4$BiometricDialogView(Landroid/view/View;)V
    .locals 1

    .line 328
    iget p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->shouldGrayAreaDismissDialog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 249
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 253
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->work_challenge_background:I

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 255
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 254
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    sget v1, Lcom/android/systemui/R$color;->biometric_dialog_dim_color:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialogWidth:F

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getHintStringResourceId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getHintStringResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 276
    :cond_2
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 279
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 281
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v2, "subtitle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    .line 286
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 288
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v2, "description"

    .line 293
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 295
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 297
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    const-string v3, "negative_text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->requiresConfirmation()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 304
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 308
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSkipIntro:Z

    if-eqz v0, :cond_6

    goto :goto_4

    .line 317
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimationTranslationOffset:F

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 310
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 321
    :goto_5
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mWasForceRemoved:Z

    .line 322
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSkipIntro:Z

    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onDialogAnimatedIn()V
    .locals 0

    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 444
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTryAgainButton(Z)V

    .line 447
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onErrorShown()V

    return-void
.end method

.method public onHelpReceived(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 430
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string v1, "key_try_again_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string v1, "key_confirm_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    const-string v1, "key_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const-string v1, "key_error_text_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "key_error_text_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-string v1, "key_error_text_is_temporary"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    const-string v0, "key_error_text_color"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public requiresConfirmation()Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRequireConfirmation:Z

    return p0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 3

    .line 477
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRestoredState:Landroid/os/Bundle;

    .line 478
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mTryAgainButton:Landroid/widget/Button;

    const-string v1, "key_try_again_visibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    const-string v1, "key_confirm_visibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, "key_state"

    .line 480
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    .line 481
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const-string v1, "key_error_text_string"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const-string v1, "key_error_text_visibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    const-string v1, "key_error_text_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "key_error_text_is_temporary"

    .line 486
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 487
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setRequireConfirmation(Z)V
    .locals 0

    .line 399
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mRequireConfirmation:Z

    return-void
.end method

.method public setSkipIntro(Z)V
    .locals 0

    .line 387
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mSkipIntro:Z

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 407
    iput p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mUserId:I

    return-void
.end method

.method protected abstract shouldGrayAreaDismissDialog()Z
.end method

.method protected showTemporaryMessage(Ljava/lang/String;)V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 420
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public showTryAgainButton(Z)V
    .locals 0

    return-void
.end method

.method public startDismiss()V
    .locals 2

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mAnimatingAway:Z

    .line 338
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogView$4;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V

    .line 350
    new-instance v1, Lcom/android/systemui/biometrics/BiometricDialogView$5;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogView$5;-><init>(Lcom/android/systemui/biometrics/BiometricDialogView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract updateIcon(II)V
.end method

.method public updateState(I)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p1, v0, :cond_0

    .line 452
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 455
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 457
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mPositiveButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 458
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 459
    iget-object v2, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mNegativeButton:Landroid/widget/Button;

    sget v1, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 466
    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateIcon(II)V

    .line 467
    iput p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView;->mState:I

    return-void
.end method
