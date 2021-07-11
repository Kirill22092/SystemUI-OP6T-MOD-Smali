.class public Lcom/android/systemui/recents/RecentsOnboarding;
.super Ljava/lang/Object;
.source "RecentsOnboarding.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private final mArrowView:Landroid/view/View;

.field private mBlacklistedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDismissView:Landroid/widget/ImageView;

.field private mHasDismissedQuickScrubTip:Z

.field private mHasDismissedSwipeUpTip:Z

.field private final mLayout:Landroid/view/View;

.field private mLayoutAttachedToWindow:Z

.field private mNavBarHeight:I

.field private mNavBarMode:I

.field private mNumAppsLaunchedSinceSwipeUpTipDismiss:I

.field private final mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mOnboardingToastArrowRadius:I

.field private final mOnboardingToastColor:I

.field private mOverviewOpenedCountSinceQuickScrubTipDismiss:I

.field private mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private mOverviewProxyListenerRegistered:Z

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mTaskListenerRegistered:Z

.field private final mTextView:Landroid/widget/TextView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 4

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavBarMode:I

    .line 125
    new-instance v1, Lcom/android/systemui/recents/RecentsOnboarding$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsOnboarding$1;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 213
    new-instance v1, Lcom/android/systemui/recents/RecentsOnboarding$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsOnboarding$2;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 246
    new-instance v1, Lcom/android/systemui/recents/RecentsOnboarding$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsOnboarding$3;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 578
    new-instance v1, Lcom/android/systemui/recents/RecentsOnboarding$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsOnboarding$4;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    .line 288
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 290
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mWindowManager:Landroid/view/WindowManager;

    .line 291
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mBlacklistedPackages:Ljava/util/Set;

    .line 292
    sget v2, Lcom/android/systemui/R$array;->recents_onboarding_blacklisted_packages:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 294
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->recents_onboarding:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    .line 295
    sget v2, Lcom/android/systemui/R$id;->onboarding_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTextView:Landroid/widget/TextView;

    .line 296
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->dismiss:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mDismissView:Landroid/widget/ImageView;

    .line 297
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mArrowView:Landroid/view/View;

    .line 299
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v2, 0x1010435

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 301
    iget p1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOnboardingToastColor:I

    .line 302
    sget p1, Lcom/android/systemui/R$dimen;->recents_onboarding_toast_arrow_corner_radius:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOnboardingToastArrowRadius:I

    .line 305
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    iget-object p2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 306
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mDismissView:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$VU_OZtWyvAx7bVWSUdhKQFeocZE;

    invoke-direct {p2, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$VU_OZtWyvAx7bVWSUdhKQFeocZE;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mArrowView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 322
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, p1

    invoke-static {v1, p1, v0}, Lcom/android/systemui/recents/TriangleShape;->create(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 324
    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    .line 325
    iget v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOnboardingToastColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOnboardingToastArrowRadius:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 328
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mArrowView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsOnboarding;)Ljava/util/Set;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mBlacklistedPackages:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/RecentsOnboarding;)Z
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenSwipeUpOnboarding()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recents/RecentsOnboarding;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewOpenedCountSinceQuickScrubTipDismiss:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/recents/RecentsOnboarding;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewOpenedCountSinceQuickScrubTipDismiss:I

    return p1
.end method

