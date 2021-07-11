.class public Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.super Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconAreaController;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# instance fields
.field private mAnimationsEnabled:Z

.field private mAodIconTint:I

.field private mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field protected mCenteredIconArea:Landroid/view/View;

.field private mCenteredIconTint:I

.field private mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mContext:Landroid/content/Context;

.field private final mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mIconHPadding:I

.field private mIconSize:I

.field private mIconTint:I

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field protected mNotificationIconArea:Landroid/view/View;

.field private mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mNotificationScrollLayout:Landroid/view/ViewGroup;

.field final mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShowLowPriority:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mTintArea:Landroid/graphics/Rect;

.field private final mUpdateStatusBarIcons:Ljava/lang/Runnable;

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationListener;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconAreaController;-><init>()V

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 77
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    .line 139
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 140
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 142
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 143
    invoke-interface {p3, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 144
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 145
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 146
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 147
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 148
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 149
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 150
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    invoke-virtual {p7, p2}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationSettingsListener(Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;)V

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadAodColor()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)Landroid/view/ViewGroup;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)Lcom/oneplus/aod/OpAodNotificationIconAreaController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconAreaController;->mAodNotificationIconCtrl:Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    return-object p0
.end method

.method private applyNotificationIconsTint()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 599
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 601
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_1

    .line 604
    :cond_0
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$kEHcYKNlJqRNuom7zI__dD3YiUQ;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$kEHcYKNlJqRNuom7zI__dD3YiUQ;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 609
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 610
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_3

    .line 613
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$DNX7QrLi_n7I734CPybT_ZrNpwI;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$DNX7QrLi_n7I734CPybT_ZrNpwI;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 617
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconColors()V

    return-void
.end method

