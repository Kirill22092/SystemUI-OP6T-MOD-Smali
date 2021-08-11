.class public Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;
.super Ljava/lang/Object;
.source "OpAssistNavigationDialog.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static layoutInflater:Landroid/view/LayoutInflater;

.field private static mAnimationViewAssist:Lcom/airbnb/lottie/LottieAnimationView;

.field private static mAnimationViewPow:Lcom/airbnb/lottie/LottieAnimationView;

.field private static mContentTextView:Landroid/widget/TextView;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentPage:I

.field private static mIsShowing:Z

.field private static mLeftButton:Landroid/widget/Button;

.field private static mMainView:Landroid/view/View;

.field private static mOpAssistNavigationDialog:Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;

.field private static mRightButton:Landroid/widget/Button;

.field private static mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private static mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mIsShowing:Z

    sput v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mCurrentPage:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mContext:Landroid/content/Context;

    const-string/jumbo p0, "window"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    sput-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$000()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$100()Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/WindowManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0

    sput p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mCurrentPage:I

    return p0
.end method

.method static synthetic access$308()I
    .locals 2

    sget v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mCurrentPage:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$400(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->updateDialog(I)V

    return-void
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static dismissDialog()V
    .locals 3

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mIsShowing:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mIsShowing:Z

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;
    .locals 3

    const-class v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mOpAssistNavigationDialog:Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;

    if-nez v1, :cond_0

    const-string v1, "OpAssistNavDialog"

    const-string v2, "OpAssistNavigationDialog getInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mOpAssistNavigationDialog:Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;

    const/4 p0, 0x0

    sput p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mCurrentPage:I

    :cond_0
    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mOpAssistNavigationDialog:Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static inflateView()V
    .locals 9

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7d8

    const v7, 0x1000120

    const/4 v8, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    sput-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string v1, "OpAssistNavigationDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->op_assist_navigation_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mMainView:Landroid/view/View;

    const/16 v1, 0x1402

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mMainView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog$1;

    invoke-direct {v1}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/android/systemui/R$id;->animation_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_assist_navigation_anim_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mMainView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mContentTextView:Landroid/widget/TextView;

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mMainView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->left_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mLeftButton:Landroid/widget/Button;

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mMainView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->right_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mRightButton:Landroid/widget/Button;

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mMainView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->animation_view_pow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    sput-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mAnimationViewPow:Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/android/systemui/R$raw;->pow_nav:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mMainView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->animation_view_assist:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    sput-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mAnimationViewAssist:Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/android/systemui/R$raw;->assist_nav:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog$2;

    invoke-direct {v1}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mLeftButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog$3;

    invoke-direct {v1}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static showDialog()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mIsShowing:Z

    if-nez v0, :cond_1

    sget v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mCurrentPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mCurrentPage:I

    :cond_0
    invoke-static {}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->inflateView()V

    sget v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->updateDialog(I)V

    sget-object v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mMainView:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mIsShowing:Z

    :cond_1
    return-void
.end method

.method private static updateDialog(I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mContentTextView:Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/R$string;->long_press_power_navigation_assist_content:I

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isPrimaryOwnerMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mRightButton:Landroid/widget/Button;

    sget v2, Lcom/android/systemui/R$string;->nav_bar_guide_positive:I

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setText(I)V

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mAnimationViewAssist:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mAnimationViewPow:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mAnimationViewPow:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mAnimationViewPow:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_2
    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mAnimationViewAssist:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mContentTextView:Landroid/widget/TextView;

    sget v2, Lcom/android/systemui/R$string;->long_press_power_navigation_power_content:I

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(I)V

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mRightButton:Landroid/widget/Button;

    sget v2, Lcom/android/systemui/R$string;->oneplus_threekey_navigation_next:I

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setText(I)V

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mAnimationViewAssist:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mAnimationViewPow:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mAnimationViewAssist:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mAnimationViewAssist:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_4
    sget-object p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mAnimationViewPow:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_1
    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/assist/ui/OpAssistNavigationDialog;->mIsShowing:Z

    return p0
.end method