.method static synthetic access$1008(Lcom/android/systemui/recents/RecentsOnboarding;)I
    .locals 2

    .line 80
    iget v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewOpenedCountSinceQuickScrubTipDismiss:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewOpenedCountSinceQuickScrubTipDismiss:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/recents/RecentsOnboarding;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->setHasSeenSwipeUpOnboarding(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->incrementOpenedOverviewFromHomeCount()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->incrementOpenedOverviewCount()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/recents/RecentsOnboarding;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->setHasSeenQuickScrubOnboarding(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/view/View;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayoutAttachedToWindow:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/recents/RecentsOnboarding;)Z
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasDismissedQuickScrubOnboardingOnce()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/recents/RecentsOnboarding;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->setHasDismissedQuickScrubOnboardingOnce(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/RecentsOnboarding;)Z
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenQuickScrubOnboarding()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/RecentsOnboarding;)I
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedOverviewFromHomeCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/RecentsOnboarding;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedSwipeUpTip:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedSwipeUpTip:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/RecentsOnboarding;)I
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getDismissedSwipeUpOnboardingCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/RecentsOnboarding;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNumAppsLaunchedSinceSwipeUpTipDismiss:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/recents/RecentsOnboarding;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNumAppsLaunchedSinceSwipeUpTipDismiss:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/systemui/recents/RecentsOnboarding;)I
    .locals 2

    .line 80
    iget v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNumAppsLaunchedSinceSwipeUpTipDismiss:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNumAppsLaunchedSinceSwipeUpTipDismiss:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/recents/RecentsOnboarding;II)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/RecentsOnboarding;->notifyOnTip(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/recents/RecentsOnboarding;)I
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedOverviewCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/recents/RecentsOnboarding;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedQuickScrubTip:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/recents/RecentsOnboarding;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedQuickScrubTip:Z

    return p1
.end method