.method private generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 222
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private synthetic lambda$applyNotificationIconsTint$4(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 604
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method private synthetic lambda$applyNotificationIconsTint$5(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 613
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method private synthetic lambda$updateAodIconColors$6(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 1

    .line 721
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method static synthetic lambda$updateAodNotificationIcons$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getAodIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateCenterIcon$2(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getCenteredIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateShelfIcons$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateStatusBarIcons$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method private reloadAodColor()V
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconTint:I

    return-void
.end method

.method private reloadDimens(Landroid/content/Context;)V
    .locals 1

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x105024c

    .line 228
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    .line 229
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_icon_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    .line 230
    sget p0, Lcom/android/systemui/R$dimen;->shelf_appear_translation:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method private updateAnimations()V
    .locals 5

    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 677
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 678
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 679
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    return-void
.end method

.method private updateAodIconColors()V
    .locals 3

    const/4 v0, 0x0

    .line 716
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 718
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_1

    .line 721
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$PUTDTipRCmrDLS4VQZByqHC4HFA;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$PUTDTipRCmrDLS4VQZByqHC4HFA;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAodIconsVisibility(Z)V
    .locals 0

    .line 749
    sget-boolean p0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    .line 750
    const-class p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "for oneplus style, no updateAodIconsVisibility"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateCenterIcon()V
    .locals 11

    .line 372
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$S6CJ2tXrA2ieNVmUpwBa8v9eeEY;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$S6CJ2tXrA2ieNVmUpwBa8v9eeEY;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method

.method private updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer;",
            "ZZZZZZZZ)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    .line 415
    new-instance v13, Ljava/util/ArrayList;

    iget-object v0, v15, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    .line 416
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    iget-object v0, v15, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/4 v12, 0x0

    move v11, v12

    .line 426
    :goto_0
    iget-object v0, v15, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_3

    .line 427
    iget-object v0, v15, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 428
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    .line 429
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v10

    .line 442
    iget-object v9, v15, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v8, v15, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v7, v15, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    iget-object v6, v15, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v17, v6

    move/from16 v6, p7

    move-object/from16 v18, v7

    move/from16 v7, p8

    move-object/from16 v19, v8

    move/from16 v8, p9

    move-object/from16 v20, v9

    move/from16 v9, p10

    move-object v15, v10

    move/from16 v10, v16

    move/from16 v21, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v19

    move-object/from16 v22, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v17

    .line 443
    invoke-super/range {v0 .. v14}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZZZZLcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p1

    .line 447
    invoke-interface {v0, v15}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v2, v22

    if-eqz v1, :cond_2

    .line 449
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v2, v22

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    move/from16 v21, v11

    move-object v2, v13

    :cond_2
    :goto_1
    add-int/lit8 v11, v21, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object v13, v2

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    move-object v2, v13

    .line 461
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 463
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v12, v3, :cond_b

    move-object/from16 v3, p2

    .line 464
    invoke-virtual {v3, v12}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 465
    instance-of v6, v5, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v6, :cond_4

    goto :goto_6

    .line 468
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 470
    check-cast v5, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 471
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 472
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_7

    .line 473
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 474
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 475
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v8, :cond_5

    move v8, v4

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    if-eqz v8, :cond_9

    .line 485
    invoke-virtual {v0, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_8

    .line 487
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 488
    invoke-virtual {v0, v6, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_8
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_9
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_b
    move-object/from16 v3, p2

    .line 496
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 497
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 498
    invoke-virtual {v0, v7}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 499
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v4, :cond_c

    .line 500
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 503
    :cond_d
    invoke-virtual {v0, v5}, Landroidx/collection/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    const-string v5, "OpAodNotiIconArea"

    if-eqz v16, :cond_f

    .line 505
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_f

    .line 506
    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_e

    const-string v6, "has replacing icons"

    .line 507
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v12, v4

    goto :goto_8

    :cond_f
    const/4 v12, 0x0

    .line 512
    :goto_8
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    .line 514
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v0, :cond_10

    .line 516
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_10
    if-eqz v16, :cond_12

    if-lez v0, :cond_12

    .line 520
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_11

    const-string v0, "has icon to remove"

    .line 521
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move v12, v4

    .line 527
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    move v1, v12

    const/4 v12, 0x0

    .line 528
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v12, v6, :cond_17

    .line 529
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 531
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->removeTransientView(Landroid/view/View;)V

    .line 532
    invoke-virtual {v6}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_16

    move-object/from16 v7, p0

    if-eqz p5, :cond_13

    .line 534
    iget-object v8, v7, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnDismissListener(Ljava/lang/Runnable;)V

    :cond_13
    if-eqz v16, :cond_15

    .line 538
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_14

    const-string v1, "add view"

    .line 539
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move v1, v4

    .line 544
    :cond_15
    invoke-virtual {v3, v6, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_16
    move-object/from16 v7, p0

    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_17
    move-object/from16 v7, p0

    .line 548
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v0, :cond_1b

    .line 552
    invoke-virtual {v3, v12}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 553
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v6, v8, :cond_18

    goto :goto_d

    .line 557
    :cond_18
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 558
    invoke-virtual {v3, v8, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    if-eqz v16, :cond_1a

    .line 561
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_19

    const-string v1, "re-sort icons"

    .line 562
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move v1, v4

    :cond_1a
    :goto_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_1b
    if-eqz v16, :cond_1d

    .line 572
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozingCustom()Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz v1, :cond_1d

    .line 575
    :cond_1c
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAodWindowManager()Lcom/oneplus/aod/OpAodWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 577
    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;

    invoke-direct {v1, v7, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    const/4 v0, 0x0

    .line 590
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    const/4 v0, 0x0

    .line 591
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method private updateShelfIcons()V
    .locals 11

    .line 348
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$afpYK1wAP1i0HTFHOa1jb1wzzAQ;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$afpYK1wAP1i0HTFHOa1jb1wzzAQ;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method

.method private updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 6

    .line 623
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconAreaController;->updateTintForIconInternal(Lcom/android/systemui/statusbar/StatusBarIconView;ILandroid/content/Context;Lcom/android/internal/util/ContrastColorUtil;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public getCenteredNotificationAreaView()Landroid/view/View;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    return-object p0
.end method

.method protected getHeight()I
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result p0

    return p0
.end method

.method public getNotificationInnerAreaView()Landroid/view/View;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    return-object p0
.end method

.method protected inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 157
    sget p0, Lcom/android/systemui/R$layout;->notification_icon_area:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public initAodIcons()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 182
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 184
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$id;->clock_notification_icon_container:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 186
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOnLockScreen(Z)V

    .line 187
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    :cond_2
    return-void
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;)V
    .locals 2

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 166
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 168
    sget v1, Lcom/android/systemui/R$id;->notificationIcons:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    .line 172
    sget v0, Lcom/android/systemui/R$layout;->center_icon_area:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    .line 173
    sget v0, Lcom/android/systemui/R$id;->centeredIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initAodIcons()V

    return-void
.end method

.method public synthetic lambda$applyNotificationIconsTint$4$NotificationIconAreaController(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$applyNotificationIconsTint$4(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method

.method public synthetic lambda$applyNotificationIconsTint$5$NotificationIconAreaController(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$applyNotificationIconsTint$5(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method

.method public synthetic lambda$updateAodIconColors$6$NotificationIconAreaController(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$updateAodIconColors$6(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    if-nez p1, :cond_0

    .line 257
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 259
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 262
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 263
    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 264
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    goto :goto_1

    .line 267
    :cond_1
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 270
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 271
    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 272
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    goto :goto_2

    .line 275
    :cond_3
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    .line 278
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 3

    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 202
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 204
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 206
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 208
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 210
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 211
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 212
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 214
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 216
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 660
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 661
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDozing(ZZJ)V

    return-void
.end method

.method public onFullyHiddenChanged(Z)V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v1, p1

    .line 735
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    .line 736
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    return-void
.end method

.method public onPulseExpansionChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 742
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    const/4 p1, 0x0

    .line 671
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    .line 672
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadAodColor()V

    .line 684
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconColors()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 665
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    .line 666
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    return-void
.end method

.method public setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 654
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsolatedIconLocation(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 1

    .line 195
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    return-void
.end method

.method shouldShouldLowPriorityIcons()Z
    .locals 0

    .line 397
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    return p0
.end method

.method public showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V
    .locals 0

    .line 650
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    return-void
.end method

.method public updateAodNotificationIcons()V
    .locals 11

    .line 384
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$b7MkWJaTAeTosmR_aU3q7JZNLpI;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$b7MkWJaTAeTosmR_aU3q7JZNLpI;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 391
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    .line 384
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method

.method public updateNotificationIcons()V
    .locals 0

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateShelfIcons()V

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateCenterIcon()V

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method

.method public updateStatusBarIcons()V
    .locals 11

    .line 360
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$ujxUr-qwlryo8PHBzga56kRshsA;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$ujxUr-qwlryo8PHBzga56kRshsA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZZ)V

    return-void
.end method
