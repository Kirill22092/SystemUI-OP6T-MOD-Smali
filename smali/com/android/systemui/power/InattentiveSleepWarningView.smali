.class public Lcom/android/systemui/power/InattentiveSleepWarningView;
.super Landroid/widget/FrameLayout;
.source "InattentiveSleepWarningView.java"


# instance fields
.field private mDismissing:Z

.field private mFadeOutAnimator:Landroid/animation/Animator;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowToken:Landroid/os/IBinder;

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->inattentive_sleep_warning:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    sget-object p1, Lcom/android/systemui/power/-$$Lambda$InattentiveSleepWarningView$TZ7t_oJYmI3UsEhfACXbN6lQYjI;->INSTANCE:Lcom/android/systemui/power/-$$Lambda$InattentiveSleepWarningView$TZ7t_oJYmI3UsEhfACXbN6lQYjI;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x10b0001

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/android/systemui/power/InattentiveSleepWarningView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/InattentiveSleepWarningView$1;-><init>(Lcom/android/systemui/power/InattentiveSleepWarningView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/InattentiveSleepWarningView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/InattentiveSleepWarningView;->removeView()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/power/InattentiveSleepWarningView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mDismissing:Z

    return p1
.end method

.method private getLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d6

    const/16 v4, 0x100

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v0, "InattentiveSleepWarning"

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private removeView()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mDismissing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mDismissing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/power/-$$Lambda$VKaan4AksvR9EA2Slt2S3X5pVOI;

    invoke-direct {v0, p1}, Lcom/android/systemui/power/-$$Lambda$VKaan4AksvR9EA2Slt2S3X5pVOI;-><init>(Landroid/animation/Animator;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/power/InattentiveSleepWarningView;->removeView()V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowToken:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/systemui/power/InattentiveSleepWarningView;->getLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
