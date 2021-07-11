.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/oneplus/systemui/statusbar/OpNotificationShelf;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    }
.end annotation


# static fields
.field private static final ICON_ANMATIONS_WHILE_SCROLLING:Z

.field private static final TAG_CONTINUOUS_CLIPPING:I

.field private static final USE_ANIMATIONS_WHEN_OPENING:Z


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field private mAnimationsEnabled:Z

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mClipRect:Landroid/graphics/Rect;

.field private mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mCutoutHeight:I

.field private mFirstElementRoundness:F

.field private mGapHeight:I

.field private mHiddenShelfIconSize:F

.field private mHideBackground:Z

.field private mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mIconAppearTopPadding:I

.field private mIconSize:I

.field private mMaxLayoutHeight:I

.field private mNoAnimationsInThisFrame:Z

.field private mNotGoneIndex:I

.field private mOpenedAmount:F

.field private mPaddingBetweenElements:I

.field private mPaddingBottom:I

.field private mRelativeOffset:I

.field private mScrollFastThreshold:I

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShowNotificationShelf:Z

.field private mStatusBarHeight:I

.field private mTmp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.icon_opening_animations"

    const/4 v1, 0x1

    .line 74
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    const-string v0, "debug.icon_scroll_animations"

    .line 76
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    .line 77
    sget v0, Lcom/android/systemui/R$id;->continuous_clipping_tag:I

    sput v0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 118
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    .line 130
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 69
    sget v0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/NotificationShelf;F)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOpenedAmount(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setHasItemsInStableShelf(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    return p0
.end method

.method private calculateIconTransformationStart(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F
    .locals 1

    .line 673
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    .line 675
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    return p0

    .line 677
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    .line 680
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private clipTransientViews()V
    .locals 4

    const/4 v0, 0x0

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object v1

    .line 458
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v2, :cond_0

    .line 459
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 460
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getFullyClosedTranslation()F
    .locals 1

    .line 927
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    sub-int/2addr v0, p0

    neg-int p0, v0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    return p0
.end method

.method private getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 0

    .line 923
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object p0

    return-object p0
.end method

.method private handleCustomTransformHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;ZLcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V
    .locals 2

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 686
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 687
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-nez p2, :cond_1

    .line 695
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getIntrinsicPadding()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 696
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    .line 697
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_1

    .line 698
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 699
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    .line 700
    iput-boolean p1, p3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    const/high16 v0, -0x80000000

    .line 701
    iput v0, p3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 703
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p2

    .line 704
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 708
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    .line 709
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    sub-float/2addr p0, p2

    float-to-int p0, p0

    iput p0, p3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    :cond_1
    return-void
.end method

.method private initDimens()V
    .locals 4

    .line 172
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    sget v1, Lcom/android/systemui/R$dimen;->notification_icon_appear_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    .line 174
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    .line 175
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_padding_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 176
    sget v1, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 179
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_padding_start:I

    const/16 v3, 0x438

    invoke-static {v1, v2, v3}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 185
    sget v2, Lcom/android/systemui/R$dimen;->notification_shelf_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    sget v1, Lcom/android/systemui/R$dimen;->shelf_icon_container_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 190
    sget v1, Lcom/android/systemui/R$dimen;->scroll_fast_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 191
    sget v1, Lcom/android/systemui/R$bool;->config_showNotificationShelf:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const v1, 0x105024c

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    .line 193
    sget v1, Lcom/android/systemui/R$dimen;->hidden_shelf_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHiddenShelfIconSize:F

    .line 194
    sget v1, Lcom/android/systemui/R$dimen;->qs_notification_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mGapHeight:I

    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 197
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private isTargetClipped(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 4

    .line 779
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 784
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    .line 785
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getContentTranslation()F

    move-result v3

    add-float/2addr v2, v3

    .line 786
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    .line 787
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, p1

    .line 789
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    cmpl-float p0, v2, p1

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private setFirstElementRoundness(F)V
    .locals 1

    .line 466
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 467
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mFirstElementRoundness:F

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setTopRoundness(FZ)Z

    :cond_0
    return-void
.end method

.method private setHasItemsInStableShelf(Z)V
    .locals 1

    .line 1045
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mHasItemsInStableShelf:Z

    if-eq v0, p1, :cond_0

    .line 1046
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mHasItemsInStableShelf:Z

    .line 1047
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    :cond_0
    return-void
.end method

.method private setHideBackground(Z)V
    .locals 1

    .line 940
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eq v0, p1, :cond_0

    .line 941
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    .line 943
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->updateOutline()V

    :cond_0
    return-void
.end method

.method private setIconTransformationAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FFZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 795
    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v3, :cond_0

    return-void

    .line 798
    :cond_0
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 800
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v3

    .line 801
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v4

    .line 802
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 809
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v8

    .line 810
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getRelativeStartPadding(Landroid/view/View;)I

    move-result v9

    .line 811
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    .line 813
    :cond_1
    iget v8, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    move v5, v6

    const/4 v9, 0x0

    .line 817
    :goto_0
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHiddenShelfIconSize:F

    goto :goto_1

    :cond_2
    iget v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconSize:I

    int-to-float v10, v10

    .line 818
    :goto_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v11

    mul-float/2addr v10, v11

    .line 821
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v11

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getContentTranslation()F

    move-result v12

    add-float/2addr v11, v12

    .line 823
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isTransformingIntoShelf()Z

    move-result v12

    if-nez v12, :cond_3

    move v12, v13

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-eqz p4, :cond_4

    if-nez v12, :cond_4

    .line 828
    iget v14, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    int-to-float v14, v14

    add-float/2addr v14, v11

    .line 830
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v15

    sub-float/2addr v14, v15

    .line 829
    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 828
    invoke-static {v14, v6, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    goto :goto_3

    :cond_4
    move v14, v6

    :goto_3
    int-to-float v8, v8

    add-float/2addr v11, v8

    .line 835
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v8

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v8, v15

    .line 836
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v10

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v8, v15

    sub-float/2addr v11, v8

    .line 837
    invoke-static {v11, v14, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    .line 844
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v11

    int-to-float v11, v11

    .line 845
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v14, v15, v14

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v14, v7

    div-float v14, v14, v16

    add-float/2addr v11, v14

    int-to-float v7, v9

    sub-float/2addr v7, v11

    .line 846
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 848
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v9

    .line 846
    invoke-static {v7, v9, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    .line 853
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isShowingIcon()Z

    move-result v9

    xor-int/2addr v9, v13

    if-eqz v9, :cond_5

    div-float v5, v10, v16

    .line 858
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v7

    move v11, v2

    goto :goto_4

    :cond_5
    move v11, v15

    .line 861
    :goto_4
    invoke-static {v5, v10, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    if-eqz v4, :cond_10

    div-float/2addr v5, v10

    .line 864
    iput v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 865
    iput v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_6

    .line 866
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v13

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 867
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDrawingAppearAnimation()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v13

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_8

    .line 869
    iput-boolean v13, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 870
    iput v6, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 872
    :cond_8
    iput v11, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 873
    iput v8, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 874
    iput v7, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    if-eqz v12, :cond_9

    .line 876
    iput v15, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 877
    iput v15, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 878
    iput v15, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 879
    iput v15, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    const/4 v2, 0x0

    .line 880
    iput-boolean v2, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 882
    :cond_9
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v2

    if-nez v2, :cond_b

    .line 883
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v2

    if-nez v2, :cond_b

    .line 884
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz p5, :cond_a

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 885
    :cond_a
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v2

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_c

    .line 886
    :cond_b
    iput-boolean v13, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 888
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v2

    .line 889
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContrastedStaticDrawableColor(I)I

    move-result v2

    const-string v3, "persist.sys.notification.shelf"

    const/4 v5, 0x0

    .line 892
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 893
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setIconTransformationAmount pkg:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " iconColor:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getOriginalIconColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " noIcon:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " shelfColor:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " backgroundColor:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "NotificationShelf"

    .line 893
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-nez v9, :cond_f

    if-eqz v2, :cond_f

    .line 901
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getOriginalIconColor()I

    move-result v1

    .line 909
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez v1, :cond_e

    move v7, v5

    goto :goto_7

    .line 913
    :cond_e
    iget v0, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-static {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v7

    goto :goto_7

    :cond_f
    move v7, v2

    .line 918
    :goto_7
    iput v7, v4, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    :cond_10
    return-void
.end method

.method private setOpenedAmount(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 992
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    .line 993
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    .line 994
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPanelFullWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move p1, v0

    .line 998
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 999
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1000
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    sub-int v0, v1, v0

    .line 1002
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 1003
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 1004
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 1005
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 1002
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 1006
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualLayoutWidth(I)V

    .line 1007
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasOverflow()Z

    move-result v1

    .line 1008
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    if-nez v1, :cond_4

    .line 1012
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getNoOverflowExtraPadding()I

    move-result v1

    goto :goto_1

    .line 1015
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPartialOverflowExtraPadding()I

    move-result v1

    :goto_1
    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1017
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 1018
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    int-to-float v2, v2

    .line 1017
    invoke-static {v1, v2, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    .line 1020
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingEnd(F)V

    int-to-float v0, v0

    .line 1021
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 1022
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    .line 1021
    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 1023
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingStart(F)V

    .line 1024
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOpenedAmount(F)V

    return-void
.end method

.method private updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 5

    .line 490
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 491
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 492
    :goto_0
    sget v4, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 494
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 495
    new-instance v2, Lcom/android/systemui/statusbar/NotificationShelf$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 511
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 512
    new-instance p1, Lcom/android/systemui/statusbar/NotificationShelf$2;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationShelf$2;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 527
    sget p0, Lcom/android/systemui/statusbar/NotificationShelf;->TAG_CONTINUOUS_CLIPPING:I

    invoke-virtual {v0, p0, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 4

    .line 473
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 478
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p1

    .line 479
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 480
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p0

    if-nez p0, :cond_1

    sub-float/2addr v0, v1

    float-to-int p0, v0

    .line 482
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 483
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 485
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private updateIconPositioning(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FFFZZZZ)V
    .locals 11

    move-object v0, p0

    .line 718
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    .line 719
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 723
    :cond_0
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 724
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v6, p2, v6

    if-gtz v6, :cond_3

    .line 725
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->isTargetClipped(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v5

    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    move v6, v8

    :goto_3
    cmpl-float v9, p2, v6

    if-nez v9, :cond_b

    if-nez p6, :cond_5

    if-eqz p7, :cond_6

    :cond_5
    if-nez v3, :cond_6

    move v9, v5

    goto :goto_4

    :cond_6
    move v9, v4

    .line 728
    :goto_4
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v9, :cond_8

    .line 729
    sget-boolean v9, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v9, :cond_7

    cmpl-float v9, p2, v8

    if-nez v9, :cond_7

    if-eqz p5, :cond_7

    goto :goto_5

    :cond_7
    move v9, v4

    goto :goto_6

    :cond_8
    :goto_5
    move v9, v5

    :goto_6
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 732
    sget-boolean v9, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v9, :cond_9

    cmpl-float v9, p2, v8

    if-nez v9, :cond_9

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 733
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v9

    if-nez v9, :cond_9

    move v9, v5

    goto :goto_7

    :cond_9
    move v9, v4

    :goto_7
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    .line 740
    iget v9, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    iget v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBottom:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v10

    sub-float/2addr v9, v10

    .line 741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpl-float v9, v9, v8

    if-lez v9, :cond_a

    move v9, v5

    goto :goto_8

    :cond_a
    move v9, v4

    :goto_8
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    :cond_b
    if-nez v3, :cond_d

    if-nez p6, :cond_c

    if-eqz p7, :cond_d

    .line 744
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v3, :cond_d

    .line 745
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 746
    :cond_c
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 747
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 748
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 750
    :cond_d
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 751
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 753
    :cond_e
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v1, :cond_f

    .line 754
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    .line 757
    :cond_f
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v1

    if-nez v1, :cond_11

    .line 758
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_b

    :cond_10
    move v7, v8

    goto :goto_b

    :cond_11
    if-nez p8, :cond_14

    .line 759
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-nez v1, :cond_14

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    if-eqz v1, :cond_12

    goto :goto_a

    .line 766
    :cond_12
    iget v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    if-nez v1, :cond_13

    move v1, v5

    goto :goto_9

    :cond_13
    move v1, v4

    :goto_9
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    move v7, v6

    goto :goto_b

    :cond_14
    :goto_a
    move v7, p2

    .line 770
    :goto_b
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_16

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v1, :cond_15

    goto :goto_c

    :cond_15
    move v1, v7

    goto :goto_d

    :cond_16
    :goto_c
    move v1, p3

    .line 772
    :goto_d
    iput v1, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 773
    iput v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v1, v6, v7

    if-eqz v1, :cond_17

    move v4, v5

    :cond_17
    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, p4

    move/from16 v5, p8

    .line 774
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationShelf;->setIconTransformationAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FFZZ)V

    return-void
.end method

.method private updateInteractiveness()V
    .locals 0

    .line 1073
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->updateInteractivenessInternal()V

    return-void
.end method

.method private updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I
    .locals 5

    .line 537
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 538
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 539
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 541
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_1

    .line 544
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v2

    :goto_1
    cmpl-float p3, v0, p2

    if-lez p3, :cond_6

    if-nez v2, :cond_6

    .line 546
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 547
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result p3

    if-nez p3, :cond_4

    if-nez v1, :cond_6

    :cond_4
    sub-float p2, v0, p2

    float-to-int p2, p2

    if-eqz v1, :cond_5

    .line 550
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 553
    :cond_5
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    goto :goto_2

    .line 555
    :cond_6
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    :goto_2
    if-eqz v2, :cond_7

    .line 558
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_7
    return v3
.end method

.method private updateRelativeOffset()V
    .locals 3

    .line 969
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 970
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 971
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 972
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    return-void
.end method

.method private updateShelfTransformation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FZZZZ)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v7, p5

    move/from16 v8, p6

    .line 579
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v3

    .line 580
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v3

    .line 583
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    .line 584
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int/2addr v5, v6

    .line 585
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/NotificationShelf;->calculateIconTransformationStart(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    move-result v6

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v10

    const/high16 v11, 0x3f800000    # 1.0f

    .line 588
    invoke-static {v11, v10, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    mul-float/2addr v9, v10

    int-to-float v10, v5

    .line 589
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    add-float/2addr v10, v4

    sub-float/2addr v10, v6

    .line 593
    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    if-eqz v8, :cond_0

    .line 597
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v10, v12

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 598
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight()I

    move-result v10

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v10, v12

    int-to-float v10, v10

    .line 598
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    :cond_0
    int-to-float v10, v5

    add-float/2addr v10, v4

    .line 602
    invoke-direct {v0, v1, v7, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->handleCustomTransformHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;ZLcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V

    .line 607
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v12

    const/4 v13, 0x1

    cmpl-float v10, v10, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-ltz v10, :cond_6

    .line 609
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isUnlockHintRunning()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_1
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 610
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result v10

    if-nez v10, :cond_2

    .line 611
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v10

    if-nez v10, :cond_6

    :cond_2
    cmpg-float v10, v4, v12

    if-gez v10, :cond_5

    if-eqz v3, :cond_3

    .line 613
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hasCustomTransformHeight()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 614
    iget v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    int-to-float v9, v5

    :cond_3
    sub-float v10, v12, v4

    int-to-float v5, v5

    div-float v5, v10, v5

    .line 619
    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 620
    sget-object v13, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    .line 622
    invoke-static {v13, v5, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    sub-float v2, v11, v2

    if-eqz v8, :cond_4

    div-float/2addr v10, v9

    goto :goto_0

    :cond_4
    sub-float v5, v12, v6

    div-float v10, v5, v9

    .line 633
    :goto_0
    invoke-static {v10, v15, v11}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    sub-float v5, v11, v5

    move v13, v14

    goto :goto_1

    :cond_5
    move v2, v11

    move v5, v2

    :goto_1
    sub-float/2addr v12, v4

    div-float/2addr v12, v9

    .line 643
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v11, v4

    move v4, v9

    move v9, v2

    move v2, v5

    goto :goto_2

    :cond_6
    move v4, v9

    move v2, v15

    move v9, v2

    move v11, v9

    :goto_2
    if-eqz v3, :cond_7

    if-eqz v13, :cond_7

    if-nez v7, :cond_7

    .line 650
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    if-eqz v5, :cond_7

    .line 651
    iput-boolean v14, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isLastExpandIcon:Z

    const/high16 v5, -0x80000000

    .line 652
    iput v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->customTransformHeight:I

    .line 656
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isAboveShelf()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v5

    if-nez v5, :cond_9

    if-nez v8, :cond_8

    if-eqz v3, :cond_8

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    move v15, v11

    .line 660
    :cond_9
    :goto_3
    invoke-virtual {v1, v15, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setContentTransformationAmount(FZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v9

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 663
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconPositioning(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FFFZZZZ)V

    return v9
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 168
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 2

    .line 218
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$1;)V

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method public getNotGoneIndex()I
    .locals 0

    .line 1041
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    return p0
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object p0
.end method

.method public hasNoContentHeight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isInteractive()Z
    .locals 0

    .line 1087
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mInteractive:Z

    return p0
.end method

.method public needsClippingToShelf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected needsOutline()Z
    .locals 1

    .line 949
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->needsOutline()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 977
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 984
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 985
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 986
    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCutoutHeight:I

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 155
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 156
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x3

    .line 157
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 203
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 163
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 136
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    .line 137
    sget v0, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipToActualHeight(Z)V

    .line 142
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 143
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsStaticLayout(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFirstInSection(Z)V

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1109
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1110
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_0

    .line 1111
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1112
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 1115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->accessibility_overflow_action:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1116
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 959
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 960
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    .line 963
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 964
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    neg-int p3, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 965
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 1066
    iput p1, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mStatusBarState:I

    .line 1067
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 1132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackgroundColors()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 1095
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    if-nez p1, :cond_0

    .line 1098
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 1061
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 1

    .line 567
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationShelf;->mHasItemsInStableShelf:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 570
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    return-void
.end method

.method public setMaxLayoutHeight(I)V
    .locals 0

    .line 1028
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    return-void
.end method

.method public setMaxShelfEnd(F)V
    .locals 0

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0

    .line 1033
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBottom:I

    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 1

    .line 954
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public updateAppearance()V
    .locals 32

    move-object/from16 v7, p0

    .line 269
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v8

    .line 276
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v9

    const/4 v10, -0x1

    .line 277
    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 284
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v1, v8, v0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-ltz v1, :cond_1

    sub-float v0, v8, v0

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 289
    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v13, v0

    goto :goto_0

    :cond_1
    move v13, v12

    .line 295
    :goto_0
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$200(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    .line 301
    :goto_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getCurrentScrollVelocity()F

    move-result v0

    .line 302
    iget v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_4

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 303
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 304
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandingVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v17, 0x1

    :goto_3
    cmpl-float v0, v0, v12

    if-lez v0, :cond_5

    const/16 v18, 0x1

    goto :goto_4

    :cond_5
    const/16 v18, 0x0

    .line 306
    :goto_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 307
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPanelTracking()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v19, 0x1

    goto :goto_5

    :cond_6
    const/16 v19, 0x0

    .line 308
    :goto_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result v6

    const/4 v0, 0x0

    move-object v5, v0

    move v2, v12

    move/from16 v20, v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    .line 314
    :goto_6
    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    const/16 v10, 0x8

    if-ge v4, v15, :cond_1e

    .line 315
    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v15, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 317
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->needsClippingToShelf()Z

    move-result v22

    if-eqz v22, :cond_1d

    move/from16 v22, v2

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-ne v2, v10, :cond_7

    move v10, v1

    move/from16 v29, v3

    move/from16 v28, v4

    move/from16 v30, v6

    move-object/from16 v23, v9

    move/from16 v27, v13

    move/from16 v26, v22

    goto/16 :goto_15

    .line 322
    :cond_7
    invoke-static {v15}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationZ(Landroid/view/View;)F

    move-result v2

    int-to-float v10, v6

    cmpl-float v2, v2, v10

    if-gtz v2, :cond_9

    .line 323
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v10, 0x1

    :goto_8
    move-object/from16 v23, v9

    if-ne v15, v9, :cond_a

    const/4 v2, 0x1

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    .line 325
    :goto_9
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v9

    if-eqz v2, :cond_b

    .line 326
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isInShelf()Z

    move-result v24

    if-eqz v24, :cond_d

    :cond_b
    if-nez v10, :cond_d

    if-eqz v16, :cond_c

    goto :goto_a

    :cond_c
    move/from16 v24, v2

    .line 329
    iget v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v2, v2

    sub-float v2, v8, v2

    goto :goto_b

    :cond_d
    :goto_a
    move/from16 v24, v2

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v8

    .line 331
    :goto_b
    invoke-direct {v7, v15, v2, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FI)I

    move-result v2

    .line 332
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v25

    move-object/from16 v0, p0

    move v2, v1

    move-object v1, v15

    move/from16 v26, v22

    move/from16 v22, v10

    move v10, v2

    move v2, v13

    move/from16 v27, v13

    move v13, v3

    move/from16 v3, v18

    move/from16 v28, v4

    move/from16 v4, v17

    move/from16 v29, v13

    move-object v13, v5

    move/from16 v5, v19

    move/from16 v30, v6

    move/from16 v6, v24

    .line 335
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->updateShelfTransformation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;FZZZZ)F

    move-result v0

    .line 339
    instance-of v1, v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_19

    .line 340
    move-object v1, v15

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    add-float v20, v20, v0

    .line 342
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getBackgroundColorWithoutTint()I

    move-result v2

    cmpl-float v3, v9, v8

    if-ltz v3, :cond_e

    .line 343
    iget v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    .line 344
    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 345
    invoke-virtual {v7, v14}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setTintColor(I)V

    .line 346
    invoke-virtual {v7, v11, v12}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    goto :goto_c

    :cond_e
    const/4 v4, -0x1

    .line 348
    :cond_f
    iget v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    if-ne v3, v4, :cond_10

    move v12, v0

    goto :goto_d

    :cond_10
    :goto_c
    move v14, v11

    .line 353
    :goto_d
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 354
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    if-nez v3, :cond_12

    :cond_11
    move/from16 v4, v24

    const/4 v3, 0x1

    goto :goto_e

    :cond_12
    move/from16 v4, v24

    const/4 v3, 0x0

    :goto_e
    if-eqz v4, :cond_14

    if-eqz v3, :cond_14

    if-nez v21, :cond_13

    move v3, v2

    goto :goto_f

    :cond_13
    move/from16 v3, v21

    .line 359
    :goto_f
    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    const/4 v5, 0x0

    goto :goto_10

    :cond_14
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 362
    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOverrideTintColor(IF)V

    move v3, v2

    :goto_10
    if-nez v10, :cond_15

    if-nez v22, :cond_16

    .line 365
    :cond_15
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAboveShelf(Z)V

    :cond_16
    const-string v6, "persist.sys.notification.shelf"

    .line 369
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAppearance, rowTranslationY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", shelfStart: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mNotGoneIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", colorTwoBefore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", transitionAmount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", isLastChild: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", colorOfViewBeforeLast: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", inShelfAmount: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NotificationShelf"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-nez v10, :cond_18

    .line 378
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getShelfIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 379
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 383
    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_18

    .line 385
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 386
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentTopRoundness()F

    move-result v1

    move/from16 v26, v1

    goto :goto_11

    :cond_18
    move/from16 v0, v29

    :goto_11
    add-int/lit8 v1, v10, 0x1

    move/from16 v21, v3

    move v11, v14

    move v3, v0

    move v14, v2

    move/from16 v2, v26

    goto :goto_12

    :cond_19
    move v1, v10

    move/from16 v2, v26

    move/from16 v3, v29

    .line 394
    :goto_12
    instance-of v0, v15, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    if-eqz v0, :cond_1c

    .line 395
    move-object v0, v15

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 397
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isFirstInSection()Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eqz v13, :cond_1b

    .line 398
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isLastInSection()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 401
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    sub-float/2addr v4, v5

    .line 402
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    .line 403
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    cmpl-float v9, v5, v6

    if-lez v9, :cond_1a

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 410
    iget v9, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mGapHeight:I

    int-to-float v9, v9

    div-float/2addr v5, v9

    float-to-double v9, v5

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v5, 0x0

    .line 412
    invoke-virtual {v13, v2, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    float-to-int v3, v4

    goto :goto_13

    :cond_1a
    const/4 v5, 0x0

    goto :goto_13

    :cond_1b
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_13
    move-object v13, v0

    goto :goto_14

    :cond_1c
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_14
    move/from16 v0, v25

    goto :goto_16

    :cond_1d
    move v10, v1

    move/from16 v26, v2

    move/from16 v29, v3

    move/from16 v28, v4

    move/from16 v30, v6

    move-object/from16 v23, v9

    move/from16 v27, v13

    :goto_15
    const/4 v6, 0x0

    move-object v13, v5

    const/4 v5, 0x0

    move v1, v10

    move/from16 v2, v26

    move/from16 v3, v29

    :goto_16
    add-int/lit8 v4, v28, 0x1

    move-object v5, v13

    move-object/from16 v9, v23

    move/from16 v13, v27

    move/from16 v6, v30

    const/4 v10, -0x1

    goto/16 :goto_6

    :cond_1e
    move/from16 v26, v2

    move/from16 v29, v3

    const/4 v5, 0x0

    move/from16 v31, v10

    move v10, v1

    move/from16 v1, v31

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->clipTransientViews()V

    .line 422
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-nez v2, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    if-lt v0, v2, :cond_1f

    goto :goto_17

    :cond_1f
    move v0, v5

    goto :goto_18

    :cond_20
    :goto_17
    const/4 v0, 0x1

    .line 424
    :goto_18
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    if-eqz v2, :cond_22

    if-eqz v0, :cond_21

    const/4 v0, 0x4

    goto :goto_19

    :cond_21
    move v0, v5

    .line 425
    :goto_19
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_22
    move/from16 v15, v29

    .line 427
    invoke-virtual {v7, v15}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setBackgroundTop(I)V

    move/from16 v2, v26

    .line 428
    invoke-direct {v7, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->setFirstElementRoundness(F)V

    .line 429
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSpeedBumpIndex(I)V

    .line 430
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 431
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    move v0, v5

    .line 432
    :goto_1a
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 433
    iget-object v2, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 434
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_24

    .line 435
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v1, :cond_23

    goto :goto_1b

    .line 438
    :cond_23
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 439
    invoke-direct {v7, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconClipAmount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 440
    invoke-direct {v7, v2}, Lcom/android/systemui/statusbar/NotificationShelf;->updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_24
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_25
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v20, v0

    if-gez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_1c

    :cond_26
    move v0, v5

    :goto_1c
    if-nez v0, :cond_28

    if-eqz v16, :cond_27

    goto :goto_1d

    :cond_27
    move v14, v5

    goto :goto_1e

    :cond_28
    :goto_1d
    const/4 v14, 0x1

    .line 443
    :goto_1e
    invoke-direct {v7, v14}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 444
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    .line 445
    iput v10, v7, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    :cond_29
    return-void
.end method

.method public updateState(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 7

    .line 223
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 225
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShowNotificationShelf:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 226
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v5

    add-float/2addr v2, v5

    .line 227
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackTranslation()F

    move-result v5

    add-float/2addr v2, v5

    .line 228
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    .line 229
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 230
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v6

    iput v6, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 233
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v6

    .line 233
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 235
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseZHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 240
    iget p1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v5

    sub-float/2addr p1, v5

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCutoutHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr p1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 242
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 243
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$102(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 244
    iput v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 245
    iput v5, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 246
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getSpeedBumpIndex()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 247
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 248
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 249
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v5, -0x1

    if-eq p1, v5, :cond_1

    .line 250
    iget v5, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 252
    :cond_1
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    .line 253
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeExpanded()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isQsCustomizerShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 255
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$302(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    goto :goto_2

    .line 257
    :cond_4
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    const/16 p0, 0x40

    .line 258
    iput p0, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 259
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    :goto_2
    return-void
.end method
