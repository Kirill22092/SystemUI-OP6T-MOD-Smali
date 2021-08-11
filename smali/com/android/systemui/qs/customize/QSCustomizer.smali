.class public Lcom/android/systemui/qs/customize/QSCustomizer;
.super Landroid/widget/LinearLayout;
.source "QSCustomizer.java"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/QSCustomizer$EmptyClickListener;
    }
.end annotation


# instance fields
.field private isShown:Z

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private final mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainer:Landroid/view/View;

.field private mCustomizing:Z

.field private mDivider:Landroid/view/View;

.field private mDragLabel:Landroid/widget/TextView;

.field private final mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsShowingNavBackdrop:Z

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOpening:Z

.field private mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUpperIndicatorContainer:Landroid/widget/LinearLayout;

.field private mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    new-instance p7, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getEditTheme()I

    move-result v0

    invoke-direct {p7, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p7, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {p2}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p2, Lcom/android/systemui/qs/customize/QSCustomizer$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    new-instance p2, Lcom/android/systemui/qs/customize/QSCustomizer$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance p2, Lcom/android/systemui/qs/customize/QSCustomizer$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p7, Lcom/android/systemui/R$layout;->qs_customize_panel_content2:I

    invoke-virtual {p2, p7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContainer:Landroid/view/View;

    new-instance p2, Lcom/android/systemui/qs/QSDetailClipper;

    sget p7, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, p7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p7

    invoke-direct {p2, p7}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    sget p2, Lcom/android/systemui/R$id;->op_qs_edit_appbar:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance p7, Lcom/android/systemui/qs/customize/-$$Lambda$QSCustomizer$UrjF3azOC-uGdbn9DsJsA7X1eQo;

    invoke-direct {p7, p0}, Lcom/android/systemui/qs/customize/-$$Lambda$QSCustomizer$UrjF3azOC-uGdbn9DsJsA7X1eQo;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p2, p7}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/android/systemui/R$id;->upperPages:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/QSEditViewPager;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    sget p2, Lcom/android/systemui/R$id;->lowerPages:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/QSEditViewPager;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    sget p2, Lcom/android/systemui/R$id;->upperIndicatorContainer:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperIndicatorContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    sget p7, Lcom/android/systemui/R$id;->upperIndicator:I

    invoke-virtual {p0, p7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p2, p7}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    sget p7, Lcom/android/systemui/R$id;->lowerIndicator:I

    invoke-virtual {p0, p7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p2, p7}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    sget p2, Lcom/android/systemui/R$id;->dragLabel:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    new-instance p7, Lcom/android/systemui/qs/customize/QSEditPageManager;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-direct {p7, p1, v0, v1, p2}, Lcom/android/systemui/qs/customize/QSEditPageManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/QSEditViewPager;Lcom/android/systemui/qs/customize/QSEditViewPager;Landroid/widget/TextView;)V

    iput-object p7, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result p1

    invoke-virtual {p7, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setLayoutRTL(Z)V

    iput-object p6, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {p6, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->setListener(Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    sget p1, Lcom/android/systemui/R$id;->divider:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDivider:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    new-instance p2, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyClickListener;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyClickListener;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyClickListener;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyClickListener;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/QSEditPageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide()V

    return-void
.end method

.method private queryTiles()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->queryTiles(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method private reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qs/QSTileHost;->getDefaultSpecs(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V

    return-void
.end method

.method private save()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method

.method private setCustomizing(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCustomizing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSCustomizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    :cond_0
    return-void
.end method

.method private setTileSpecs()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setTileSpecs(Ljava/util/List;)V

    return-void
.end method

.method private updateNavBackDrop(Landroid/content/res/Configuration;)V
    .locals 5

    sget v0, Lcom/android/systemui/R$id;->nav_bar_background:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v1}, Lcom/android/systemui/recents/OverviewProxyService;->getNavBarMode()I

    move-result v1

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/4 v3, 0x0

    const/16 v4, 0x258

    if-ge v2, v4, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    return-void
.end method

.method private updateNavColors()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->setQsCustomizing(Z)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v2, :cond_2

    const-string v2, "QSCustomizer"

    const-string v3, "hide edit UI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_CLOSED:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {v2, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSDetailClipper;->cancelAnimator()V

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->destroyTiles()V

    :cond_2
    return-void
.end method

.method public hideNoAnimation()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->destroyTiles()V

    return-void
.end method

.method public isCustomizing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    return p0
.end method

.method public isShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return p0
.end method

.method public synthetic lambda$new$0$QSCustomizer(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->recalcEditPage()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->destroyTiles()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateThemeColor()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x10406f7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v1, p0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_RESET:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->reset()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setLayoutRTL(Z)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "qs_customizing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "customizing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mCustomizing "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSCustomizer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizer$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    const-string v0, "qs_customizing"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-void
.end method

.method public setEditLocation(II)V
    .locals 2

    sget v0, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    const/4 p1, 0x1

    aget p1, v0, p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method public show(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    const-string v0, "QSCustomizer"

    const-string/jumbo v1, "show edit UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    const/4 p1, 0x1

    aget v0, v0, p1

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_OPEN:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {p2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    :cond_0
    return-void
.end method

.method public showImmediately()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailClipper;->cancelAnimator()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailClipper;->showBackground()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    :cond_0
    return-void
.end method

.method protected updateThemeColor()V
    .locals 6

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v3

    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    :goto_0
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sget v4, Lcom/android/systemui/R$id;->op_qs_edit_appbar:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContainer:Landroid/view/View;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    sget v4, Lcom/android/systemui/R$id;->toolbar_panel:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
