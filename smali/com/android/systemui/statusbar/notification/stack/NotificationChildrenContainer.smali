.class public Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;
.super Landroid/view/ViewGroup;
.source "NotificationChildrenContainer.java"


# static fields
.field private static final ALPHA_FADE_IN:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field static final NUMBER_OF_CHILDREN_WHEN_COLLAPSED:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final NUMBER_OF_CHILDREN_WHEN_SYSTEM_EXPANDED:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mActualHeight:I

.field private final mAttachedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mChildPadding:I

.field private mChildrenExpanded:Z

.field private mClipBottomAmount:I

.field private mCollapsedBottompadding:F

.field private mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mCurrentHeader:Landroid/view/ViewGroup;

.field private mCurrentHeaderTranslation:I

.field private mDividerAlpha:F

.field private mDividerHeight:I

.field private final mDividers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableShadowOnChildNotifications:Z

.field private mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field private mHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderHeight:I

.field private mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

.field private mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field private mHeaderVisibleAmount:F

.field private mHideDividersDuringExpand:Z

.field private final mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

.field private mIsConversation:Z

.field private mIsLowPriority:Z

.field private mNeverAppliedGroupState:Z

.field private mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderMargin:I

.field private mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field private mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field private mNotificatonTopPadding:I

.field private mOverflowNumber:Landroid/widget/TextView;

.field private mRealHeight:I

.field private mShowDividersWhenExpanded:Z

.field private mTranslationForHeader:I

.field private mUntruncatedChildCount:I

.field private mUserLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$1;-><init>()V

    const-wide/16 v1, 0xc8

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 109
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    .line 127
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->initDimens()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method private calculateDesiredHeader()Landroid/view/ViewGroup;
    .locals 1

    .line 955
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    goto :goto_0

    .line 958
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    :goto_0
    return-object p0
.end method

