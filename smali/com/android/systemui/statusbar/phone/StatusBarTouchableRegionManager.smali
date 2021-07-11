.class public final Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;
.super Ljava/lang/Object;
.source "StatusBarTouchableRegionManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayCutoutTouchableRegionSize:I

.field private mForceCollapsedUntilLayout:Z

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mIsStatusBarExpanded:Z

.field private mNotificationPanelView:Landroid/view/View;

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

.field private mNotificationShadeWindowView:Landroid/view/View;

.field private final mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mShouldAdjustInsets:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarHeight:I

.field private mTouchableRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mIsStatusBarExpanded:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mShouldAdjustInsets:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    .line 65
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    .line 244
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mContext:Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->initResources()V

    .line 78
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    invoke-interface {p3, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 90
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 91
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    new-instance p3, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$3;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addHeadsUpPhoneListener(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$OnHeadsUpPhoneListenerChange;)V

    .line 113
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    .line 114
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarTouchableRegionManager$zqDZ6-Pei5QdrwLKWlTK2XAXySs;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarTouchableRegionManager$zqDZ6-Pei5QdrwLKWlTK2XAXySs;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setForcePluginOpenListener(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$ForcePluginOpenListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->initResources()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegionAfterLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationPanelView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mIsStatusBarExpanded:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method private initResources()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050115

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mDisplayCutoutTouchableRegionSize:I

    const v1, 0x1050249

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarHeight:I

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    return-void
.end method

.method private updateRegionForNotch(Landroid/graphics/Region;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "TouchableRegionManager"

    const-string p1, "StatusBarWindowView is not attached."

    .line 228
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 231
    :cond_0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 238
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/16 v2, 0x30

    .line 239
    invoke-static {v0, v2, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 240
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mDisplayCutoutTouchableRegionSize:I

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 241
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-void
.end method

.method private updateTouchableRegion()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 185
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 186
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->isHeadsUpGoingAway()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    .line 189
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->getForcePluginOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 190
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mShouldAdjustInsets:Z

    if-ne v1, v0, :cond_3

    return-void

    :cond_3
    if-eqz v1, :cond_4

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 196
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mOnComputeInternalInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 200
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 202
    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mShouldAdjustInsets:Z

    return-void
.end method

.method private updateTouchableRegionAfterLayout()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationPanelView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 210
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    .line 211
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method calculateTouchableRegion()Landroid/graphics/Region;
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTouchableRegion()Landroid/graphics/Region;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Region;->set(IIII)Z

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateRegionForNotch(Landroid/graphics/Region;)V

    .line 167
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "StatusBarTouchableRegionManager state:"

    .line 129
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mTouchableRegion="

    .line 130
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$new$0$StatusBarTouchableRegionManager(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->lambda$new$0(Z)V

    return-void
.end method

.method setPanelExpanded(Z)V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mIsStatusBarExpanded:Z

    if-eq p1, v0, :cond_1

    .line 141
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mIsStatusBarExpanded:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    :cond_1
    return-void
.end method

.method protected setup(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 123
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    .line 124
    sget p1, Lcom/android/systemui/R$id;->notification_panel:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationPanelView:Landroid/view/View;

    return-void
.end method