.method private getDismissedSwipeUpOnboardingCount()I
    .locals 2

    .line 528
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v0, "DismissedRecentsSwipeUpOnboardingCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getOpenedOverviewCount()I
    .locals 2

    .line 563
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v0, "OverviewOpenedCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getOpenedOverviewFromHomeCount()I
    .locals 2

    .line 547
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v0, "OverviewOpenedFromHomeCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 9

    .line 491
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavBarHeight:I

    neg-int p0, p0

    div-int/lit8 v4, p0, 0x2

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v5, 0x7f6

    const/16 v6, 0x208

    const/4 v7, -0x3

    move-object v0, v8

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 498
    iget p0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p0, p0, 0x10

    iput p0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string p0, "RecentsOnboarding"

    .line 499
    invoke-virtual {v8, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 500
    iput p1, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v8
.end method

.method private hasDismissedQuickScrubOnboardingOnce()Z
    .locals 2

    .line 537
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v0, "HasDismissedRecentsQuickScrubOnboardingOnce"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private hasSeenQuickScrubOnboarding()Z
    .locals 2

    .line 516
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v0, "HasSeenRecentsQuickScrubOnboarding"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private hasSeenSwipeUpOnboarding()Z
    .locals 2

    .line 505
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v0, "HasSeenRecentsSwipeUpOnboarding"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private incrementOpenedOverviewCount()V
    .locals 2

    .line 567
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedOverviewCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 571
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->setOpenedOverviewCount(I)V

    return-void
.end method

.method private incrementOpenedOverviewFromHomeCount()V
    .locals 2

    .line 551
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedOverviewFromHomeCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 555
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->setOpenedOverviewFromHomeCount(I)V

    return-void
.end method

.method private synthetic lambda$hide$1()V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->recents_swipe_up_onboarding:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 309
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedSwipeUpTip:Z

    const/4 p1, 0x0

    .line 310
    iput p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNumAppsLaunchedSinceSwipeUpTipDismiss:I

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getDismissedSwipeUpOnboardingCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->setDismissedSwipeUpOnboardingCount(I)V

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getDismissedSwipeUpOnboardingCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 313
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->setHasSeenSwipeUpOnboarding(Z)V

    .line 315
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->notifyOnTip(II)V

    goto :goto_0

    .line 317
    :cond_1
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->notifyOnTip(II)V

    :goto_0
    return-void
.end method

.method private notifyOnTip(II)V
    .locals 0

    .line 342
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 344
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onTip(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private setDismissedSwipeUpOnboardingCount(I)V
    .locals 1

    .line 532
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v0, "DismissedRecentsSwipeUpOnboardingCount"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setHasDismissedQuickScrubOnboardingOnce(Z)V
    .locals 1

    .line 542
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v0, "HasDismissedRecentsQuickScrubOnboardingOnce"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private setHasSeenQuickScrubOnboarding(Z)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "HasSeenRecentsQuickScrubOnboarding"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenSwipeUpOnboarding()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    :cond_0
    return-void
.end method

.method private setHasSeenSwipeUpOnboarding(Z)V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v1, "HasSeenRecentsSwipeUpOnboarding"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenQuickScrubOnboarding()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    :cond_0
    return-void
.end method

.method private setOpenedOverviewCount(I)V
    .locals 1

    .line 575
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v0, "OverviewOpenedCount"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setOpenedOverviewFromHomeCount(I)V
    .locals 1

    .line 559
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-string v0, "OverviewOpenedFromHomeCount"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private shouldShow()Z
    .locals 1

    .line 441
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    .line 442
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p0

    if-nez p0, :cond_0

    .line 443
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "persist.quickstep.onboarding.enabled"

    .line 441
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "RecentsOnboarding {"

    .line 469
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mTaskListenerRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListenerRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mOverviewProxyListenerRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListenerRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mLayoutAttachedToWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayoutAttachedToWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mHasDismissedSwipeUpTip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedSwipeUpTip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mHasDismissedQuickScrubTip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedQuickScrubTip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mNumAppsLaunchedSinceSwipeUpTipDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNumAppsLaunchedSinceSwipeUpTipDismiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      hasSeenSwipeUpOnboarding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenSwipeUpOnboarding()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      hasSeenQuickScrubOnboarding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenQuickScrubOnboarding()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      getDismissedSwipeUpOnboardingCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getDismissedSwipeUpOnboardingCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      hasDismissedQuickScrubOnboardingOnce: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasDismissedQuickScrubOnboardingOnce()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      getOpenedOverviewCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedOverviewCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      getOpenedOverviewFromHomeCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->getOpenedOverviewFromHomeCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    }"

    .line 485
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hide(Z)V
    .locals 2

    .line 447
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayoutAttachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 449
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 450
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 451
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 452
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 453
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 454
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$qki5o8zqrWEPaWaslagffDePdhg;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$qki5o8zqrWEPaWaslagffDePdhg;-><init>(Lcom/android/systemui/recents/RecentsOnboarding;)V

    .line 455
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 456
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 459
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$hide$1$RecentsOnboarding()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->lambda$hide$1()V

    return-void
.end method

.method public synthetic lambda$new$0$RecentsOnboarding(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 392
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    :cond_0
    return-void
.end method

.method public onConnectedToLauncher()V
    .locals 3

    .line 355
    iget v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenSwipeUpOnboarding()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->hasSeenQuickScrubOnboarding()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 363
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListenerRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 365
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListenerRegistered:Z

    .line 367
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListenerRegistered:Z

    if-nez v0, :cond_3

    .line 368
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 369
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListenerRegistered:Z

    :cond_3
    return-void
.end method

.method public onDisconnectedFromLauncher()V
    .locals 3

    .line 375
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListenerRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 377
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewProxyListenerRegistered:Z

    .line 379
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListenerRegistered:Z

    if-eqz v0, :cond_1

    .line 380
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 381
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTaskListenerRegistered:Z

    .line 384
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedSwipeUpTip:Z

    .line 385
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mHasDismissedQuickScrubTip:Z

    .line 386
    iput v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNumAppsLaunchedSinceSwipeUpTipDismiss:I

    .line 387
    iput v1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mOverviewOpenedCountSinceQuickScrubTipDismiss:I

    const/4 v0, 0x1

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 351
    iput p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavBarMode:I

    return-void
.end method

.method public setNavBarHeight(I)V
    .locals 0

    .line 465
    iput p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mNavBarHeight:I

    return-void
.end method

.method public show(I)Z
    .locals 4

    .line 398
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->shouldShow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mDismissView:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 406
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayoutAttachedToWindow:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 407
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    const/16 v3, 0x100

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 411
    sget v0, Lcom/android/systemui/R$string;->recents_swipe_up_onboarding:I

    if-ne p1, v0, :cond_1

    const/16 p1, 0x51

    goto :goto_1

    .line 415
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    :goto_0
    or-int/lit8 p1, p1, 0x50

    .line 419
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->recents_quick_scrub_onboarding_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 422
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    iget-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 424
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding;->mLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 425
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 426
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    .line 427
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 428
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 429
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 430
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return v2

    :cond_3
    return v1
.end method