.method private getIntrinsicHeight(F)I
    .locals 11

    .line 510
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result p0

    return p0

    .line 513
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v1

    .line 515
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 518
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 519
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 521
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_1
    if-ge v7, v1, :cond_8

    int-to-float v9, v8

    cmpl-float v9, v9, p1

    if-ltz v9, :cond_2

    goto :goto_6

    :cond_2
    if-nez v5, :cond_5

    .line 527
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v9, :cond_3

    int-to-float v0, v0

    .line 528
    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v10, v10

    invoke-static {v9, v10, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v0, v9

    float-to-int v0, v0

    goto :goto_5

    :cond_3
    if-eqz v4, :cond_4

    .line 531
    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    goto :goto_2

    :cond_4
    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    :goto_2
    add-int/2addr v0, v9

    goto :goto_5

    .line 534
    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v5, :cond_6

    int-to-float v0, v0

    .line 535
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-static {v3, v5, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    add-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    .line 541
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v5, v9

    goto :goto_3

    :cond_7
    move v5, v6

    :goto_3
    add-int/2addr v0, v5

    :goto_4
    move v5, v6

    .line 546
    :goto_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 547
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v0, v9

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 550
    :cond_8
    :goto_6
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz p1, :cond_9

    int-to-float p1, v0

    .line 551
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    invoke-static {p0, v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    :goto_7
    add-float/2addr p1, p0

    float-to-int v0, p1

    goto :goto_8

    :cond_9
    if-nez v4, :cond_a

    int-to-float p1, v0

    .line 554
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    goto :goto_7

    :cond_a
    :goto_8
    return v0
.end method

.method private getMinHeight(IZ)I
    .locals 1

    .line 1126
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IZI)I

    move-result p0

    return p0
.end method

.method private getMinHeight(IZI)I
    .locals 5

    if-nez p2, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1139
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result p0

    return p0

    .line 1141
    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    add-int/2addr p2, p3

    .line 1144
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_3

    if-lt v3, p1, :cond_1

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    .line 1150
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    add-int/2addr p2, v4

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1154
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1155
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    add-int/2addr p2, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    int-to-float p1, p2

    .line 1158
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getVisibleChildrenExpandHeight()I
    .locals 8

    .line 1086
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1089
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    .line 1090
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_2

    if-lt v5, v3, :cond_0

    goto :goto_2

    .line 1095
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1096
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1097
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v6

    goto :goto_1

    .line 1098
    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result v6

    :goto_1
    int-to-float v6, v6

    int-to-float v0, v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v0
.end method

.method private getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne p1, v0, :cond_0

    .line 996
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0

    .line 998
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    return-object p0
.end method

.method private inflateDivider()Landroid/view/View;
    .locals 3

    .line 440
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->notification_children_divider:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private initDimens()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    sget v1, Lcom/android/systemui/R$dimen;->notification_children_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 135
    sget v1, Lcom/android/systemui/R$dimen;->notification_children_container_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 137
    sget v1, Lcom/android/systemui/R$dimen;->notification_divider_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerAlpha:F

    .line 138
    sget v1, Lcom/android/systemui/R$dimen;->notification_children_container_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 140
    sget v1, Lcom/android/systemui/R$dimen;->notification_children_container_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    .line 142
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderHeight:I

    const v1, 0x10501c1

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    .line 145
    sget v2, Lcom/android/systemui/R$bool;->config_enableShadowOnChildNotifications:I

    .line 146
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mEnableShadowOnChildNotifications:Z

    .line 147
    sget v2, Lcom/android/systemui/R$bool;->config_showDividersWhenGroupNotificationExpanded:I

    .line 148
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mShowDividersWhenExpanded:Z

    .line 149
    sget v2, Lcom/android/systemui/R$bool;->config_hideDividersDuringExpand:I

    .line 150
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHideDividersDuringExpand:Z

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mTranslationForHeader:I

    .line 154
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->initDimens()V

    return-void
.end method

.method private synthetic lambda$updateHeaderVisibility$0()V
    .locals 1

    const/4 v0, 0x0

    .line 911
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    return-void
.end method

.method private recreateLowPriorityHeader(Landroid/app/Notification$Builder;Z)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 363
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v1, :cond_5

    if-nez p1, :cond_0

    .line 365
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 366
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 365
    invoke-static {p1, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    :cond_0
    const/4 v0, 0x1

    .line 368
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-nez v0, :cond_2

    .line 370
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/NotificationHeaderView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    const v0, 0x102029c

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 375
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p1, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 380
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 381
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 385
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 386
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    if-eqz v0, :cond_4

    .line 387
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    if-eqz p2, :cond_3

    .line 390
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->applyConversationSkin()V

    goto :goto_1

    .line 392
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->clearConversationSkin()V

    .line 395
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    goto :goto_2

    .line 397
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 398
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 399
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    :goto_2
    return-void
.end method

.method private resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p2, :cond_1

    .line 944
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    const/4 v0, 0x4

    .line 945
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-ne p1, p2, :cond_2

    .line 947
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_2

    .line 948
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 949
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private startChildAlphaAnimations(Z)V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sub-float/2addr v0, p1

    .line 966
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    goto :goto_2

    .line 971
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 972
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 973
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 974
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 975
    iput p1, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 976
    sget-object v5, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    mul-int/lit8 v6, v2, 0x32

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 977
    sget-object v5, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private updateChildrenClipping()V
    .locals 9

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->hasExpandingChild()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 764
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_7

    .line 766
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 767
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    goto :goto_5

    .line 770
    :cond_1
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    .line 771
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    int-to-float v7, v1

    cmpl-float v5, v5, v7

    const/4 v8, 0x1

    if-lez v5, :cond_2

    move v5, v2

    move v6, v5

    goto :goto_2

    :cond_2
    cmpl-float v5, v6, v7

    if-lez v5, :cond_3

    sub-float/2addr v6, v7

    float-to-int v5, v6

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    move v6, v8

    .line 780
    :goto_2
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    if-eq v6, v8, :cond_6

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_4

    :cond_5
    const/4 v6, 0x4

    .line 782
    :goto_4
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 785
    :cond_6
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipBottomAmount(I)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private updateExpansionStates()V
    .locals 5

    .line 485
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 491
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 492
    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private updateHeaderTouchability()V
    .locals 2

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_2

    .line 1206
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/NotificationHeaderView;->setAcceptAllTouches(Z)V

    :cond_2
    return-void
.end method

.method private updateHeaderTransformation()V
    .locals 3

    .line 983
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v0

    .line 985
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 987
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    .line 988
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    :cond_0
    return-void
.end method

.method private updateHeaderVisibility(Z)V
    .locals 7

    .line 897
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 898
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 906
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 907
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 908
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v4

    .line 909
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v5

    .line 910
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 911
    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationChildrenContainer$yaCA55rJjaS5fwWl4gZlw69MJ2w;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationChildrenContainer$yaCA55rJjaS5fwWl4gZlw69MJ2w;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;)V

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 912
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne v1, v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->startChildAlphaAnimations(Z)V

    goto :goto_1

    :cond_2
    move p1, v3

    :cond_3
    :goto_1
    if-nez p1, :cond_6

    if-eqz v1, :cond_4

    .line 919
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 920
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    if-eqz v0, :cond_6

    .line 925
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 927
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    :cond_5
    const/4 p1, 0x4

    .line 929
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 933
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 934
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 936
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 1

    if-gez p2, :cond_0

    .line 266
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 269
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 273
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object v0

    .line 277
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {p0, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x0

    const/4 p2, 0x0

    .line 280
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setContentTransformationAmount(FZ)V

    .line 282
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->cancelAnimations(Landroid/view/View;)V

    .line 285
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->cancelAppearDrawing()V

    :cond_2
    return-void
.end method

.method public applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    move v2, v1

    .line 466
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 467
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 468
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eq v3, v4, :cond_2

    .line 470
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 471
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 472
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v2, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_1

    .line 475
    :cond_1
    invoke-virtual {p2, p3, v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;Z)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateExpansionStates()V

    return v2
.end method

.method public applyState()V
    .locals 13

    .line 719
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 720
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 722
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 725
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mShowDividersWhenExpanded:Z

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 727
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHideDividersDuringExpand:Z

    if-nez v4, :cond_4

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v6

    :goto_1
    move v7, v6

    :goto_2
    if-ge v7, v0, :cond_7

    .line 730
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 731
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v9

    .line 732
    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 735
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 736
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 737
    iget v11, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v12, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 738
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v11, :cond_5

    iget v11, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    cmpl-float v11, v11, v3

    if-eqz v11, :cond_5

    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerAlpha:F

    goto :goto_3

    :cond_5
    move v11, v3

    .line 739
    :goto_3
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v12

    if-nez v12, :cond_6

    iget v9, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    cmpl-float v12, v9, v3

    if-eqz v12, :cond_6

    const/high16 v11, 0x3f000000    # 0.5f

    .line 741
    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 740
    invoke-static {v3, v11, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    :cond_6
    xor-int/lit8 v9, v4, 0x1

    .line 743
    iput-boolean v9, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 744
    iput v11, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 745
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 747
    invoke-virtual {v8, v3, v3, v6, v6}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 749
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v0, :cond_8

    .line 750
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 751
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 753
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v0, :cond_9

    .line 754
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 756
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    return-void
.end method

.method public getAttachedChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    return-object p0
.end method

.method public getCollapsedHeight()I
    .locals 2

    const/4 v0, 0x1

    .line 1110
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result p0

    return p0
.end method

.method public getCollapsedHeightWithoutHeader()I
    .locals 2

    const/4 v0, 0x1

    .line 1115
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IZI)I

    move-result p0

    return p0
.end method

.method public getCurrentHeaderView()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 892
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getGroupExpandFraction()F
    .locals 2

    .line 1077
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    move-result v0

    goto :goto_0

    .line 1078
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getVisibleChildrenExpandHeight()I

    move-result v0

    .line 1079
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v1

    .line 1080
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mActualHeight:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1082
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getHeaderView()Landroid/view/NotificationHeaderView;
    .locals 0

    .line 883
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object p0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 1

    .line 1285
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1288
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v0

    int-to-float v0, v0

    .line 502
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getIntrinsicHeight(F)I

    move-result p0

    return p0
.end method

.method public getLowPriorityHeaderView()Landroid/view/NotificationHeaderView;
    .locals 0

    .line 887
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    return-object p0
.end method

.method getMaxAllowedVisibleChildren()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 699
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result p0

    return p0
.end method

.method getMaxAllowedVisibleChildren(Z)I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_1

    .line 704
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p0, 0x8

    return p0

    .line 708
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 709
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 710
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpState()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canShowHeadsUp()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x5

    return p0
.end method

.method public getMaxContentHeight()I
    .locals 7

    .line 1019
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 1020
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result p0

    return p0

    .line 1023
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v0, v2

    .line 1026
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    const/16 v5, 0x8

    if-lt v4, v5, :cond_1

    goto :goto_2

    .line 1031
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1032
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1033
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v5

    goto :goto_1

    .line 1034
    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result v5

    :goto_1
    int-to-float v5, v5

    int-to-float v0, v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-lez v4, :cond_4

    .line 1039
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    mul-int/2addr v4, p0

    add-int/2addr v0, v4

    :cond_4
    return v0
.end method

.method public getMinHeight()I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1106
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result p0

    return p0
.end method

.method public getNotificationChildCount()I
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPositionInLinearLayout(Landroid/view/View;)I
    .locals 6

    .line 1216
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 1219
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1220
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1221
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    .line 1223
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v0, v5

    :cond_1
    if-ne v3, p1, :cond_2

    return v0

    :cond_2
    if-eqz v4, :cond_3

    .line 1229
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 6

    .line 846
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 848
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 849
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    .line 850
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    .line 851
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVisibleHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    .line 1268
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 1269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    :cond_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUserLocked()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1293
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    return p0
.end method

.method public synthetic lambda$updateHeaderVisibility$0$NotificationChildrenContainer()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->lambda$updateHeaderVisibility$0()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 435
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    return-void
.end method

.method public onExpansionChanged()V
    .locals 1

    .line 1276
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v0, :cond_1

    .line 1277
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_0

    .line 1278
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 1280
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 162
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 165
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 166
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p5

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 169
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    goto :goto_1

    :cond_1
    move p3, p2

    :goto_1
    if-eqz p3, :cond_2

    move p1, p2

    goto :goto_2

    .line 170
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    .line 171
    :goto_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    .line 172
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p4, p1, p2, p3, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 174
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_4

    .line 175
    invoke-virtual {p1}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result p3

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 176
    invoke-virtual {p4}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result p4

    .line 175
    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    .line 178
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_5

    .line 180
    invoke-virtual {p1}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result p3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 181
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result p0

    .line 179
    invoke-virtual {p1, p2, p2, p3, p0}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 187
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/high16 v7, -0x80000000

    if-ne v2, v7, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 190
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    if-nez v6, :cond_3

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v6, p2

    goto :goto_3

    .line 193
    :cond_3
    :goto_2
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 195
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 196
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v10, :cond_4

    .line 197
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v10, v7, v6}, Landroid/widget/TextView;->measure(II)V

    .line 200
    :cond_4
    iget v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 201
    iget v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v10, v11

    .line 202
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 203
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/16 v12, 0x8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 204
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v13

    if-le v11, v13, :cond_5

    sub-int/2addr v13, v5

    goto :goto_4

    :cond_5
    const/4 v13, -0x1

    :goto_4
    const/4 v14, 0x0

    :goto_5
    if-ge v14, v11, :cond_9

    .line 207
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-ne v14, v13, :cond_6

    move/from16 v16, v5

    goto :goto_6

    :cond_6
    const/16 v16, 0x0

    :goto_6
    if-eqz v16, :cond_7

    .line 211
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    .line 212
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    .line 211
    :goto_7
    invoke-virtual {v15, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSingleLineWidthIndention(I)V

    .line 213
    invoke-virtual {v15, v1, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 215
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 216
    invoke-virtual {v4, v1, v7}, Landroid/view/View;->measure(II)V

    .line 217
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-eq v4, v12, :cond_8

    .line 218
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iget v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v4, v15

    add-int/2addr v10, v4

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 221
    :cond_9
    iput v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mRealHeight:I

    if-eqz v2, :cond_a

    .line 223
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 226
    :cond_a
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 227
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v4, :cond_b

    .line 228
    invoke-virtual {v4, v1, v2}, Landroid/view/NotificationHeaderView;->measure(II)V

    .line 230
    :cond_b
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v2, :cond_c

    .line 231
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 232
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3, v1, v2}, Landroid/view/NotificationHeaderView;->measure(II)V

    .line 235
    :cond_c
    invoke-virtual {v0, v8, v10}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNotificationUpdated()V
    .locals 2

    .line 1211
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1212
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationColor()I

    move-result p0

    .line 1211
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->setOverflowNumberColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public pointInView(FFF)Z
    .locals 2

    neg-float v0, p3

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 245
    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mRealHeight:I

    int-to-float p0, p0

    add-float/2addr p0, p3

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public prepareExpansionChanged()V
    .locals 0

    return-void
.end method

.method public reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 1167
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1168
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1169
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 1171
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz p2, :cond_1

    .line 1172
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1173
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 1175
    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsConversation:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;Z)V

    .line 1176
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->initDimens()V

    const/4 p1, 0x0

    .line 1177
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 1178
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 1179
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1180
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object p2

    .line 1182
    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1183
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1185
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1186
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 1187
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 1188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    return-void
.end method

.method public recreateNotificationHeader(Landroid/view/View$OnClickListener;Z)V
    .locals 4

    .line 319
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 320
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsConversation:Z

    .line 321
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 322
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 323
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 322
    invoke-static {v0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makeNotificationHeader()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 326
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationHeaderView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const v1, 0x102029c

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 336
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    if-eqz v1, :cond_3

    .line 342
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    if-eqz p2, :cond_2

    .line 345
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->applyConversationSkin()V

    goto :goto_1

    .line 347
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->clearConversationSkin()V

    .line 350
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;Z)V

    .line 351
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    return-void
.end method

.method public removeNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 295
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 296
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 297
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 305
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 306
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->restoreNotificationHeader(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_0
    return-void
.end method

.method public setActualHeight(I)V
    .locals 9

    .line 1045
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v0, :cond_0

    return-void

    .line 1048
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mActualHeight:I

    .line 1049
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result p1

    .line 1050
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    .line 1051
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderTransformation()V

    const/4 v1, 0x1

    .line 1052
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v2

    .line 1053
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    .line 1055
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 1058
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    :goto_1
    int-to-float v7, v7

    goto :goto_2

    .line 1059
    :cond_1
    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1060
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v7

    goto :goto_1

    .line 1062
    :cond_2
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    goto :goto_1

    :goto_2
    if-ge v5, v2, :cond_3

    .line 1066
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v8, v8

    .line 1068
    invoke-static {v8, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setActualHeight(IZ)V

    goto :goto_3

    :cond_3
    float-to-int v7, v7

    .line 1071
    invoke-virtual {v6, v7, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setActualHeight(IZ)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setChildrenExpanded(Z)V
    .locals 4

    .line 860
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 861
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateExpansionStates()V

    .line 862
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->setExpanded(Z)V

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 867
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 868
    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 870
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderTouchability()V

    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    .line 1252
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    .line 1253
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 874
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 875
    new-instance p1, Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    return-void
.end method

.method public setCurrentBottomRoundness(F)V
    .locals 5

    .line 1298
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 1299
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1300
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1304
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundness(FZ)Z

    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 1

    .line 1310
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 1311
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mTranslationForHeader:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 1

    .line 1257
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    .line 1258
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1259
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsConversation:Z

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;Z)V

    const/4 p1, 0x0

    .line 1260
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1262
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz p1, :cond_1

    .line 1263
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    :cond_1
    return-void
.end method

.method public setRecentlyAudiblyAlerted(Z)V
    .locals 1

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    .line 1332
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_1

    .line 1333
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setRecentlyAudiblyAlerted(Z)V

    :cond_1
    return-void
.end method

.method public setShelfIconVisible(Z)V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1237
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1239
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1242
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_1

    .line 1244
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1246
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    :cond_1
    return-void
.end method

.method public setUntruncatedChildCount(I)V
    .locals 0

    .line 255
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUntruncatedChildCount:I

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    return-void
.end method

.method public setUserLocked(Z)V
    .locals 5

    .line 1192
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1194
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1196
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1198
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_1

    .line 1199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1201
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateHeaderTouchability()V

    return-void
.end method

.method public showAppOpsIcons(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1323
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p0, :cond_1

    .line 1324
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->showAppOpsIcons(Landroid/util/ArraySet;)V

    :cond_1
    return-void
.end method

.method public showingAsLowPriority()Z
    .locals 1

    .line 1163
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startAnimationToState(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 13

    .line 801
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 802
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 803
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v2

    .line 804
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mShowDividersWhenExpanded:Z

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 806
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHideDividersDuringExpand:Z

    if-nez v3, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_0
    sub-int/2addr v0, v4

    :goto_1
    const/4 v6, 0x0

    if-ltz v0, :cond_6

    .line 809
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 810
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v8

    .line 811
    invoke-virtual {v8, v7, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 814
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 815
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 816
    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 817
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    const/high16 v11, 0x3f000000    # 0.5f

    if-eqz v10, :cond_4

    iget v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    cmpl-float v10, v10, v6

    if-eqz v10, :cond_4

    move v10, v11

    goto :goto_2

    :cond_4
    move v10, v6

    .line 818
    :goto_2
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v12, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v12

    if-nez v12, :cond_5

    iget v8, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    cmpl-float v12, v8, v6

    if-eqz v12, :cond_5

    .line 820
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 819
    invoke-static {v6, v11, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    :cond_5
    xor-int/lit8 v8, v3, 0x1

    .line 822
    iput-boolean v8, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 823
    iput v10, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 824
    invoke-virtual {v1, v9, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 826
    invoke-virtual {v7, v6, v6, v5, v5}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setFakeShadowIntensity(FFII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 828
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 829
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    if-eqz v1, :cond_7

    .line 830
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 831
    iput v6, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 832
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 833
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 834
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 836
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 838
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_9

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 841
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->updateChildrenHeaderAppearance()V

    return-void
.end method

.method public updateGroupOverflow()V
    .locals 4

    const/4 v0, 0x1

    .line 408
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v1

    .line 409
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUntruncatedChildCount:I

    if-le v2, v1, :cond_0

    sub-int/2addr v2, v1

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2, p0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->bindOverflowNumber(Landroid/widget/TextView;ILandroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-nez v1, :cond_2

    .line 413
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 414
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 418
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 420
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    .line 421
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    .line 428
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 429
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    :cond_2
    :goto_0
    return-void
.end method

.method public updateHeaderForExpansion(Z)V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1009
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->calculateBgColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1011
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, p1}, Landroid/view/NotificationHeaderView;->setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1013
    invoke-virtual {v0, p0}, Landroid/view/NotificationHeaderView;->setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateState(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 565
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 566
    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    add-int/2addr v3, v4

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    add-int/lit8 v6, v4, 0x1

    .line 572
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 573
    :goto_0
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v6

    .line 575
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v9

    move/from16 v18, v9

    move v9, v6

    move/from16 v6, v18

    goto :goto_1

    :cond_1
    move v9, v10

    .line 578
    :goto_1
    iget-boolean v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 579
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v11

    if-nez v11, :cond_2

    move v11, v5

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    move v13, v5

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v12, v2, :cond_d

    .line 582
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v13, :cond_5

    if-eqz v7, :cond_3

    int-to-float v3, v3

    .line 585
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    int-to-float v5, v5

    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v8, v8

    invoke-static {v5, v8, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_7

    .line 588
    :cond_3
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v5, :cond_4

    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    goto :goto_4

    :cond_4
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    :goto_4
    add-int/2addr v3, v5

    goto :goto_7

    :cond_5
    if-eqz v7, :cond_6

    int-to-float v3, v3

    .line 592
    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    invoke-static {v10, v5, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_6

    .line 597
    :cond_6
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v5, :cond_7

    iget v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v5, v8

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    add-int/2addr v3, v5

    :goto_6
    const/4 v13, 0x0

    .line 602
    :goto_7
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v5

    .line 603
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v8

    .line 604
    iput v8, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    add-int v10, v3, v14

    int-to-float v10, v10

    .line 605
    iput v10, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    const/4 v10, 0x0

    .line 606
    iput-boolean v10, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    if-eqz v11, :cond_8

    .line 610
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mEnableShadowOnChildNotifications:Z

    if-eqz v10, :cond_8

    .line 611
    iget v10, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    .line 612
    :goto_8
    iput v10, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 613
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v10, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 614
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v10, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 615
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v10, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    const/4 v10, 0x0

    .line 616
    iput v10, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    const/4 v10, 0x0

    .line 617
    iput v10, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/high16 v10, 0x3f800000    # 1.0f

    if-ge v12, v6, :cond_a

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v16

    if-eqz v16, :cond_9

    move v10, v9

    :cond_9
    iput v10, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_9

    :cond_a
    cmpl-float v16, v9, v10

    if-nez v16, :cond_b

    if-gt v12, v4, :cond_b

    .line 621
    iget v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mActualHeight:I

    int-to-float v10, v10

    move/from16 v17, v4

    iget v4, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    sub-float/2addr v10, v4

    iget v4, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float v4, v4

    div-float/2addr v10, v4

    iput v10, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 622
    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v10, 0x0

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_a

    :cond_b
    :goto_9
    move/from16 v17, v4

    .line 624
    :goto_a
    iget v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    iput v4, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 625
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    iput-boolean v4, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    add-int/2addr v3, v8

    .line 627
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandAnimationRunning()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 628
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v4

    neg-int v14, v4

    :cond_c
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v17

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto/16 :goto_3

    .line 632
    :cond_d
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_11

    .line 633
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    const/4 v4, 0x1

    .line 634
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v5

    .line 633
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 635
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 637
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v3, :cond_10

    .line 638
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 640
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 641
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_e

    .line 642
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    .line 644
    :cond_e
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v6, :cond_f

    goto :goto_b

    :cond_f
    move-object v3, v4

    .line 647
    :goto_b
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    iput v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 648
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getRelativeYOffset(Landroid/view/View;Landroid/view/View;)F

    move-result v2

    add-float/2addr v5, v2

    iput v5, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    goto :goto_c

    .line 652
    :cond_10
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    const/4 v3, 0x0

    .line 653
    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v3, 0x0

    .line 656
    :goto_d
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v2, :cond_14

    .line 657
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-nez v2, :cond_12

    .line 658
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 660
    :cond_12
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 661
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v11, :cond_13

    .line 662
    iget v10, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    goto :goto_e

    :cond_13
    move v10, v3

    .line 663
    :goto_e
    iput v10, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 664
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeaderTranslation:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 665
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    iput v0, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/4 v0, 0x0

    .line 668
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :cond_14
    return-void
.end method
