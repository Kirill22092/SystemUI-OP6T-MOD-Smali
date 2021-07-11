.class public Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.super Landroid/view/ViewGroup;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ScrollAdapter;
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;,
        Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;,
        Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;,
        Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;
    }
.end annotation


# instance fields
.field private mActivateNeedsAnimation:Z

.field private mActivePointerId:I

.field private mAddedHeadsUpChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowLongPress:Z

.field private final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field private mAnimateBottomOnLayout:Z

.field private mAnimateNextBackgroundBottom:Z

.field private mAnimateNextBackgroundTop:Z

.field private mAnimateNextSectionBoundsChange:Z

.field private mAnimationEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationFinishedRunnables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationRunning:Z

.field private mAnimationsEnabled:Z

.field private final mBackgroundAnimationRect:Landroid/graphics/Rect;

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mBackgroundXFactor:F

.field private mBackwardScrollable:Z

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBgColor:I

.field private mBottomInset:I

.field private mBottomMargin:I

.field private mCachedBackgroundColor:I

.field private mChangePositionInProgress:Z

.field mCheckForLeavebehind:Z

.field private mChildTransferInProgress:Z

.field private mChildrenChangingPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToAddAnimated:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToRemoveAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenUpdateRequested:Z

.field private mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field protected mClearAllEnabled:Z

.field private mClearTransientViewsWhenFinished:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private final mClipRect:Landroid/graphics/Rect;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mContentHeight:I

.field private mContinuousBackgroundUpdate:Z

.field private mContinuousShadowUpdate:Z

.field private mCornerRadius:I

.field private mCurrentStackHeight:I

.field private mDimAmount:F

.field private mDimAnimator:Landroid/animation/ValueAnimator;

.field private final mDimEndListener:Landroid/animation/Animator$AnimatorListener;

.field private mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDimmedNeedsAnimation:Z

.field private mDisallowDismissInThisMotion:Z

.field private mDisallowScrollingInThisMotion:Z

.field private mDismissAllInProgress:Z

.field private mDismissRtl:Z

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDontClampNextScroll:Z

.field private mDontReportNextOverScroll:Z

.field private mDownX:I

.field private final mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mEverythingNeedsAnimation:Z

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mExpandHelperCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private mExpandedHeight:F

.field private mExpandedHeightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExpandedInThisMotion:Z

.field private mExpandingNotification:Z

.field private mFadeNotificationsOnDismiss:Z

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private final mFgsSectionController:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

.field private mFgsSectionView:Lcom/android/systemui/statusbar/notification/row/ForegroundServiceDungeonView;

.field private mFinishScrollingCallback:Ljava/lang/Runnable;

.field private mFirstVisibleNotHeaderChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field protected mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

.field private mForceNoOverlappingRendering:Z

.field private mForcedScroll:Landroid/view/View;

.field private mForwardScrollable:Z

.field private mFromMoreCardAdditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGapHeight:I

.field private mGenerateChildOrderChangedEvent:Z

.field private mGoToFullShadeDelay:J

.field private mGoToFullShadeNeedsAnimation:Z

.field private mGroupExpandedForMeasure:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private final mHeadsUpCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

.field private mHeadsUpChangeAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeadsUpGoingAwayAnimationsAllowed:Z

.field private mHeadsUpInset:I

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mHideSensitiveNeedsAnimation:Z

.field private mHideXInterpolator:Landroid/view/animation/Interpolator;

.field private mHighPriorityBeforeSpeedBump:Z

.field private mIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mInHeadsUpPinnedMode:Z

.field private mIncreasedPaddingBetweenElements:I

.field private mInited:Z

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInterpolatedHideAmount:F

.field private mIntrinsicContentHeight:I

.field private mIntrinsicPadding:I

.field private mIsBeingDragged:Z

.field private mIsClipped:Z

.field private mIsEmptyShadeViewVisible:Z

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private mIsImeShow:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

.field private mLastMotionY:I

.field private mLastSentAppear:F

.field private mLastSentExpandedHeight:F

.field private mLinearHideAmount:F

.field private mListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;

.field private final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mLockscreenUserChangeListener:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

.field private mMaxDisplayedNotifications:I

.field private mMaxLayoutHeight:I

.field private mMaxOverScroll:F

.field private mMaxScrollAfterExpand:I

.field private mMaxTopPadding:I

.field private mMaximumVelocity:I

.field protected final mMenuEventListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mMinInteractionHeight:I

.field private mMinTopOverScrollToEscape:F

.field private mMinimumVelocity:I

.field private mNeedViewResizeAnimation:Z

.field private mNeedsAnimation:Z

.field private final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field private final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private mNotifSectionCombinedGap:F

.field private mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field private final mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

.field private final mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private mNotificationPanelController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private mOnColorsChangedListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

.field private mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

.field private final mOnGroupChangeListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

.field private mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

.field private mOnlyScrollingInThisMotion:Z

.field private final mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mOverScrolledBottomPixels:F

.field private mOverScrolledTopPixels:F

.field private mOverflingDistance:I

.field private mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

.field private mOwnScrollY:I

.field private mPaddingBetweenElements:I

.field private mPaddingBottom:I

.field private mPaddingBottomLandscapeOffset:I

.field private mPaddingBottomOffset:I

.field private mPanelTracking:Z

.field private mPulsing:Z

.field protected mQsContainer:Landroid/view/ViewGroup;

.field private mQsExpanded:Z

.field private mQsExpansionFraction:F

.field private mReclamp:Ljava/lang/Runnable;

.field private mReflingAndAnimateScroll:Ljava/lang/Runnable;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mRequestedClipBounds:Landroid/graphics/Rect;

.field private final mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field private mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrimState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field private mScrollable:Z

.field private mScrolledToTopOnFirstDown:Z

.field private mScroller:Landroid/widget/OverScroller;

.field protected mScrollingEnabled:Z

.field private mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

.field private final mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private final mShouldDrawNotificationBackground:Z

.field private mShouldShowShelfOnly:Z

.field private mSidePaddings:I

.field private mSlopMultiplier:F

.field protected final mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

.field private mStackTranslation:F

.field private final mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarHeight:I

.field private mStatusBarState:I

.field private final mStatusbarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mStrokeMediaRadius:F

.field private mStrokeOffset:F

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeRoundOffset:F

.field private final mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

.field private mSwipedOutViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipingInProgress:Z

.field private mTempInt2:[I

.field private final mTmpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTmpSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPadding:I

.field private mTopPaddingNeedsAnimation:Z

.field private mTopPaddingOverflow:F

.field private mTouchIsClick:Z

.field private mTouchSlop:I

.field private mTrackingHeadsUp:Z

.field protected final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUsingLightTheme:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewPositionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private mWLBBreakModeValue:I

.field private mWLBBreakModeView:Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;

.field private mWLBCurrentModeValue:I

.field private mWaterfallTopInset:I

.field private mWillExpand:Z

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    const-class v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p14

    const/4 v7, 0x0

    move-object v8, p2

    .line 637
    invoke-direct {p0, p1, p2, v7, v7}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v8, 0x7fffffff

    .line 226
    iput v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 227
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 229
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v8, -0x1

    .line 264
    iput v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 278
    iput v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomInset:I

    .line 289
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 290
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    .line 291
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    .line 292
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    .line 293
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    .line 294
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 295
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    .line 296
    new-instance v9, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    const/4 v9, 0x1

    .line 320
    iput-boolean v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 374
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 385
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$2;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserChangeListener:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;

    const/4 v10, 0x2

    new-array v10, v10, [I

    .line 392
    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTempInt2:[I

    .line 394
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    .line 395
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    .line 396
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    .line 403
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    .line 407
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$3;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 422
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    .line 423
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$4;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 429
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$5;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$5;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 440
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$6;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$6;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 449
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Q8bA-VckgKDEBbXIsfAy3cWAYiM;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Q8bA-VckgKDEBbXIsfAy3cWAYiM;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 453
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mViewPositionComparator:Ljava/util/Comparator;

    .line 468
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 483
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v10, 0x0

    .line 492
    iput v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    .line 497
    iput v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    const/high16 v10, 0x3f800000    # 1.0f

    .line 502
    iput v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundXFactor:F

    .line 511
    iput v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 515
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    .line 522
    iput-boolean v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    .line 523
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Dpz6Zg1EwqGyFLQ68KdTUD2Xa-g;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Dpz6Zg1EwqGyFLQ68KdTUD2Xa-g;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mReflingAndAnimateScroll:Ljava/lang/Runnable;

    .line 531
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    .line 532
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    .line 537
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    const-string/jumbo v8, "statusbar"

    .line 543
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 542
    invoke-static {v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 544
    const-class v8, Lcom/android/internal/logging/MetricsLogger;

    .line 545
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/logging/MetricsLogger;

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 547
    const-class v8, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 548
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 549
    const-class v8, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 551
    const-class v8, Landroid/util/DisplayMetrics;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/DisplayMetrics;

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 552
    const-class v8, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 553
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 554
    const-class v8, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 555
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 558
    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideXInterpolator:Landroid/view/animation/Interpolator;

    .line 581
    iput-boolean v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInited:Z

    .line 589
    sget-object v8, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrimState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 607
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$76prqFuo9J9YXd5uaycSxZ-OCMM;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$76prqFuo9J9YXd5uaycSxZ-OCMM;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnColorsChangedListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 2092
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$12;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$12;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    .line 6332
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, p0, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Landroid/os/Handler;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 6829
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$14;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$14;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 6849
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMenuEventListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    .line 6913
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$16;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 7195
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$17;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    .line 7311
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$18;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$18;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 7332
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$19;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$19;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnGroupChangeListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 7365
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$20;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelperCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 638
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move/from16 v10, p3

    .line 640
    iput-boolean v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAllowLongPress:Z

    .line 642
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    move-object/from16 v10, p11

    .line 644
    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v10, p12

    .line 645
    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 646
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 647
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 648
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$2kmwH5TzrEUhlI4yYwStAmSu1DU;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$2kmwH5TzrEUhlI4yYwStAmSu1DU;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setAnimationStateHandler(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;)V

    move-object/from16 v2, p8

    .line 649
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v2, p10

    .line 650
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v2, p13

    .line 651
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v2, p15

    .line 652
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFgsSectionController:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    .line 654
    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    .line 655
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v6, p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->initialize(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Landroid/view/LayoutInflater;)V

    .line 656
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$XmSQLyF8x0Au5zc1KRRUiRzAE9w;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$XmSQLyF8x0Au5zc1KRRUiRzAE9w;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->setOnClearSilentNotifsClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->createSectionsForBuckets()[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    .line 663
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {v2, p1, v4, v6}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 664
    sget v2, Lcom/android/systemui/R$color;->notification_shade_background_color:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgColor:I

    .line 665
    sget v2, Lcom/android/systemui/R$dimen;->notification_min_height:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 666
    sget v4, Lcom/android/systemui/R$dimen;->notification_max_height:I

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 667
    new-instance v6, Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelperCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-direct {v6, v10, v11, v2, v4}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 669
    invoke-virtual {v6, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 670
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V

    .line 671
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 672
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMenuEventListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v12, 0x0

    move-object/from16 p10, v2

    move/from16 p11, v12

    move-object/from16 p12, v4

    move-object/from16 p13, v6

    move-object/from16 p14, v10

    move-object/from16 p15, v11

    invoke-direct/range {p10 .. p15}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;-><init>(ILcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;Lcom/android/systemui/plugins/FalsingManager;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->createStackScrollAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    .line 674
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 675
    sget v2, Lcom/android/systemui/R$bool;->config_drawNotificationBackground:I

    .line 676
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    .line 677
    sget v2, Lcom/android/systemui/R$bool;->config_fadeNotificationsOnDismiss:I

    .line 678
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFadeNotificationsOnDismiss:Z

    .line 679
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setAnimatedChildren(Ljava/util/HashSet;)V

    .line 680
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$ZNzbjhiYOpIhFG8SoCZYGISAg68;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$ZNzbjhiYOpIhFG8SoCZYGISAg68;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setOnRoundingChangedCallback(Ljava/lang/Runnable;)V

    .line 681
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$7_f8XxLoO1HD4OWprUeIqEzesjU;

    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$7_f8XxLoO1HD4OWprUeIqEzesjU;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V

    .line 682
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserChangeListener:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    .line 683
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 686
    const-class v2, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    .line 687
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;

    .line 688
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$EOvrpynV_4_HqkQZPqElzpbHsN4;

    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$EOvrpynV_4_HqkQZPqElzpbHsN4;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V

    .line 692
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    xor-int/lit8 v2, v7, 0x1

    .line 693
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 694
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 702
    sget v2, Lcom/android/systemui/R$bool;->config_enableNotificationsClearAll:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearAllEnabled:Z

    .line 704
    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    .line 705
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Jw0uVZk_QqBt9QukDWfY9zQ7BQU;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Jw0uVZk_QqBt9QukDWfY9zQ7BQU;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    const-string v6, "high_priority"

    const-string v7, "notification_dismiss_rtl"

    const-string v10, "notification_history_enabled"

    filled-new-array {v6, v7, v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    move-object/from16 v2, p17

    .line 716
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    move-object/from16 v4, p18

    .line 717
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    move-object/from16 v4, p19

    .line 718
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object/from16 v4, p20

    .line 719
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 720
    invoke-virtual/range {p17 .. p17}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$9;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    goto :goto_1

    .line 728
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$10;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 736
    :goto_1
    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    .line 737
    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object/from16 v2, p6

    .line 738
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusbarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v2, p16

    .line 739
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initializeForegroundServiceSection(Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;)V

    move-object/from16 v2, p21

    .line 740
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 741
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnColorsChangedListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 742
    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    .line 743
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Ul-pXllCrzDe7HTQ68hR8YtAy6c;

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$Ul-pXllCrzDe7HTQ68hR8YtAy6c;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/media/KeyguardMediaController;)V

    invoke-virtual {v5, v2}, Lcom/android/systemui/media/KeyguardMediaController;->setVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    .line 754
    sget v2, Lcom/android/systemui/R$dimen;->op_cb_notification_panel_stroke_offset:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 755
    sget v3, Lcom/android/systemui/R$dimen;->op_cb_notification_panel_stroke_scale_offset:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 756
    sget v4, Lcom/android/systemui/R$dimen;->op_cb_notification_panel_stroke_width:I

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 757
    sget v5, Lcom/android/systemui/R$dimen;->op_cb_notification_section_combined_gap:I

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotifSectionCombinedGap:F

    .line 758
    sget v5, Lcom/android/systemui/R$dimen;->op_cb_lockscreen_media_control_stroke_radius:I

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokeMediaRadius:F

    sub-float v2, v4, v2

    .line 759
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokeRoundOffset:F

    add-float/2addr v2, v3

    .line 760
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokeOffset:F

    .line 761
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 762
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 763
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 764
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokePaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/systemui/R$color;->op_turquoise:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private UpdateFirstVisibleNotHeaderChild()V
    .locals 5

    .line 3674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3675
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3677
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 3678
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    .line 3682
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFirstVisibleNotHeaderChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private abortBackgroundAnimators()V
    .locals 3

    .line 2917
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2918
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->cancelAnimators()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForcedScroll()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateChildren()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)F
    .locals 0

    .line 200
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundXFactor:F

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideXInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I
    .locals 0

    .line 200
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I
    .locals 0

    .line 200
    iget p0, p0, Landroid/view/ViewGroup;->mScrollX:I

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I
    .locals 0

    .line 200
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    return p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/widget/OverScroller;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)I
    .locals 0

    .line 200
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    return p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;I)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setWLBBreakModeTextColor(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestAnimateEverything()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onStatePostChange()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSensitiveness(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FFZZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContinuousBackgroundDrawing()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onPreDrawDuringAnimation()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFadeNotificationsOnDismiss:Z

    return p0
.end method

.method static synthetic access$4200(Landroid/view/View;)Z
    .locals 0

    .line 200
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveNotifications()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/media/KeyguardMediaController;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationPanelController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusbarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    return p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/content/Context;
    .locals 0

    .line 200
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupExpandedForMeasure:Z

    return p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    return p0
.end method

.method static synthetic access$5502(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;F)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimAmount(F)V

    return-void
.end method

.method static synthetic access$6002(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    return p0
.end method

.method static synthetic access$6102(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    return p1
.end method

.method static synthetic access$6202(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;I)I
    .locals 0

    .line 200
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateViewShadows()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)F
    .locals 0

    .line 200
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    return p0
.end method

.method private animateDimmed(Z)V
    .locals 3

    .line 5134
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 5135
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5138
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAmount:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    .line 5141
    invoke-static {v1}, Landroid/animation/TimeAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xdc

    .line 5142
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5143
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5144
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5145
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5146
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateScroll()V
    .locals 4

    .line 2298
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2316
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 2317
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 2320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v2

    if-gez v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    if-le v1, v2, :cond_2

    if-gt v0, v2, :cond_2

    .line 2324
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxOverScrollFromCurrentVelocity()V

    .line 2327
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    if-eqz v3, :cond_3

    .line 2328
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    sub-int/2addr v1, v0

    .line 2330
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    float-to-int v3, v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)V

    .line 2335
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mReflingAndAnimateScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 2337
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    .line 2338
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_6

    .line 2339
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_0
    return-void
.end method

.method private applyCurrentState()V
    .locals 4

    .line 5209
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5211
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5212
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->applyViewState()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5215
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;

    if-eqz v0, :cond_1

    .line 5216
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;->onChildLocationsChanged()V

    .line 5218
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    .line 5219
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 5220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 5221
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateViewShadows()V

    .line 5222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClippingToTopRoundedCorner()V

    return-void
.end method

.method private areSectionBoundsAnimating()Z
    .locals 4

    .line 2933
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2934
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->areBoundsAnimating()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static canChildBeDismissed(Landroid/view/View;)Z
    .locals 2

    .line 7100
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 7101
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowingAndTranslationFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 7105
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasFinishedInitialization()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7108
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1

    .line 7110
    :cond_3
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    if-eqz v0, :cond_4

    .line 7111
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;->getCanSwipe()Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method private clampScrollPosition()V
    .locals 2

    .line 1581
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 1582
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v1, :cond_0

    .line 1583
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_0
    return-void
.end method

.method private clearHeadsUpDisappearRunning()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 5073
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5074
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5075
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 5076
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5077
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 5078
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5079
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5080
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearTemporaryViews()V
    .locals 3

    .line 4897
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 4898
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4899
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4900
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 4901
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4902
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V
    .locals 0

    :goto_0
    if-eqz p1, :cond_0

    .line 4909
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 4910
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearTransient()V
    .locals 2

    .line 5089
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5090
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->removeTransientView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    goto :goto_0

    .line 5092
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private clearUserLockedViews()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4885
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4886
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4887
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 4888
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4889
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private customOverScrollBy(IIII)V
    .locals 0

    add-int/2addr p2, p1

    neg-int p1, p4

    add-int/2addr p4, p3

    const/4 p3, 0x1

    if-le p2, p4, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 2403
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onCustomOverScrolled(IZ)V

    return-void
.end method

.method private didSectionBoundsChange()Z
    .locals 4

    .line 2923
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2924
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->didBoundsChange()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private dispatchDownEventToScroller(Landroid/view/MotionEvent;)V
    .locals 1

    .line 4222
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x0

    .line 4223
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4224
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 4225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1038
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 1039
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    sub-int/2addr v1, v2

    .line 1040
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1041
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1042
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 1043
    iget v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 1045
    iget v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    .line 1046
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideXInterpolator:Landroid/view/animation/Interpolator;

    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    sub-float/2addr v9, v11

    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundXFactor:F

    mul-float/2addr v9, v11

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    int-to-float v5, v5

    int-to-float v0, v0

    .line 1049
    invoke-static {v5, v0, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v10, v0

    int-to-float v0, v1

    .line 1050
    invoke-static {v5, v0, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v5, v0

    int-to-float v0, v7

    int-to-float v1, v2

    .line 1051
    invoke-static {v0, v1, v8}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v7, v1

    int-to-float v1, v4

    .line 1052
    invoke-static {v0, v1, v8}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 1053
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundAnimationRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10, v7, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    sub-int v8, v7, v2

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 1063
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->needsBackground()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1069
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1070
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result v0

    goto :goto_2

    .line 1072
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v3, v6

    :cond_4
    move v0, v3

    :goto_2
    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move v3, v5

    move v4, v7

    move v5, v8

    .line 1075
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->drawBackgroundRects(Landroid/graphics/Canvas;IIII)V

    .line 1078
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClipping()V

    return-void
.end method

.method private drawBackgroundRects(Landroid/graphics/Canvas;IIII)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 1100
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 1101
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v2, v2, p5

    .line 1110
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v5, v4

    move/from16 v10, p2

    move/from16 v7, p4

    move v11, v1

    move v8, v2

    move v9, v3

    move v13, v9

    const/4 v12, 0x1

    const/4 v14, 0x1

    move v2, v7

    :goto_0
    if-ge v9, v5, :cond_6

    aget-object v15, v4, v9

    .line 1111
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->needsBackground()Z

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_5

    .line 1114
    :cond_0
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v3, v3, p5

    .line 1115
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v17, v4

    move/from16 v4, p2

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1116
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v1, v3, v8

    move/from16 v18, v5

    const/4 v5, 0x1

    if-gt v1, v5, :cond_3

    if-ne v10, v6, :cond_1

    if-eq v11, v4, :cond_2

    :cond_1
    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    move/from16 p4, v4

    move/from16 v27, v6

    goto :goto_4

    :cond_3
    :goto_1
    int-to-float v1, v10

    int-to-float v5, v2

    int-to-float v10, v11

    int-to-float v11, v8

    .line 1122
    iget v14, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    move/from16 p4, v4

    int-to-float v4, v14

    int-to-float v14, v14

    move/from16 v27, v6

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move/from16 v20, v1

    move/from16 v21, v5

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v4

    move/from16 v25, v14

    move-object/from16 v26, v6

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 1128
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v4

    if-eqz v4, :cond_5

    int-to-float v4, v3

    .line 1129
    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokeRoundOffset:F

    sub-float/2addr v4, v6

    add-float/2addr v6, v11

    sub-float/2addr v4, v6

    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotifSectionCombinedGap:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    if-eq v8, v2, :cond_5

    .line 1131
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokeOffset:F

    sub-float v20, v1, v2

    sub-float v21, v5, v2

    add-float v22, v10, v2

    add-float v23, v11, v2

    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move/from16 v24, v2

    move/from16 v25, v1

    move-object/from16 v26, v4

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move v7, v13

    :goto_3
    move v2, v3

    move v13, v7

    .line 1149
    :goto_4
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int v1, v1, p5

    move/from16 v11, p4

    move v8, v1

    move v7, v3

    move/from16 v10, v27

    const/4 v14, 0x0

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p3

    move-object/from16 v4, v17

    move/from16 v5, v18

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    int-to-float v1, v10

    int-to-float v3, v2

    int-to-float v4, v11

    int-to-float v5, v8

    .line 1155
    iget v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v7, v6

    int-to-float v6, v6

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move/from16 v20, v1

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v7

    move/from16 v25, v6

    move-object/from16 v26, v9

    invoke-virtual/range {v19 .. v26}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 1161
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v12, :cond_7

    move v2, v13

    :cond_7
    if-eq v2, v8, :cond_8

    .line 1166
    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokeOffset:F

    sub-float v7, v1, v3

    int-to-float v2, v2

    sub-float v8, v2, v3

    add-float v9, v4, v3

    add-float v10, v5, v3

    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v11, v2

    int-to-float v12, v2

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_8
    const/4 v3, 0x0

    .line 1172
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_a

    .line 1173
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1174
    instance-of v5, v2, Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-virtual {v5}, Lcom/android/systemui/media/KeyguardMediaController;->getView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 1176
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    const/4 v6, 0x1

    .line 1177
    aget v7, v5, v6

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    add-int/2addr v7, v2

    .line 1178
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokeOffset:F

    sub-float v9, v1, v2

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v10, v5, v2

    add-float v11, v4, v2

    int-to-float v5, v7

    add-float v12, v5, v2

    iget v14, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokeMediaRadius:F

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v13, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_9
    const/4 v6, 0x1

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    return-void
.end method

.method private drawHeadsUpBackground(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1190
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 1191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    sub-int/2addr v1, v2

    .line 1193
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1195
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v8, v2

    move v10, v4

    :goto_0
    if-ge v5, v3, :cond_2

    .line 1197
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1198
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    instance-of v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_1

    .line 1200
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1201
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslation()F

    move-result v6

    cmpg-float v6, v6, v4

    if-gez v6, :cond_1

    .line 1202
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldShowGutsOnSnapOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1203
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1204
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v7, v2

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move v8, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    cmpg-float v2, v8, v10

    if-gez v2, :cond_3

    int-to-float v7, v0

    int-to-float v9, v1

    .line 1210
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v11, v0

    int-to-float v12, v0

    iget-object v13, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private endDrag()V
    .locals 4

    const/4 v0, 0x0

    .line 4462
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 4464
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    const/4 v1, 0x1

    .line 4466
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 4467
    invoke-virtual {p0, v3, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 4469
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 4470
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    :cond_1
    return-void
.end method

.method private focusNextViewIfFocused(Landroid/view/View;)V
    .locals 2

    .line 3403
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    .line 3404
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3405
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->shouldRefocusOnDismiss()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3406
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildAfterViewWhenDismissed()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3408
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGroupParentWhenDismissed()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3410
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    goto :goto_0

    .line 3411
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    :goto_0
    const/4 v0, 0x1

    .line 3409
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(FZ)Landroid/view/View;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 3414
    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_2
    return-void
.end method

.method private generateActivateEvent()V
    .locals 4

    .line 4101
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 4102
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4105
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    return-void
.end method

.method private generateAllAnimationEvents()V
    .locals 0

    .line 3891
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHeadsUpAnimationEvents()V

    .line 3892
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateChildRemovalEvents()V

    .line 3893
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateChildAdditionEvents()V

    .line 3894
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generatePositionChangeEvents()V

    .line 3895
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateTopPaddingEvent()V

    .line 3896
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateActivateEvent()V

    .line 3897
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateDimmedEvent()V

    .line 3898
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHideSensitiveEvent()V

    .line 3899
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateGoToFullShadeEvent()V

    .line 3900
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateViewResizeEvent()V

    .line 3901
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateGroupExpansionEvent()V

    .line 3902
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateAnimateEverythingEvent()V

    return-void
.end method

.method private generateAnimateEverythingEvent()V
    .locals 4

    .line 4110
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 4111
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4114
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    return-void
.end method

.method private generateChildAdditionEvents()V
    .locals 7

    .line 4068
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4069
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4070
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v5, 0x168

    invoke-direct {v4, v1, v3, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4074
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v4, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4078
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4079
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private generateChildRemovalEvents()V
    .locals 9

    .line 3999
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4000
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 4003
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    .line 4005
    instance-of v4, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 4006
    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4007
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->wasChildInGroupWhenRemoved()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4008
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslationWhenRemoved()F

    move-result v3

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    .line 4011
    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslation()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v8, v4

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    or-int/2addr v2, v4

    goto :goto_3

    .line 4012
    :cond_2
    instance-of v4, v1, Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-eqz v4, :cond_3

    move v2, v6

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_3
    if-nez v2, :cond_6

    .line 4016
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4017
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_4

    move v5, v6

    :cond_4
    if-eqz v5, :cond_5

    .line 4019
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v2, :cond_5

    .line 4023
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 4025
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    :cond_5
    move v2, v5

    :cond_6
    if-eqz v2, :cond_7

    const/4 v6, 0x2

    .line 4032
    :cond_7
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v2, v1, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    .line 4033
    invoke-direct {p0, v3, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(FZ)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 4035
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4036
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4038
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private generateDimmedEvent()V
    .locals 4

    .line 4119
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 4120
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4123
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    return-void
.end method

.method private generateGoToFullShadeEvent()V
    .locals 4

    .line 4137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 4138
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4141
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    return-void
.end method

.method private generateGroupExpansionEvent()V
    .locals 4

    .line 3969
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_0

    .line 3970
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3972
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedGroupView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    :cond_0
    return-void
.end method

.method private generateHeadsUpAnimationEvents()V
    .locals 8

    .line 3907
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3908
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3909
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3910
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v3

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xe

    .line 3917
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    .line 3918
    :goto_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 3921
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 3922
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :cond_3
    :goto_2
    if-eqz v5, :cond_5

    if-nez v1, :cond_5

    .line 3924
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->wasJustClicked()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xd

    goto :goto_3

    :cond_4
    const/16 v1, 0xc

    :goto_3
    move v3, v1

    .line 3927
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3929
    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    goto :goto_0

    .line 3933
    :cond_5
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_a

    .line 3939
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v4, :cond_a

    :cond_7
    if-nez v4, :cond_9

    .line 3940
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->shouldHunAppearFromBottom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move v3, v6

    goto :goto_5

    :cond_9
    :goto_4
    const/16 v1, 0xb

    move v3, v1

    :goto_5
    xor-int/lit8 v6, v4, 0x1

    .line 3950
    :cond_a
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    .line 3951
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    .line 3952
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3954
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3955
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private generateHideSensitiveEvent()V
    .locals 4

    .line 4128
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 4129
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4132
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    return-void
.end method

.method private generatePositionChangeEvents()V
    .locals 7

    .line 4043
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4045
    instance-of v5, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_0

    .line 4046
    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4047
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isMarkedForUserTriggeredMovement()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v3, 0x1f4

    .line 4048
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4049
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->markForUserTriggeredMovement(Z)V

    :cond_0
    if-nez v3, :cond_1

    .line 4053
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v2, v1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    goto :goto_1

    .line 4054
    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 4055
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    invoke-direct {v2, v1, v4, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    .line 4056
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4058
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4059
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    if-eqz v0, :cond_3

    .line 4060
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4062
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    :cond_3
    return-void
.end method

.method private generateRemoveAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 3

    .line 3436
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->removeRemovedChildFromHeadsUpChangeAnimations(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3437
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return v1

    .line 3440
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isClickedHeadsUp(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3442
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearTransientViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v2

    .line 3445
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isChildInInvisibleGroup(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3446
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3448
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3449
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    return v2

    .line 3452
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3453
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    return v1
.end method

.method private generateTopPaddingEvent()V
    .locals 5

    .line 4084
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    if-eqz v0, :cond_1

    .line 4086
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4087
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v3, 0x226

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    goto :goto_0

    .line 4091
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    .line 4094
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    .line 4096
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    return-void
.end method

.method private generateViewResizeEvent()V
    .locals 5

    .line 3978
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3980
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 3981
    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 3990
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3994
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    return-void
.end method

.method private getAppearEndPosition()F
    .locals 5

    .line 1805
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    move-result v0

    .line 1809
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    if-lez v0, :cond_4

    .line 1810
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1811
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 1825
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    .line 1812
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_3

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 1813
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 1817
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1818
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 1828
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_1
    move v4, v2

    move v2, v0

    move v0, v4

    .line 1832
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    :goto_3
    add-int/2addr v2, v1

    if-lez v0, :cond_7

    .line 1833
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1834
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1835
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1836
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1837
    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    add-int v1, v2, v0

    if-ge v1, p0, :cond_6

    move v2, v1

    goto :goto_4

    .line 1842
    :cond_6
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_7

    .line 1843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppearEndPosition res "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " headsUpPinnedHeight "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " maxAppearPosition "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StackScroller"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    int-to-float p0, v2

    return p0
.end method

.method private getAppearStartPosition()F
    .locals 2

    .line 1754
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1760
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFirstVisibleNotHeaderChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_0

    .line 1761
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    .line 1762
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result v0

    add-int/2addr p0, v0

    int-to-float p0, p0

    return p0

    .line 1764
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1765
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1770
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    .line 1771
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0

    :cond_2
    :goto_0
    const-string v0, "StackScroller"

    const-string v1, "getAppearEndPosition VisibleChild null"

    .line 1766
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    int-to-float p0, p0

    return p0

    .line 1773
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private getChildAtPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 1

    const/4 v0, 0x1

    .line 1957
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method private getChildAtPosition(FFZZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 10

    .line 1974
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1976
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1977
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    if-eqz p4, :cond_0

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 1981
    :cond_0
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    .line 1982
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    .line 1983
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    .line 1984
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 1989
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    sub-float v8, v6, v5

    .line 1991
    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinInteractionHeight:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gez v8, :cond_1

    if-nez p3, :cond_4

    :cond_1
    cmpl-float v5, p2, v5

    if-ltz v5, :cond_4

    cmpg-float v5, p2, v6

    if-gtz v5, :cond_4

    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_4

    int-to-float v5, v7

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_4

    .line 1993
    instance-of v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_3

    .line 1994
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1995
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    .line 1996
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v6, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1997
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v6

    if-eq v6, v3, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1999
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 1998
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    if-eq v6, v5, :cond_2

    goto :goto_1

    :cond_2
    sub-float/2addr p2, v4

    .line 2003
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getViewAtPosition(F)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v3

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChildrenWithBackground()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation

    .line 3056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3057
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3059
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 3060
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v3, v4, :cond_0

    .line 3062
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getExpandTranslationStart()F
    .locals 2

    .line 1745
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private getFirstChildBelowTranlsationY(FZ)Landroid/view/View;
    .locals 8

    .line 2695
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2697
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2698
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 2701
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    cmpl-float v5, v4, p1

    if-ltz v5, :cond_1

    return-object v3

    :cond_1
    if-nez p2, :cond_3

    .line 2704
    instance-of v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_3

    .line 2705
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2706
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2708
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v3

    move v5, v1

    .line 2709
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2711
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2712
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    add-float/2addr v7, v4

    cmpl-float v7, v7, p1

    if-ltz v7, :cond_2

    return-object v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFirstChildWithBackground()Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 5

    .line 3043
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3045
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 3046
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
    .locals 4

    .line 3010
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 3011
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getImeInset()I
    .locals 2

    .line 2652
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomInset:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getIntrinsicHeight(Landroid/view/View;)I
    .locals 0

    .line 3565
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p0, :cond_0

    .line 3566
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 3567
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    return p0

    .line 3569
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method private getLastChildWithBackground()Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 4

    .line 3030
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3032
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 3033
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
    .locals 3

    .line 3019
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3020
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    aget-object v1, v1, v0

    .line 3021
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLayoutHeight()I
    .locals 1

    .line 1893
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getNavigaitonBarMode()I
    .locals 1

    .line 7490
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e008e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private getRubberBandFactor(Z)F
    .locals 1

    const v0, 0x3eb33333    # 0.35f

    if-nez p1, :cond_0

    return v0

    .line 3329
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz p1, :cond_1

    const p0, 0x3e19999a    # 0.15f

    return p0

    .line 3331
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 3333
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz p0, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const p0, 0x3e570a3d    # 0.21f

    return p0
.end method

.method private getScrollRange()I
    .locals 4

    .line 2632
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    .line 2633
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2634
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2637
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updatePaddingBottom()I

    move-result v1

    .line 2643
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int v2, v0, v2

    add-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2645
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getImeInset()I

    move-result v3

    .line 2646
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    sub-int/2addr p0, v3

    sub-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method

.method private getTopHeadsUpPinnedHeight()I
    .locals 2

    .line 1783
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1787
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    .line 1788
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1789
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1790
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1792
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    .line 1795
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPinnedHeadsUpHeight()I

    move-result p0

    return p0
.end method

.method private getTouchSlop(Landroid/view/MotionEvent;)F
    .locals 1

    .line 4164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4165
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSlopMultiplier:F

    mul-float/2addr p1, p0

    goto :goto_0

    .line 4166
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float p1, p0

    :goto_0
    return p1
.end method

.method private handleDismissAllClipping()V
    .locals 7

    .line 5488
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 5491
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5492
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 5495
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 5496
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setMinClipTopAmount(I)V

    goto :goto_1

    .line 5498
    :cond_1
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setMinClipTopAmount(I)V

    .line 5500
    :goto_1
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleEmptySpaceClick(Landroid/view/MotionEvent;)V
    .locals 3

    .line 4515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4517
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result v0

    .line 4518
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_1

    .line 4519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    :cond_1
    const/4 p1, 0x0

    .line 4520
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    goto :goto_0

    .line 4524
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    if-eq p1, v1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 4525
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4526
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;->onEmptySpaceClicked(FF)V

    :cond_3
    :goto_0
    return-void
.end method

.method private hasActiveNotifications()Z
    .locals 1

    .line 7127
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7128
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getShadeList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 7130
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->hasActiveNotifications()Z

    move-result p0

    return p0
.end method

.method private includeChildInDismissAll(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z
    .locals 0

    .line 6162
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->matchesSelection(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private inflateEmptyShadeView()V
    .locals 3

    .line 6249
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->status_bar_no_notifications:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 6251
    sget v1, Lcom/android/systemui/R$string;->empty_shade_text:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setText(I)V

    .line 6252
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$VWzOQjMKXMSHfU04Wawqo0ikEOc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$VWzOQjMKXMSHfU04Wawqo0ikEOc;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6260
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    return-void
.end method

.method private inflateWLBBreakModeView()V
    .locals 4

    .line 6288
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->status_bar_notification_wlb_break_mode_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;

    .line 6291
    sget v1, Lcom/android/systemui/R$id;->wlb_break_mode_label:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6292
    sget v1, Lcom/android/systemui/R$id;->wlb_enable_break_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6294
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$aYltcZ26E0XYJVtttHMLgeVpr1o;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$aYltcZ26E0XYJVtttHMLgeVpr1o;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6301
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setWLBBreakModeView(Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;)V

    .line 6303
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setWLBBreakModeTextColor(I)V

    return-void
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 3

    .line 4534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4535
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 4536
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 4537
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 4538
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 4539
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    .line 4540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    .line 4541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    :cond_0
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 2284
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2285
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2287
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 2269
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2270
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    .line 1244
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    const/high16 v0, 0x40000

    .line 1245
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    .line 1246
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1247
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1248
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchSlop:I

    .line 1249
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSlopMultiplier:F

    .line 1250
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    .line 1251
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    .line 1252
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    .line 1254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1255
    sget v2, Lcom/android/systemui/R$dimen;->notification_min_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1256
    sget v2, Lcom/android/systemui/R$dimen;->notification_section_divider_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGapHeight:I

    .line 1257
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 1258
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->reload(Landroid/content/Context;)V

    .line 1259
    sget p1, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    .line 1260
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v2, 0x1

    .line 1259
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 1261
    sget p1, Lcom/android/systemui/R$dimen;->notification_divider_height_increased:I

    .line 1262
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    .line 1263
    sget p1, Lcom/android/systemui/R$dimen;->min_top_overscroll_to_qs:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    .line 1265
    sget p1, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    .line 1266
    sget p1, Lcom/android/systemui/R$dimen;->notification_panel_margin_bottom:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomMargin:I

    .line 1271
    sget p1, Lcom/android/systemui/R$dimen;->op_notification_side_paddings:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 1273
    sget p1, Lcom/android/systemui/R$dimen;->notification_min_interaction_height:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinInteractionHeight:I

    .line 1277
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v2, 0x1010571

    .line 1278
    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p1

    .line 1277
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    .line 1282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView mCornerRadius:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "StackScroller"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    sget v2, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    .line 1288
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$dimen;->op_notification_scroller_padding_bottom_offset:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBottomOffset:I

    .line 1289
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$dimen;->op_notification_scroller_landscape_padding_bottom_offset:I

    .line 1290
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBottomLandscapeOffset:I

    .line 1291
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10501af

    .line 1292
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBottom:I

    .line 1293
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updatePaddingBottom()I

    .line 1297
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setWLBBreakModeTextColor(I)V

    return-void
.end method

.method private initializeForegroundServiceSection(Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;)V
    .locals 1

    .line 769
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;->isForegroundServiceDismissalEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 770
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 771
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFgsSectionController:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    .line 772
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->createView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ForegroundServiceDungeonView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFgsSectionView:Lcom/android/systemui/statusbar/notification/row/ForegroundServiceDungeonView;

    const/4 v0, -0x1

    .line 773
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private isChildInGroup(Landroid/view/View;)Z
    .locals 1

    .line 3423
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3425
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 3424
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isChildInInvisibleGroup(Landroid/view/View;)Z
    .locals 2

    .line 3497
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3498
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3499
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 3500
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3501
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    if-eq p0, p1, :cond_0

    .line 3502
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isClickedHeadsUp(Landroid/view/View;)Z
    .locals 0

    .line 3462
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->isClickedHeadsUpNotification(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private isCurrentlyAnimating()Z
    .locals 0

    .line 1573
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method private isHeadsUp(Landroid/view/View;)Z
    .locals 0

    .line 1918
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 1919
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1920
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isHeadsUpTransition()Z
    .locals 0

    .line 1856
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInContentBounds(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 4686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isInContentBounds(F)Z

    move-result p0

    return p0
.end method

.method public static isPinnedHeadsUp(Landroid/view/View;)Z
    .locals 2

    .line 1909
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1910
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1911
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isRubberbanded(Z)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 3346
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-nez p0, :cond_0

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

.method private isScrollingEnabled()Z
    .locals 0

    .line 2115
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return p0
.end method

.method public static synthetic lambda$EebmavE8B0v9pYEId75j8vvZNvI(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    return-void
.end method

.method private synthetic lambda$bindRow$7(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Boolean;)V
    .locals 1

    .line 3783
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->onHeadsupAnimatingAwayChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    .line 3784
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private synthetic lambda$clearNotifications$8(Ljava/util/ArrayList;I)V
    .locals 0

    .line 6156
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onDismissAllAnimationsEnd(Ljava/util/List;I)V

    return-void
.end method

.method private synthetic lambda$inflateEmptyShadeView$13(Landroid/view/View;)V
    .locals 3

    .line 6253
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "notification_history_enabled"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    if-eqz v1, :cond_1

    .line 6255
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.NOTIFICATION_HISTORY"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 6256
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.NOTIFICATION_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6258
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/high16 v1, 0x20000000

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method private synthetic lambda$inflateFooterView$11(Landroid/view/View;)V
    .locals 1

    .line 6234
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x94

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 6235
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearNotifications(IZ)V

    .line 6237
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isWLBAllowed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6238
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper;->getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/worklife/OPWLBHelper;->onAllNotificationsCleared()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$inflateFooterView$12(Landroid/view/View;)V
    .locals 0

    .line 6242
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->isHistoryShown()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startHistoryIntent(Z)V

    return-void
.end method

.method private synthetic lambda$inflateWLBBreakModeView$14(Landroid/view/View;)V
    .locals 2

    .line 6295
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oneplus.intent.ACTION_WLB_BREAK_MODE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.oneplus.opwlb"

    .line 6296
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "received_from"

    const-string v1, "lockScreen"

    .line 6297
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6298
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$new$0()Z
    .locals 0

    .line 450
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackground()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    .line 527
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    return-void
.end method

.method private synthetic lambda$new$2(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    .line 609
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    .line 610
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateDecorViews(Z)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveClearableNotifications(I)Z

    move-result v0

    xor-int/2addr p1, v0

    const/4 v0, 0x2

    .line 659
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearNotifications(IZ)V

    return-void
.end method

.method static synthetic lambda$new$4(Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 689
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;->setNotificationShadeExpanded(F)V

    return-void
.end method

.method private synthetic lambda$new$5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "high_priority"

    .line 706
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHighPriorityBeforeSpeedBump:Z

    goto :goto_0

    :cond_0
    const-string v0, "notification_dismiss_rtl"

    .line 708
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateDismissRtlSetting(Z)V

    goto :goto_0

    :cond_1
    const-string p2, "notification_history_enabled"

    .line 710
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$6(Lcom/android/systemui/media/KeyguardMediaController;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 744
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 745
    invoke-virtual {p1}, Lcom/android/systemui/media/KeyguardMediaController;->getView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateAddAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    goto :goto_0

    .line 747
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/media/KeyguardMediaController;->getView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    .line 749
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onDynamicPrivacyChanged$15()V
    .locals 1

    .line 6454
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    const-string v0, "dynamic privacy changed"

    .line 6455
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSectionBoundaries(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$performDismissAllAnimations$10(ZLjava/lang/Runnable;)V
    .locals 3

    .line 6183
    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 6184
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ShadeController;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$zxIr_WjT9i8uiHcLBnZ9Hktxdpo;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$zxIr_WjT9i8uiHcLBnZ9Hktxdpo;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Ljava/lang/Runnable;)V

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 6188
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(I)V

    goto :goto_0

    .line 6191
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 6192
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$performDismissAllAnimations$9(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 6185
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 6186
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static matchesSelection(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eq p1, v0, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 6582
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 6584
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown selection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6580
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result p0

    if-ge p0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    return v0
.end method

.method private notifyAppearChangedListeners()V
    .locals 6

    .line 1679
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFractionBypass()F

    move-result v0

    .line 1681
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPulseHeight()F

    move-result v1

    goto :goto_0

    .line 1683
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    .line 1684
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    .line 1686
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentAppear:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentExpandedHeight:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    .line 1688
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentAppear:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    cmpl-float v2, v0, v3

    if-lez v2, :cond_2

    .line 1689
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooterTextColor()V

    .line 1692
    :cond_2
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentAppear:F

    .line 1693
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastSentExpandedHeight:F

    const/4 v2, 0x0

    .line 1694
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1695
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/BiConsumer;

    .line 1696
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1303
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 0

    .line 1308
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    if-eqz p0, :cond_0

    .line 1309
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_0
    return-void
.end method

.method private notifyOverscrollTopListener(FZ)V
    .locals 3

    .line 2487
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 2488
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    if-eqz v0, :cond_1

    .line 2489
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    return-void

    .line 2492
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz p0, :cond_2

    .line 2493
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->onOverscrollTopChanged(FZ)V

    :cond_2
    return-void
.end method

.method private onCustomOverScrolled(IZ)V
    .locals 1

    .line 2563
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2564
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    if-eqz p2, :cond_0

    .line 2566
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->springBack()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2568
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result p2

    .line 2569
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gez v0, :cond_1

    neg-int p2, v0

    int-to-float p2, p2

    .line 2570
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 2572
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 2576
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :goto_0
    return-void
.end method

.method private onDismissAllAnimationsEnd(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;I)V"
        }
    .end annotation

    .line 7140
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    .line 7142
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissAllNotifications(I)V

    goto/16 :goto_2

    .line 7145
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7147
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getShadeListCount()I

    move-result v0

    const/4 v2, 0x0

    .line 7148
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7149
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    .line 7150
    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 7155
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 7156
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v6

    .line 7159
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v7

    const/4 v8, 0x1

    .line 7154
    invoke-static {v5, v6, v0, v8, v7}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v5

    invoke-direct {v4, v1, v8, v5}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 7160
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7163
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotifications(Ljava/util/List;)V

    goto :goto_2

    .line 7166
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7167
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p2, :cond_3

    .line 7171
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 7172
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 7171
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    goto :goto_1

    .line 7176
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 7177
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 7176
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    goto :goto_1

    .line 7181
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetTranslation()V

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    .line 7186
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_2
    return-void
.end method

.method private onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 7121
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowExists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7122
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->snapViewIfNeeded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method private onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 4556
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4570
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 4571
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    return v3

    :cond_1
    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_7

    const/4 v4, -0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_1

    .line 4670
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 4586
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v0, v4, :cond_4

    goto/16 :goto_1

    .line 4592
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 4594
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StackScroller"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4599
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 4600
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 4601
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4602
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v5, v2

    .line 4603
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    if-le v2, v4, :cond_b

    .line 4604
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 4605
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 4606
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    .line 4607
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 4608
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 4658
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 4659
    iput v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 4660
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 4664
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4665
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    goto :goto_1

    .line 4614
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 4615
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    .line 4617
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v2, :cond_9

    move v2, v1

    .line 4618
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 4619
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4620
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_8

    .line 4621
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4622
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->onScrolledToTop()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4628
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v4, v0

    .line 4627
    invoke-direct {p0, v2, v4, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v2

    if-nez v2, :cond_a

    .line 4630
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 4631
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    goto :goto_1

    .line 4639
    :cond_a
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 4640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    .line 4641
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 4643
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initOrResetVelocityTracker()V

    .line 4644
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4650
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v3

    .line 4651
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 4678
    :cond_b
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    return p0
.end method

.method private onKeyguard()Z
    .locals 1

    .line 2120
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onOverScrollFling(ZI)V
    .locals 1

    .line 4434
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    int-to-float p2, p2

    .line 4435
    invoke-interface {v0, p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->flingTopOverscroll(FZ)V

    :cond_0
    const/4 p1, 0x1

    .line 4437
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 4438
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    return-void
.end method

.method private onPreDrawDuringAnimation()V
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 1467
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClippingToTopRoundedCorner()V

    .line 1468
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 1469
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackground()V

    :cond_0
    return-void
.end method

.method private onScrollTouch(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 4271
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4274
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isInsideQsContainer(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 4277
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 4278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 4279
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4282
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    const-string v3, "Invalid pointerId="

    const-string v4, "StackScroller"

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v2, v5, :cond_2

    if-eqz v0, :cond_2

    .line 4285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in onTouchEvent "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    invoke-static {p0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4285
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    if-eqz v0, :cond_13

    const/4 v2, 0x0

    if-eq v0, v6, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_4

    .line 4419
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4420
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 4421
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    goto/16 :goto_4

    .line 4412
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 4413
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 4414
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    .line 4415
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto/16 :goto_4

    .line 4398
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_16

    .line 4402
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 4403
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v13

    .line 4402
    invoke-virtual/range {v7 .. v13}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 4407
    :cond_6
    iput v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 4408
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_4

    .line 4312
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 4314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in onTouchEvent"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4318
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    .line 4319
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 4320
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int/2addr v4, v3

    .line 4321
    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4322
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 4323
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result p1

    .line 4324
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v7, :cond_a

    int-to-float v7, v5

    cmpl-float v7, v7, p1

    if-lez v7, :cond_a

    if-le v5, v0, :cond_a

    .line 4325
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    if-lez v4, :cond_9

    int-to-float v0, v4

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_9
    int-to-float v0, v4

    add-float/2addr v0, p1

    :goto_0
    float-to-int v4, v0

    .line 4332
    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_16

    .line 4334
    iput v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 4340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result p1

    .line 4341
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v0, :cond_b

    .line 4342
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_b
    if-gez v4, :cond_c

    .line 4346
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->overScrollDown(I)F

    move-result v0

    goto :goto_1

    .line 4348
    :cond_c
    invoke-direct {p0, v4, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->overScrollUp(II)F

    move-result v0

    :goto_1
    cmpl-float v2, v0, v2

    if-eqz v2, :cond_16

    float-to-int v0, v0

    .line 4356
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 4357
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    .line 4356
    invoke-direct {p0, v0, v2, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)V

    .line 4359
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    goto/16 :goto_4

    .line 4364
    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_16

    .line 4365
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    .line 4366
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4367
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    float-to-int p1, p1

    .line 4369
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->shouldOverScrollFling(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4370
    invoke-direct {p0, v6, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    goto :goto_3

    .line 4372
    :cond_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_12

    .line 4373
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    if-le v0, v3, :cond_11

    .line 4374
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_10

    if-lez p1, :cond_f

    goto :goto_2

    .line 4378
    :cond_f
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    goto :goto_3

    :cond_10
    :goto_2
    neg-int p1, p1

    .line 4376
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->fling(I)V

    goto :goto_3

    .line 4384
    :cond_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v8, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 4385
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v13

    .line 4384
    invoke-virtual/range {v7 .. v13}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4386
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 4392
    :cond_12
    :goto_3
    iput v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 4393
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->endDrag()V

    goto :goto_4

    .line 4292
    :cond_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_5

    .line 4295
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v6

    .line 4296
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 4301
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_15

    .line 4302
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 4306
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 4307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDownX:I

    .line 4308
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    :cond_16
    :goto_4
    return v6

    :cond_17
    :goto_5
    return v1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 4444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 4446
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4447
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4452
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 4453
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 4454
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    .line 4455
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private onStatePostChange()V
    .locals 6

    .line 5919
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    .line 5922
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isAnyProfilePublicMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 5923
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getViewHierarchyManager()Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/systemui/statusbar/OpNotificationViewHierarchyManager;->isAnyNotificationLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 5927
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz v4, :cond_2

    .line 5928
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->onStateChanged()V

    .line 5931
    :cond_2
    const-class v4, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 5932
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 5938
    invoke-interface {v4}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSensitiveness(ZZ)V

    .line 5941
    invoke-interface {v4}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->fromShadeLocked()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    xor-int/2addr v0, v3

    .line 5942
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandingEnabled(Z)V

    .line 5943
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    const/4 v1, 0x0

    .line 5944
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    if-eqz v0, :cond_3

    .line 5946
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    .line 5948
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    .line 5949
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 5950
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onUpdateRowStates()V

    .line 5952
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string v1, "StatusBar state changed"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    .line 5953
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateVisibility()V

    return-void
.end method

.method private onViewAddedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1

    .line 3691
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateHideSensitiveForChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 3692
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    const/4 v0, 0x0

    .line 3693
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateAddAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 3694
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 3695
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3696
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 3697
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissRtl:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setDismissRtl(Z)V

    :cond_0
    return-void
.end method

.method private onViewRemovedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V
    .locals 3

    .line 3380
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3384
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    .line 3385
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateScrollStateForRemovedChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 3386
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3388
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3389
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 3390
    :cond_1
    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    .line 3391
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 3394
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3396
    :cond_3
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 3398
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->focusNextViewIfFocused(Landroid/view/View;)V

    return-void
.end method

.method private overScrollDown(I)F
    .locals 4

    const/4 v0, 0x0

    .line 2225
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2226
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    int-to-float p1, p1

    add-float/2addr p1, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 2229
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    :cond_0
    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 2253
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    const/4 p1, 0x1

    .line 2255
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v3

    sub-float/2addr v3, v1

    .line 2257
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 2260
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_1
    return v2
.end method

.method private overScrollUp(II)F
    .locals 5

    const/4 v0, 0x0

    .line 2172
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x1

    .line 2173
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    int-to-float p1, p1

    sub-float p1, v2, p1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 2176
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    :cond_0
    cmpg-float v1, p1, v3

    if-gez v1, :cond_1

    neg-float p1, p1

    goto :goto_0

    :cond_1
    move p1, v3

    .line 2200
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    int-to-float v2, p2

    cmpl-float v4, v1, v2

    if-lez v4, :cond_3

    .line 2202
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez p1, :cond_2

    .line 2203
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result p1

    add-float/2addr p1, v1

    sub-float/2addr p1, v2

    .line 2205
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 2209
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_1

    :cond_3
    move v3, p1

    :goto_1
    return v3
.end method

.method private performDismissAllAnimations(Ljava/util/ArrayList;ZLjava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 6182
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$y6kWvZpJdX3O3_QQkE35Bd0E9Lg;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$y6kWvZpJdX3O3_QQkE35Bd0E9Lg;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;ZLjava/lang/Runnable;)V

    .line 6196
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6197
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 6202
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    const/16 p3, 0x8c

    const/16 v1, 0xb4

    .line 6209
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, p2

    move p2, v1

    move v7, v2

    :goto_0
    if-ltz v7, :cond_2

    .line 6211
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v7, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    const-wide/16 v5, 0x104

    move-object v1, p0

    move v4, p2

    .line 6216
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    const/16 v1, 0x32

    add-int/lit8 p3, p3, -0xa

    .line 6217
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p2, p3

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readCurrentMode()V
    .locals 3

    .line 6341
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_activated_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBCurrentModeValue:I

    .line 6342
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_break_mode_activated"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBBreakModeValue:I

    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 2276
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2277
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2278
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private reinflateViews()V
    .locals 2

    .line 825
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateFooterView()V

    .line 826
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateEmptyShadeView()V

    .line 827
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateViews(Landroid/view/LayoutInflater;)V

    .line 830
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateWLBBreakModeView()V

    return-void
.end method

.method private removeRemovedChildFromHeadsUpChangeAnimations(Landroid/view/View;)Z
    .locals 6

    .line 3473
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 3474
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3475
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne p1, v4, :cond_0

    .line 3477
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v5

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 3483
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 3484
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 3486
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v2
.end method

.method private requestAnimateEverything()V
    .locals 1

    .line 5559
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5560
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 5561
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 5562
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_0
    return-void
.end method

.method private requestAnimationOnViewResize(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 1377
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 1378
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 1379
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_1
    return-void
.end method

.method private requestChildrenUpdate()V
    .locals 2

    .line 1550
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 1551
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 1552
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    .line 1553
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method private runAnimationFinishedRunnables()V
    .locals 2

    .line 5097
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 5098
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 5100
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private setDimAmount(F)V
    .locals 0

    .line 5128
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimAmount:F

    .line 5129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    return-void
.end method

.method private setIsExpanded(Z)V
    .locals 3

    .line 4942
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4943
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 4944
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->setIsExpanded(Z)V

    .line 4945
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setShadeExpanded(Z)V

    .line 4946
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->setShadeExpanded(Z)V

    .line 4947
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setIsExpanded(Z)V

    if-eqz v0, :cond_2

    .line 4950
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->setIsExpanded(Z)V

    .line 4951
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updatePaddingBottom()I

    .line 4953
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWillExpand:Z

    .line 4954
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez p1, :cond_1

    .line 4955
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->collapseAllGroups()V

    .line 4956
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p1}, Lcom/android/systemui/ExpandHelper;->cancelImmediately()V

    .line 4958
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 4959
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateChronometers()V

    .line 4960
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4963
    :cond_2
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4964
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 4965
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 4966
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_3

    .line 4967
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4968
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsScrollerExpanded(Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private setMaxLayoutHeight(I)V
    .locals 1

    .line 1419
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    .line 1420
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxLayoutHeight(I)V

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setMaxLayoutHeight(I)V

    .line 1424
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    return-void
.end method

.method private setMaxOverScrollFromCurrentVelocity()V
    .locals 2

    .line 2345
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    .line 2346
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 2347
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    :cond_0
    return-void
.end method

.method private setOverScrollAmountInternal(FZZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2472
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    if-eqz p3, :cond_0

    .line 2474
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V

    goto :goto_0

    .line 2476
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result p3

    div-float p3, p1, p3

    invoke-direct {p0, p3, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZ)V

    .line 2477
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setOverScrollAmount(FZ)V

    if-eqz p2, :cond_1

    .line 2479
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    .line 2481
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :goto_0
    return-void
.end method

.method private setOverScrolledPixels(FZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2516
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    goto :goto_0

    .line 2518
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    :goto_0
    return-void
.end method

.method private setOwnScrollY(I)V
    .locals 2

    .line 5794
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq p1, v0, :cond_0

    .line 5796
    iget v1, p0, Landroid/view/ViewGroup;->mScrollX:I

    invoke-virtual {p0, v1, p1, v1, v0}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 5797
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 5798
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateOnScrollChange()V

    :cond_0
    return-void
.end method

.method private setRequestedClipBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1703
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    .line 1704
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClipping()V

    return-void
.end method

.method private setStackTranslation(F)V
    .locals 1

    .line 1878
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1879
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    .line 1880
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setStackTranslation(F)V

    .line 1881
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_0
    return-void
.end method

.method private setSwipingInProgress(Z)V
    .locals 0

    .line 4786
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4788
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private setTopPadding(IZ)V
    .locals 1

    .line 1595
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    if-eq v0, p1, :cond_1

    .line 1596
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 1597
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 1598
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    if-eqz p2, :cond_0

    .line 1599
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1600
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 1601
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1603
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    const/4 p1, 0x0

    .line 1604
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_1
    return-void
.end method

.method private setWLBBreakModeTextColor(I)V
    .locals 8

    .line 6266
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBBreakModeView:Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;

    if-eqz p1, :cond_3

    .line 6267
    sget v0, Lcom/android/systemui/R$id;->wlb_break_mode_label:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6268
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBBreakModeView:Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;

    sget v1, Lcom/android/systemui/R$id;->wlb_enable_break_text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->readCurrentMode()V

    .line 6271
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBCurrentModeValue:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->qs_panel_work_mode:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6272
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->qs_panel_life_mode:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6273
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBBreakModeValue:I

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->wlb_break_mode_on_break:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 6274
    :cond_1
    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->wlb_break_mode_active:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6275
    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBBreakModeValue:I

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->wlb_break_mode_resume:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 6276
    :cond_2
    iget-object v4, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->wlb_break_mode_take_break:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6278
    :goto_2
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->wlb_break_mode_active_text:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object v3, v6, v2

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6279
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private shouldHideSensitive(Landroid/view/View;Z)Z
    .locals 1

    .line 7540
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 7541
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7542
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isContentHidden()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private shouldHunAppearFromBottom(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)Z
    .locals 1

    .line 3960
    iget v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private shouldOverScrollFling(I)Z
    .locals 3

    const/4 v0, 0x1

    .line 3242
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 3243
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v2, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    cmpl-float p0, v1, p0

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private snapViewIfNeeded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 2148
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    .line 2149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2151
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2152
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslation()F

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 2153
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/SwipeHelper;->snapChildIfNeeded(Landroid/view/View;ZF)V

    :cond_3
    return-void
.end method

.method private springBack()V
    .locals 5

    .line 2605
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 2606
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2607
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v4, v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-nez v1, :cond_2

    if-eqz v4, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    .line 2613
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 2614
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2615
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    move v1, v3

    goto :goto_2

    .line 2618
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    .line 2619
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    move v0, v1

    move v1, v2

    .line 2621
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    const/4 v0, 0x0

    .line 2622
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2623
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_4
    return-void
.end method

.method private startAnimationToState()V
    .locals 4

    .line 3872
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3873
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateAllAnimationEvents()V

    const/4 v0, 0x0

    .line 3874
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3876
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3884
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3877
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 3878
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->startAnimationForEvents(Ljava/util/ArrayList;J)V

    .line 3879
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3880
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 3881
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateViewShadows()V

    .line 3882
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClippingToTopRoundedCorner()V

    :goto_1
    const-wide/16 v0, 0x0

    .line 3886
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    return-void
.end method

.method private startBackgroundAnimation()V
    .locals 8

    .line 2945
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v0

    .line 2946
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v1

    .line 2947
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-ne v5, v0, :cond_0

    .line 2950
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    goto :goto_1

    .line 2951
    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextSectionBoundsChange:Z

    :goto_1
    if-ne v5, v1, :cond_1

    .line 2953
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    goto :goto_2

    .line 2954
    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextSectionBoundsChange:Z

    .line 2948
    :goto_2
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->startBackgroundAnimation(ZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private targetScrollForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)I
    .locals 1

    .line 2058
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 2059
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getImeInset()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 2060
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result p0

    :goto_0
    add-int/2addr p2, p0

    return p2
.end method

.method private updateAlgorithmHeightAndPadding()V
    .locals 2

    .line 1429
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setLayoutHeight(I)V

    .line 1430
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setTopPadding(I)V

    return-void
.end method

.method private updateAlgorithmLayoutMinHeight()V
    .locals 2

    .line 1436
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    .line 1437
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result p0

    .line 1436
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setLayoutMinHeight(I)V

    return-void
.end method

.method private updateAnimationState(Landroid/view/View;)V
    .locals 1

    .line 3768
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_2

    .line 3769
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3768
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    return-void
.end method

.method private updateAnimationState(ZLandroid/view/View;)V
    .locals 0

    .line 3802
    instance-of p0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 3803
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3804
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    :cond_0
    return-void
.end method

.method private updateBackground()V
    .locals 5

    .line 2887
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    return-void

    .line 2891
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackgroundBounds()V

    .line 2892
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->didSectionBoundsChange()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2893
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextSectionBoundsChange:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    if-nez v0, :cond_2

    .line 2894
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->areSectionBoundsAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2895
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2896
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->abortBackgroundAnimators()V

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 2900
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->startBackgroundAnimation()V

    goto :goto_3

    .line 2902
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v2, v0

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 2903
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->resetCurrentBounds()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2905
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_3

    .line 2908
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->abortBackgroundAnimators()V

    .line 2910
    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 2911
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 2912
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextSectionBoundsChange:Z

    return-void
.end method

.method private updateBackgroundBounds()V
    .locals 10

    .line 2963
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 2964
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    sub-int/2addr v1, v2

    .line 2965
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 2966
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 2967
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iput v1, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2970
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_2

    .line 2971
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v0, p0

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2972
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2973
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 2978
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v0

    .line 2979
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    if-nez v1, :cond_4

    .line 2981
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_3

    :cond_4
    if-nez v0, :cond_5

    .line 2983
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    goto :goto_3

    .line 2988
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v3

    .line 2989
    invoke-virtual {v3, v4, v4, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->updateBounds(IIZ)I

    .line 2991
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2993
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->count()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-gtz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 2994
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2995
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v4

    .line 2996
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v5, v1

    move v6, v4

    :goto_5
    if-ge v6, v5, :cond_9

    aget-object v7, v1, v6

    if-ne v7, v0, :cond_8

    .line 3000
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationY(Landroid/view/View;)F

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 3001
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    goto :goto_6

    :cond_8
    move v8, v3

    .line 3003
    :goto_6
    invoke-virtual {v7, v3, v8, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->updateBounds(IIZ)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    move v2, v4

    goto :goto_5

    :cond_9
    return-void
.end method

.method private updateBackgroundDimming()V
    .locals 4

    .line 1219
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    const-string v1, "StackScroller"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateBackgroundDimming, should not draw notification background!"

    .line 1221
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1228
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->smoothStep(FFF)F

    move-result v0

    .line 1230
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgColor:I

    const/4 v3, -0x1

    invoke-static {v2, v3, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 1232
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    if-eq v2, v0, :cond_1

    .line 1233
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    .line 1234
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBackgroundDimming, set notification background color: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateChildren()V
    .locals 2

    .line 1446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateScrollStateForAddedChildren()V

    .line 1447
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1449
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    .line 1447
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setCurrentScrollVelocity(F)V

    .line 1454
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setScrollY(I)V

    .line 1456
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->resetViewStates(Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 1457
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_1

    .line 1458
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_1

    .line 1460
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->startAnimationToState()V

    :goto_1
    return-void
.end method

.method private updateChronometerForChild(Landroid/view/View;)V
    .locals 1

    .line 4985
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 4986
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4987
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setChronometerRunning(Z)V

    :cond_0
    return-void
.end method

.method private updateChronometers()V
    .locals 3

    .line 4977
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4979
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateClippingToTopRoundedCorner()V
    .locals 10

    .line 1475
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1477
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1475
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1478
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    .line 1480
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 1481
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1482
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_5

    .line 1485
    :cond_0
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    .line 1486
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    .line 1487
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v9, v9, v7

    if-lez v9, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpg-float v9, v9, v8

    if-ltz v9, :cond_2

    .line 1488
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v9, v9, v7

    if-ltz v9, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpg-float v8, v9, v8

    if-gtz v8, :cond_3

    :cond_2
    move v8, v3

    goto :goto_1

    :cond_3
    move v8, v2

    :goto_1
    if-eqz v5, :cond_5

    .line 1489
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v3

    :goto_3
    and-int/2addr v5, v8

    if-eqz v5, :cond_6

    .line 1490
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v7, v5

    const/4 v5, 0x0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_4

    :cond_6
    const/high16 v5, -0x40800000    # -1.0f

    :goto_4
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDistanceToTopRoundness(F)V

    move v5, v2

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private updateContentHeight()V
    .locals 17

    move-object/from16 v0, p0

    .line 2767
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v1, v1

    .line 2771
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v8, v3

    move v6, v4

    move v7, v6

    move v9, v7

    move v10, v9

    .line 2773
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_8

    .line 2774
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2775
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    const/4 v13, 0x1

    if-ne v11, v12, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v12

    if-eqz v12, :cond_0

    move v12, v13

    goto :goto_1

    :cond_0
    move v12, v4

    .line 2776
    :goto_1
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_7

    .line 2777
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasNoContentHeight()Z

    move-result v14

    if-nez v14, :cond_7

    if-nez v12, :cond_7

    const/4 v12, -0x1

    if-eq v2, v12, :cond_1

    if-lt v7, v2, :cond_1

    move v12, v13

    goto :goto_2

    :cond_1
    move v12, v4

    :goto_2
    if-eqz v12, :cond_2

    .line 2782
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    move v12, v10

    move v10, v13

    goto :goto_3

    .line 2785
    :cond_2
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    .line 2787
    :goto_3
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v13

    cmpl-float v14, v13, v3

    if-ltz v14, :cond_3

    .line 2790
    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v8, v8

    invoke-static {v1, v8, v13}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 2794
    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v8, v8

    iget v14, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v14, v14

    invoke-static {v8, v14, v13}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    goto :goto_5

    .line 2799
    :cond_3
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v1, v1

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v14, v13

    invoke-static {v3, v1, v14}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    cmpl-float v14, v8, v3

    if-lez v14, :cond_4

    int-to-float v14, v1

    .line 2804
    iget v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v15, v15

    invoke-static {v14, v15, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    goto :goto_4

    :cond_4
    int-to-float v8, v1

    :goto_4
    int-to-float v1, v1

    move/from16 v16, v8

    move v8, v1

    move/from16 v1, v16

    :goto_5
    if-eqz v9, :cond_5

    int-to-float v9, v9

    add-float/2addr v9, v1

    float-to-int v9, v9

    :cond_5
    int-to-float v1, v9

    .line 2816
    invoke-virtual {v0, v5, v11, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateGapHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F

    move-result v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, v12

    float-to-int v9, v1

    add-int/lit8 v7, v7, 0x1

    if-eqz v10, :cond_6

    goto :goto_6

    :cond_6
    move v1, v8

    move-object v5, v11

    move v8, v13

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2826
    :cond_8
    :goto_6
    iput v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:I

    .line 2830
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v9, v1

    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomMargin:I

    add-int/2addr v9, v1

    iput v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    .line 2831
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateScrollability()V

    .line 2832
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 2833
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setLayoutMaxHeight(I)V

    return-void
.end method

.method private updateContinuousBackgroundDrawing()V
    .locals 2

    .line 6541
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyAwake()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 6542
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6543
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContinuousBackgroundUpdate:Z

    if-eq v0, v1, :cond_2

    .line 6544
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContinuousBackgroundUpdate:Z

    if-eqz v0, :cond_1

    .line 6546
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    .line 6548
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateContinuousShadowDrawing()V
    .locals 3

    .line 6555
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 6556
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6557
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 6559
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    .line 6561
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 6563
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    :cond_3
    return-void
.end method

.method private updateDismissRtlSetting(Z)V
    .locals 3

    .line 778
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissRtl:Z

    const/4 v0, 0x0

    .line 779
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 780
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 781
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 782
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setDismissRtl(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateFirstAndLastBackgroundViews()V
    .locals 7

    .line 3642
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v0

    .line 3643
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 3645
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 3647
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v2

    .line 3649
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildWithBackground()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v1

    .line 3650
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastChildWithBackground()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v3

    .line 3651
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    .line 3652
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildrenWithBackground()Ljava/util/List;

    move-result-object v6

    .line 3651
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->updateFirstAndLastViewsForAllSections([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Ljava/util/List;)Z

    move-result v4

    .line 3654
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->UpdateFirstVisibleNotHeaderChild()V

    .line 3656
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    if-eq v1, v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v6

    .line 3657
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-ne v3, v2, :cond_4

    .line 3658
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateBottomOnLayout:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    :cond_4
    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 3659
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextSectionBoundsChange:Z

    goto :goto_4

    .line 3661
    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 3662
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 3663
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextSectionBoundsChange:Z

    .line 3665
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setLastVisibleBackgroundChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 3666
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateRoundedChildren([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;)V

    .line 3667
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateBottomOnLayout:Z

    .line 3668
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private updateFooterTextColor()V
    .locals 3

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFooterTextColor mScrimState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrimState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    .line 597
    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 598
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrimState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->setTextColor(I)V

    goto :goto_1

    .line 599
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method private updateForcedScroll()V
    .locals 4

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1525
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1526
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1528
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1529
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1530
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v1

    .line 1531
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)I

    move-result v2

    .line 1532
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v1, v0

    const/4 v0, 0x0

    .line 1537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1541
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v2, v0, :cond_2

    if-ge v1, v2, :cond_3

    .line 1542
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_3
    return-void
.end method

.method private updateForwardAndBackwardScrollability()V
    .locals 5

    .line 2873
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2874
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 2875
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-ne v0, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2877
    :cond_3
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    .line 2878
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eqz v1, :cond_4

    const/16 v0, 0x800

    .line 2880
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_4
    return-void
.end method

.method private updateHideSensitiveForChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 1

    .line 3716
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHideSensitive()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->shouldHideSensitive(Landroid/view/View;Z)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    return-void
.end method

.method private updateNotificationAnimationStates()V
    .locals 7

    .line 3756
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 3757
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setAnimationsEnabled(Z)V

    .line 3758
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_4

    .line 3760
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3761
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v6, :cond_3

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    move v6, v1

    goto :goto_4

    :cond_3
    :goto_3
    move v6, v2

    :goto_4
    and-int/2addr v0, v6

    .line 3762
    invoke-direct {p0, v0, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private updateOnScrollChange()V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    .line 5804
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method private updateOwnTranslationZ()V
    .locals 2

    .line 5384
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5385
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5386
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5387
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5390
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationZ(F)V

    return-void
.end method

.method private updatePaddingBottom()I
    .locals 4

    .line 7470
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNavigaitonBarMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 7471
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    if-eqz v3, :cond_1

    if-eq v3, v2, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_3

    .line 7474
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBottom:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBottomOffset:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsImeShow:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    :goto_1
    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBottom:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBottomOffset:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    :goto_2
    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7475
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 7482
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPaddingBottom(I)V

    .line 7483
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz p0, :cond_4

    .line 7484
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setPaddingBottom(I)V

    :cond_4
    return v1
.end method

.method private updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 3

    .line 5023
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5024
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5026
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    if-eq p1, v0, :cond_4

    .line 5027
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5031
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 5032
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5033
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    .line 5035
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 5036
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 5038
    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v2

    :goto_0
    if-eq p1, v2, :cond_3

    .line 5039
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_3

    .line 5040
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr p1, v2

    sub-int/2addr v1, p1

    :cond_3
    int-to-float p1, v1

    cmpl-float v1, v0, p1

    if-lez v1, :cond_4

    .line 5048
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    const/4 p1, 0x1

    .line 5050
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    :cond_4
    return-void
.end method

.method private updateScrollStateForAddedChildren()V
    .locals 6

    .line 1498
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1502
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1503
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 1504
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1505
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v3

    .line 1506
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    .line 1507
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    goto :goto_1

    :cond_1
    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_1

    .line 1508
    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 1509
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v4

    .line 1510
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v3, v4, :cond_3

    add-int/2addr v4, v2

    .line 1514
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1519
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    return-void
.end method

.method private updateScrollStateForRemovedChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 5

    .line 3535
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v0

    .line 3536
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    .line 3539
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    goto :goto_0

    .line 3544
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v1, v4

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    :goto_0
    float-to-int v1, v1

    .line 3549
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v1

    add-int v1, v0, p1

    .line 3551
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gt v1, v2, :cond_1

    sub-int/2addr v2, p1

    .line 3554
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_1

    :cond_1
    if-ge v0, v2, :cond_2

    .line 3558
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateScrollability()V
    .locals 2

    .line 2863
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2864
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eq v0, v1, :cond_1

    .line 2865
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    .line 2866
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 2867
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    :cond_1
    return-void
.end method

.method private updateSensitiveness(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 5155
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSensitiveness(ZZ)V

    return-void
.end method

.method private updateViewShadows()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 5231
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5232
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5233
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 5234
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5237
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mViewPositionComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    move v2, v0

    .line 5241
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 5242
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5243
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v4

    if-nez v1, :cond_2

    move v5, v4

    goto :goto_2

    .line 5244
    :cond_2
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v5

    :goto_2
    sub-float/2addr v5, v4

    const/4 v4, 0x0

    cmpg-float v6, v5, v4

    if-lez v6, :cond_4

    const v6, 0x3dcccccd    # 0.1f

    cmpl-float v7, v5, v6

    if-ltz v7, :cond_3

    goto :goto_3

    .line 5250
    :cond_3
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    .line 5251
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    sub-float/2addr v4, v7

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getExtraBottomPadding()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    div-float/2addr v5, v6

    .line 5254
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getOutlineAlpha()F

    move-result v6

    float-to-int v4, v4

    .line 5255
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getOutlineTranslation()I

    move-result v1

    .line 5252
    invoke-virtual {v3, v5, v6, v4, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setFakeShadowIntensity(FFII)V

    goto :goto_4

    .line 5248
    :cond_4
    :goto_3
    invoke-virtual {v3, v4, v4, v0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setFakeShadowIntensity(FFII)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_1

    .line 5260
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private updateVisibility()V
    .locals 2

    .line 5394
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    .line 5395
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addContainerView(Landroid/view/View;)V
    .locals 0

    .line 5669
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 5670
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addListItem(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;)V
    .locals 0

    .line 5675
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addContainerView(Landroid/view/View;)V

    return-void
.end method

.method public addOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 6075
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 1

    .line 3796
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getTopChange()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setExpandAnimationTopChange(I)V

    .line 3797
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public bindRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 3782
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$IHIrVGB57sj7AVcNTUYvN9pqWFg;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$IHIrVGB57sj7AVcNTUYvN9pqWFg;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAwayListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public calculateAppearFraction(F)F
    .locals 1

    .line 1865
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v0

    .line 1866
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result p0

    sub-float/2addr p1, p0

    sub-float/2addr v0, p0

    div-float/2addr p1, v0

    return p1
.end method

.method public calculateAppearFractionBypass()F
    .locals 2

    .line 6464
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPulseHeight()F

    move-result v0

    .line 6465
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getWakeUpHeight()F

    move-result v1

    sub-float/2addr v0, v1

    .line 6469
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    .line 6470
    invoke-static {v1, p0, v0}, Landroid/util/MathUtils;->smoothStep(FFF)F

    move-result p0

    return p0
.end method

.method public calculateGapHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F
    .locals 6

    .line 2850
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 2851
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getAnchorViewIndex()I

    move-result v2

    move v3, p3

    move-object v4, p2

    move-object v5, p1

    .line 2850
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->getGapHeightForChild(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;IILandroid/view/View;Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public cancelExpandHelper()V
    .locals 0

    .line 5313
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    .line 4713
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    return-void
.end method

.method public changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V
    .locals 4

    .line 3835
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 3836
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v0, :cond_4

    .line 3840
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 3844
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 3845
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    move v2, v3

    .line 3848
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempting to re-position "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    const-string/jumbo p2, "transient"

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 3849
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " view {"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StackScroller"

    .line 3848
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 3856
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_3

    if-eq v0, p2, :cond_3

    .line 3857
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 3858
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setChangingPosition(Z)V

    .line 3859
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3860
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3861
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setChangingPosition(Z)V

    .line 3862
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 3863
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_3

    .line 3864
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3865
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_3
    return-void

    .line 3837
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Reentrant call to changeViewPosition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkSnoozeLeavebehind()V
    .locals 8

    .line 4845
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    if-eqz v0, :cond_0

    .line 4846
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    const/4 v0, 0x0

    .line 4849
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    :cond_0
    return-void
.end method

.method public cleanUpViewStateForEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 3372
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    .line 3373
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getTranslatingParentView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3374
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->clearTranslatingParentView()V

    :cond_0
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1

    .line 4804
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 4805
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 4806
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    :cond_0
    return-void
.end method

.method clearNotifications(IZ)V
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_7

    .line 6108
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 6109
    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_6

    .line 6110
    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 6112
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v7

    .line 6113
    invoke-direct {p0, v6, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->includeChildInDismissAll(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    .line 6114
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6115
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 6116
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-lez v7, :cond_2

    .line 6117
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6120
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    if-eqz v7, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 6121
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v9, v3

    .line 6124
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 6126
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 6127
    invoke-direct {p0, v6, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->includeChildInDismissAll(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6128
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_4

    .line 6129
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6130
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v8

    .line 6131
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_4

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 6132
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-lez v8, :cond_4

    .line 6133
    :cond_5
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 6143
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$NotificationPanelEvent;->fromSelection(I)Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 6145
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_8

    .line 6147
    const-class p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0, v3}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(I)V

    :cond_8
    return-void

    .line 6153
    :cond_9
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$W38LST9RLtQ7TNpSBx0Py-xWpOY;

    invoke-direct {v0, p0, v2, p1}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$W38LST9RLtQ7TNpSBx0Py-xWpOY;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Ljava/util/ArrayList;I)V

    invoke-direct {p0, v1, p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->performDismissAllAnimations(Ljava/util/ArrayList;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V
    .locals 7

    .line 4763
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 4764
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v1

    .line 4765
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getTranslatingParentView()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 4767
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 4770
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4775
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4777
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    const/4 p1, 0x1

    .line 4780
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetExposedMenuView(ZZ)V

    :cond_2
    return-void
.end method

.method public containsView(Landroid/view/View;)Z
    .locals 0

    .line 3790
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;
    .locals 1

    .line 904
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$11;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    return-object v0
.end method

.method protected createStackScrollAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;
    .locals 1

    .line 4146
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V
    .locals 10

    .line 2142
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    int-to-long v4, p3

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object v1, p1

    move-object v3, p2

    move-wide v7, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1014
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 5996
    const-class v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5997
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    const-string v3, "T"

    const-string v4, "f"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    const/4 v5, 0x1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    .line 5998
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isQsCustomizerShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    aput-object v5, v0, v1

    const/4 v1, 0x3

    .line 5999
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-nez v5, :cond_2

    const-string/jumbo v5, "visible"

    goto :goto_2

    .line 6000
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-ne v5, v6, :cond_3

    const-string v5, "gone"

    goto :goto_2

    :cond_3
    const-string v5, "invisible"

    :goto_2
    aput-object v5, v0, v1

    const/4 v1, 0x4

    .line 6002
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x5

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 6003
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x6

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    .line 6004
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x7

    .line 6005
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    aput-object v3, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    .line 6006
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "[%s: pulsing=%s qsCustomizerShowing=%s visibility=%s alpha:%f scrollY:%d maxTopPadding:%d showShelfOnly=%s qsExpandFraction=%f]"

    .line 5993
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6007
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Number of children: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6009
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    move v1, v2

    :goto_4
    if-ge v1, v0, :cond_7

    .line 6012
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 6013
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6014
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v4, :cond_6

    .line 6015
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6017
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "    no viewState!!!"

    .line 6019
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string v4, "    "

    .line 6021
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6022
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6023
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6024
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6028
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result v0

    .line 6029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Transient Views: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v2

    :goto_6
    if-ge v1, v0, :cond_8

    .line 6031
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 6032
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 6034
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 6035
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Dragged Views: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7
    if-ge v2, v1, :cond_9

    .line 6038
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 6039
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6043
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mShouldDrawNotificationBackground: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6044
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBgColor: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgColor:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6045
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCachedBackgroundColor: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6048
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isScrollingEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6049
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mExpandedHeight: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6050
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mStatusBarState: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6051
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsBeingDragged: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6052
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsExpanded: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6053
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPanelTracking: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6054
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mExpandingNotification: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6055
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mTrackingHeadsUp: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6056
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSwipingInProgress: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6057
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mDisallowScrollingInThisMotion: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6058
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mScrollable: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected fling(I)V
    .locals 14

    .line 3078
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 3079
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    const/4 v2, 0x0

    .line 3080
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v5, 0x0

    if-gez p1, :cond_0

    cmpl-float v6, v1, v5

    if-lez v6, :cond_0

    .line 3085
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    float-to-int v6, v1

    sub-int/2addr v3, v6

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3087
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 3088
    invoke-virtual {p0, v5, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 3089
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v0, v0

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    iput v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    cmpl-float v0, v3, v5

    if-lez v0, :cond_1

    .line 3095
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3097
    invoke-virtual {p0, v5, v2, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 3098
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 3099
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    .line 3103
    :cond_1
    iput v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 3108
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 3109
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3110
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v1, :cond_2

    .line 3111
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    move v11, v0

    .line 3113
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 3114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v0, :cond_3

    if-ltz v5, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x3fffffff    # 1.9999999f

    :goto_1
    move v13, v2

    move v7, p1

    .line 3113
    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 3117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    :cond_4
    return-void
.end method

.method public forceNoOverlappingRendering(Z)V
    .locals 0

    .line 5734
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    return-void
.end method

.method public generateAddAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 1

    .line 3817
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFullyHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3819
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 3821
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p2, 0x1

    .line 3823
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3825
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUp(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez p2, :cond_2

    .line 3826
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFullyHidden()Z

    move-result p2

    if-nez p2, :cond_2

    .line 3827
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3828
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public generateChildOrderChangedEvent()V
    .locals 1

    .line 5634
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5635
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    .line 5636
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 5637
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_0
    return-void
.end method

.method public generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 5684
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getHeadsUpAnimationView()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    .line 5685
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    return-void
.end method

.method public generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 3

    .line 5690
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    if-eqz v0, :cond_2

    .line 5691
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 5692
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 5693
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWillExpand:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 5694
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 5696
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_2
    return-void
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 0

    .line 5204
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    return-object p0
.end method

.method public getBottomMostNotificationBottom()F
    .locals 6

    .line 5530
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 5533
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5534
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 5537
    :cond_0
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 5538
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v4, v3

    cmpl-float v3, v4, v1

    if-lez v3, :cond_1

    move v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5543
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getStackTranslation()F

    move-result p0

    add-float/2addr v1, p0

    return v1
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 2

    .line 2012
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 2013
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method public getContainerChildAt(I)Landroid/view/View;
    .locals 0

    .line 5650
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getContainerChildCount()I
    .locals 0

    .line 5644
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getCurrentOverScrollAmount(Z)F
    .locals 0

    .line 2505
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result p0

    return p0
.end method

.method public getCurrentOverScrolledPixels(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 2510
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    :goto_0
    return p0
.end method

.method public getDragDownCallback()Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    .locals 0

    .line 7309
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    return-object p0
.end method

.method public getEmptyBottomMargin()I
    .locals 1

    .line 4840
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getEmptyShadeViewHeight()I
    .locals 0

    .line 5525
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getExpandHelperCallback()Lcom/android/systemui/ExpandHelper$Callback;
    .locals 0

    .line 7444
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelperCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object p0
.end method

.method public getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 5

    .line 2660
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2662
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2663
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v2, v3, :cond_0

    .line 2664
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFooterViewHeightWithPadding()I
    .locals 2

    .line 5518
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGapHeight:I

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getHeadsUpCallback()Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;
    .locals 0

    .line 7329
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    return-object p0
.end method

.method public getHostView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getIntrinsicContentHeight()I
    .locals 0

    .line 1712
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:I

    return p0
.end method

.method public getIntrinsicPadding()I
    .locals 0

    .line 5324
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    return p0
.end method

.method public getLastChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 4

    .line 2727
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2729
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2730
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v1, v2, :cond_0

    .line 2731
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayoutMinHeight()I
    .locals 3

    .line 3287
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3288
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    .line 3289
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3292
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 3293
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getAppearFraction()F

    move-result v2

    .line 3290
    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 3294
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    .line 3296
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopHeadsUpPinnedHeight()I

    move-result p0

    return p0

    .line 3299
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMinExpansionHeight()I
    .locals 3

    .line 5894
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 5895
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWaterfallTopInset:I

    add-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public getNotGoneChildCount()I
    .locals 6

    .line 2753
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2756
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2757
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->willBeGone()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 0

    .line 5874
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object p0
.end method

.method public getOpeningHeight()F
    .locals 2

    .line 5963
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5964
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 5966
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result p0

    return p0
.end method

.method public getPositionInLinearLayout(Landroid/view/View;)I
    .locals 14

    .line 3576
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isChildInGroup(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3579
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 3580
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3583
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    move v7, v5

    .line 3585
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_9

    .line 3586
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 3587
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    move v9, v4

    :goto_2
    if-eqz v9, :cond_5

    .line 3588
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasNoContentHeight()Z

    move-result v10

    if-nez v10, :cond_5

    .line 3589
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v10

    cmpl-float v11, v10, v3

    if-ltz v11, :cond_2

    .line 3592
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v6, v6

    invoke-static {v2, v6, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    .line 3596
    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v6, v6

    iget v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v11, v11

    invoke-static {v6, v11, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    goto :goto_4

    .line 3601
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v2, v2

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v10

    invoke-static {v3, v2, v11}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    cmpl-float v11, v6, v3

    if-lez v11, :cond_3

    int-to-float v11, v2

    .line 3606
    iget v12, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v12, v12

    invoke-static {v11, v12, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    goto :goto_3

    :cond_3
    int-to-float v6, v2

    :goto_3
    int-to-float v2, v2

    move v13, v6

    move v6, v2

    move v2, v13

    :goto_4
    if-eqz v7, :cond_4

    int-to-float v7, v7

    add-float/2addr v7, v2

    float-to-int v2, v7

    move v7, v2

    :cond_4
    move v2, v6

    move v6, v10

    :cond_5
    if-ne v8, p1, :cond_7

    if-eqz v0, :cond_6

    .line 3622
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPositionOfChild(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result p0

    add-int/2addr v7, p0

    :cond_6
    return v7

    :cond_7
    if-eqz v9, :cond_8

    .line 3627
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    return v4
.end method

.method public getPulseHeight()F
    .locals 0

    .line 6404
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getPulseHeight()F

    move-result p0

    return p0
.end method

.method public getStackTranslation()F
    .locals 0

    .line 1873
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    return p0
.end method

.method public getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;
    .locals 0

    .line 963
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    return-object p0
.end method

.method public getTopPadding()I
    .locals 0

    .line 1590
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    return p0
.end method

.method public getTopPaddingOverflow()F
    .locals 0

    .line 3304
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    return p0
.end method

.method public getViewParentForNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getVisibleNotificationCount()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1562
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1563
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1564
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    instance-of v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getWLBCurrentMode()I
    .locals 0

    .line 6346
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->readCurrentMode()V

    .line 6347
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBCurrentModeValue:I

    return p0
.end method

.method public getWakeUpHeight()F
    .locals 1

    .line 807
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildWithBackground()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 809
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 810
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getHeadsUpHeightWithoutHeader()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 812
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public goToFullShade(J)V
    .locals 1

    const/4 v0, 0x1

    .line 5305
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 5306
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 5307
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 5308
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public hasActiveClearableNotifications(I)Z
    .locals 5

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 888
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 890
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 891
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v4, :cond_1

    goto :goto_1

    .line 894
    :cond_1
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 895
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->matchesSelection(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 5740
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->hasOverlappingRendering()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPulsingNotifications()Z
    .locals 0

    .line 2858
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    return p0
.end method

.method public hideMediaControlIfNeeded()V
    .locals 1

    .line 7530
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-virtual {v0}, Lcom/android/systemui/media/KeyguardMediaController;->getView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7531
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-virtual {p0}, Lcom/android/systemui/media/KeyguardMediaController;->getView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected inflateFooterView()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6231
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->status_bar_notification_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 6233
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$wRz_cKR0VjESbMoAvlmPqYy5DCI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$wRz_cKR0VjESbMoAvlmPqYy5DCI;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/FooterView;->setDismissButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 6241
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$tCwjRwJ30PZe98o-BqPRQvVRpRU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$tCwjRwJ30PZe98o-BqPRQvVRpRU;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/FooterView;->setManageButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 6244
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setFooterView(Lcom/android/systemui/statusbar/notification/row/FooterView;)V

    return-void
.end method

.method public isAddOrRemoveAnimationPending()Z
    .locals 1

    .line 3810
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 3811
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBelowLastNotification(FF)Z
    .locals 7

    .line 5568
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_5

    .line 5570
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5571
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 5572
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    cmpl-float v5, v4, p2

    if-lez v5, :cond_0

    return v2

    .line 5577
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    .line 5578
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    .line 5579
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-ne v3, v6, :cond_2

    if-nez v5, :cond_4

    .line 5580
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    sub-float v3, p1, v3

    sub-float v4, p2, v4

    invoke-virtual {v6, v3, v4}, Lcom/android/systemui/statusbar/notification/row/FooterView;->isOnEmptySpace(FF)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 5585
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-ne v3, v4, :cond_3

    return v1

    :cond_3
    if-nez v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5594
    :cond_5
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr p1, p0

    cmpl-float p0, p2, p1

    if-lez p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1
.end method

.method isDimmed()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5123
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDimmed()Z

    move-result p0

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 5758
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    return p0
.end method

.method public isFooterViewContentVisible()Z
    .locals 0

    .line 5513
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->isContentVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFooterViewNotGone()Z
    .locals 2

    .line 5506
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-eqz v0, :cond_0

    .line 5507
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 5508
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->willBeGone()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullyHidden()Z
    .locals 0

    .line 6064
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p0

    return p0
.end method

.method public isInContentBounds(F)Z
    .locals 1

    .line 4154
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInVisibleLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 1402
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    .line 1403
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1408
    :cond_0
    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    and-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_1

    return v0

    .line 1411
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method protected isInsideQsContainer(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 4429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPulseExpanding()Z
    .locals 0

    .line 1314
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result p0

    return p0
.end method

.method public isScrolledToBottom()Z
    .locals 1

    .line 4828
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScrolledToTop()Z
    .locals 0

    .line 4818
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$bindRow$7$NotificationStackScrollLayout(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$bindRow$7(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$clearNotifications$8$NotificationStackScrollLayout(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$clearNotifications$8(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public synthetic lambda$inflateEmptyShadeView$13$NotificationStackScrollLayout(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$inflateEmptyShadeView$13(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$inflateFooterView$11$NotificationStackScrollLayout(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$inflateFooterView$11(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$inflateFooterView$12$NotificationStackScrollLayout(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$inflateFooterView$12(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$inflateWLBBreakModeView$14$NotificationStackScrollLayout(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$inflateWLBBreakModeView$14(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$0$NotificationStackScrollLayout()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$new$0()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$1$NotificationStackScrollLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$new$1()V

    return-void
.end method

.method public synthetic lambda$new$2$NotificationStackScrollLayout(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$new$2(Lcom/android/internal/colorextraction/ColorExtractor;I)V

    return-void
.end method

.method public synthetic lambda$new$3$NotificationStackScrollLayout(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$5$NotificationStackScrollLayout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$new$5(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$6$NotificationStackScrollLayout(Lcom/android/systemui/media/KeyguardMediaController;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$new$6(Lcom/android/systemui/media/KeyguardMediaController;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onDynamicPrivacyChanged$15$NotificationStackScrollLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$onDynamicPrivacyChanged$15()V

    return-void
.end method

.method public synthetic lambda$performDismissAllAnimations$10$NotificationStackScrollLayout(ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$performDismissAllAnimations$10(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$performDismissAllAnimations$9$NotificationStackScrollLayout(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->lambda$performDismissAllAnimations$9(Ljava/lang/Runnable;)V

    return-void
.end method

.method public lockScrollTo(Landroid/view/View;)V
    .locals 1

    .line 2023
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    .line 2026
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 2027
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    return-void
.end method

.method public notifyGroupChildAdded(Landroid/view/View;)V
    .locals 0

    .line 3740
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyGroupChildAdded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method public notifyGroupChildAdded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 3735
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onViewAddedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method public notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 3729
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyGroupChildRemoved(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public notifyGroupChildRemoved(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 3724
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public notifyHideAnimationStart(Z)V
    .locals 2

    .line 5402
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x3fe66666    # 1.8f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 5403
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundXFactor:F

    if-eqz p1, :cond_2

    .line 5405
    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 5406
    :cond_2
    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideXInterpolator:Landroid/view/animation/Interpolator;

    :cond_3
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 2066
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomInset:I

    const/4 v0, 0x0

    .line 2068
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWaterfallTopInset:I

    .line 2069
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2071
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWaterfallTopInset:I

    .line 2077
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 2078
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-le v1, v0, :cond_1

    .line 2081
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2082
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2083
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2086
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 926
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 927
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    const/4 v2, 0x2

    .line 928
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 929
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 931
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 933
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 938
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oneplus_wlb_activated_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 939
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oneplus_wlb_break_mode_activated"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "StackScroller"

    const-string v1, "onAttachedToWindow, register StackScroller to ConfigurationController"

    .line 943
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onUiModeChanged()V

    return-void
.end method

.method public onChildAnimationFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 5064
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 5065
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 5066
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    .line 5067
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTransient()V

    .line 5068
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearHeadsUpDisappearRunning()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2126
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    .line 2128
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 2129
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 2130
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    int-to-float p1, p1

    .line 2131
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 2132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 2134
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10501af

    .line 2135
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBottom:I

    .line 2136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updatePaddingBottom()I

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 821
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->reinflateViews()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 951
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 952
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 953
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 956
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 993
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 994
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSections:[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 995
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 996
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->drawBackground(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 998
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_3

    .line 999
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->drawHeadsUpBackground(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDynamicPrivacyChanged()V
    .locals 1

    .line 6448
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6450
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateBottomOnLayout:Z

    .line 6453
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$CjO1PNXyUMIULI5IqCNF-lCnRYU;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$CjO1PNXyUMIULI5IqCNF-lCnRYU;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExpansionStarted()V
    .locals 2

    const/4 v0, 0x1

    .line 4860
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 4861
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setExpansionChanging(Z)V

    .line 4862
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    return-void
.end method

.method public onExpansionStopped()V
    .locals 2

    const/4 v0, 0x0

    .line 4867
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 4868
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    .line 4869
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setExpansionChanging(Z)V

    .line 4870
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 4871
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 4872
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    .line 4873
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViews()V

    .line 4874
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearUserLockedViews()V

    .line 4875
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 4876
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4877
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4878
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 790
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 792
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateEmptyShadeView()V

    .line 793
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateFooterView()V

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$U5xT0qKII52vil_DFEsN5YX5CE0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$U5xT0qKII52vil_DFEsN5YX5CE0;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setVisibilityLocationProvider(Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;)V

    .line 795
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAllowLongPress:Z

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$0lGYUT66Z7cr4TZs4rdZ8M7DQkw;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$0lGYUT66Z7cr4TZs4rdZ8M7DQkw;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setLongPressListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;)V

    .line 799
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->inflateWLBBreakModeView()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 4231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4235
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 4236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 4238
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_4

    const/16 v0, 0x9

    .line 4239
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    .line 4241
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 4248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v2

    .line 4249
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v0, v3, v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    if-le v0, v2, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    if-eq v1, v3, :cond_4

    .line 4257
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    const/4 p0, 0x1

    return p0

    .line 4266
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 2

    .line 4993
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4994
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 4995
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 4996
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 4997
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4998
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 5000
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5002
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v1

    :goto_1
    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    .line 5005
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    if-ne v0, v1, :cond_3

    .line 5006
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    :cond_3
    if-eqz p2, :cond_4

    .line 5010
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestAnimationOnViewResize(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 5012
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5601
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5602
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 5603
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 5607
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 5608
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 5615
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5616
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5617
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 5618
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eqz v0, :cond_0

    .line 5619
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 5621
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 5623
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-eqz p0, :cond_1

    .line 5624
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 5625
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 5629
    :cond_1
    const-class p0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 4477
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initDownStates(Landroid/view/MotionEvent;)V

    .line 4478
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 4480
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 4482
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4483
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 4484
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v1, :cond_1

    .line 4487
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v1, :cond_1

    .line 4488
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 4491
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    if-nez v4, :cond_2

    .line 4496
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v4, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v2

    .line 4499
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move v5, v2

    .line 4500
    :goto_3
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    if-nez v3, :cond_4

    if-nez v1, :cond_4

    .line 4502
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 4503
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 4507
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 4508
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    :cond_5
    if-nez v4, :cond_6

    if-nez v1, :cond_6

    if-nez v3, :cond_6

    .line 4510
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v2, v6

    :cond_7
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1354
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 p3, 0x0

    move p4, p3

    .line 1355
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 1356
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 1359
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1360
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, p2

    sub-float v2, p1, v0

    float-to-int v2, v2

    add-float/2addr v0, p1

    float-to-int v0, v0

    float-to-int v1, v1

    .line 1361
    invoke-virtual {p5, v2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1366
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxLayoutHeight(I)V

    .line 1367
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 1368
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 1369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1370
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFirstAndLastBackgroundViews()V

    .line 1371
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 1372
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateOwnTranslationZ()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1322
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1323
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNavigaitonBarMode()I

    move-result v4

    if-ne v4, v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1324
    :goto_1
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1325
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 1326
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1327
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    if-eqz v0, :cond_2

    .line 1329
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v6, v5, :cond_3

    goto :goto_2

    :cond_2
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v6, v5

    const/16 v5, 0x32

    if-le v6, v5, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 1330
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBottomLandscapeOffset:I

    goto :goto_3

    :cond_4
    move v0, v3

    .line 1331
    :goto_3
    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBottomOffset:I

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    const/4 v2, 0x4

    :goto_4
    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    add-int/2addr p2, v4

    .line 1333
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1335
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1336
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    .line 1337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1336
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1339
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1344
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_5
    if-ge v3, v0, :cond_6

    .line 1346
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method public onOverlayChanged()V
    .locals 3

    .line 842
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v2, 0x1010571

    .line 843
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 842
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOverlayChanged newRadius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StackScroller"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v1, :cond_0

    .line 852
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onDensityOrFontScaleChanged()V

    .line 855
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    if-eq v1, v0, :cond_1

    .line 856
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCornerRadius:I

    .line 857
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 859
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->reinflateViews()V

    return-void
.end method

.method public onPanelTrackingStarted()V
    .locals 2

    const/4 v0, 0x1

    .line 4916
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 4917
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPanelTracking(Z)V

    .line 4918
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetExposedMenuView(ZZ)V

    return-void
.end method

.method public onPanelTrackingStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 4923
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 4924
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPanelTracking(Z)V

    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 5017
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 5018
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 837
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 4172
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 4173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    .line 4174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 4175
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 4177
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    .line 4178
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v5, :cond_3

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    .line 4180
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v5, v3}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 4182
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 4183
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 4184
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v7, :cond_4

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v5, :cond_4

    .line 4186
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->dispatchDownEventToScroller(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_3
    move v6, v3

    .line 4190
    :cond_4
    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v4, :cond_5

    .line 4192
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_3

    :cond_5
    move v4, v3

    .line 4195
    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    if-nez v5, :cond_6

    .line 4200
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v5, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    if-eqz v0, :cond_9

    .line 4204
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 4205
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    move-result-object v7

    instance-of v7, v7, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    if-eqz v7, :cond_9

    .line 4206
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    .line 4207
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v1, :cond_8

    :cond_7
    if-nez v5, :cond_9

    if-eqz v4, :cond_9

    .line 4211
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 4214
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 4215
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    :cond_a
    if-nez v5, :cond_c

    if-nez v4, :cond_c

    if-nez v6, :cond_c

    .line 4217
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    move v2, v3

    :cond_c
    :goto_5
    return v2
.end method

.method public onUiModeChanged()V
    .locals 3

    .line 970
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 972
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 975
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opOnUiModeChanged, current theme is in night mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mBgColor: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgColor:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCachedBackgroundColor: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->notification_shade_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgColor:I

    .line 984
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 985
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->onUiModeChanged()V

    .line 987
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->onUiModeChanged()V

    return-void
.end method

.method public onUpdateRowStates()V
    .locals 4

    .line 6362
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFgsSectionView:Lcom/android/systemui/statusbar/notification/row/ForegroundServiceDungeonView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6363
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    move v1, v3

    .line 6365
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    .line 6366
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    .line 6369
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBBreakModeView:Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    .line 6374
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 6375
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    .line 6374
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 3636
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3637
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onViewAddedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 3361
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3364
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    if-nez v0, :cond_0

    .line 3365
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0, p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 4795
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    .line 4797
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4

    .line 4725
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 4728
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    const/4 p2, -0x1

    const/16 v2, 0x1000

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2000

    if-eq p1, v2, :cond_3

    const v2, 0x1020038

    if-eq p1, v2, :cond_3

    const p2, 0x102003a

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v0

    .line 4745
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBottom:I

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr p1, v2

    iget v2, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    sub-int/2addr p1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 4746
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr p1, v2

    .line 4747
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    mul-int/2addr p2, p1

    add-int/2addr v2, p2

    .line 4748
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4747
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4749
    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq p1, p2, :cond_4

    .line 4750
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr p1, p2

    invoke-virtual {v2, v3, p2, v1, p1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 4752
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public removeContainerView(Landroid/view/View;)V
    .locals 0

    .line 5656
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 5657
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeListItem(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;)V
    .locals 0

    .line 5663
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->removeContainerView(Landroid/view/View;)V

    return-void
.end method

.method public removeOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 6083
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeightListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestDisallowDismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 4708
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 4548
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    .line 4550
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public requestDisallowLongPress()V
    .locals 0

    .line 4703
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    return-void
.end method

.method public resetCheckSnoozeLeavebehind()V
    .locals 1

    const/4 v0, 0x1

    .line 4855
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    return-void
.end method

.method public resetExposedMenuView(ZZ)V
    .locals 0

    .line 6570
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    return-void
.end method

.method public resetScrollPosition()V
    .locals 1

    .line 4929
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 4936
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .locals 0

    .line 5680
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public scrollTo(Landroid/view/View;)Z
    .locals 4

    .line 2032
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2036
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result p1

    .line 2037
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)I

    move-result v1

    .line 2038
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr p1, v0

    .line 2042
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 2043
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v1, v3

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    const/4 p1, 0x1

    .line 2044
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 2045
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateScroll()V

    return p1
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 1

    .line 5194
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 5195
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 5196
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 5197
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 5199
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setAnimationRunning(Z)V
    .locals 2

    .line 5745
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 5747
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 5749
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5751
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    .line 5752
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    :cond_1
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 3745
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 3746
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    if-nez p1, :cond_0

    .line 3748
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3749
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3750
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearTemporaryViewsInGroup(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public setBarState(I)V
    .locals 0

    .line 7460
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    .line 7461
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setStatusBarState(I)V

    return-void
.end method

.method public setChildLocationsChangedListener(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;)V
    .locals 0

    .line 1396
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;

    return-void
.end method

.method public setChildTransferInProgress(Z)V
    .locals 0

    .line 3354
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 3355
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 1

    .line 5108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    and-int/2addr p1, v0

    .line 5109
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDimmed(Z)V

    if-eqz p2, :cond_0

    .line 5110
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 5111
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 5112
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 5113
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->animateDimmed(Z)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5115
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDimAmount(F)V

    .line 5117
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1

    .line 5481
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    .line 5482
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDismissAllInProgress(Z)V

    .line 5483
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->handleDismissAllClipping()V

    return-void
.end method

.method public setDozeAmount(F)V
    .locals 1

    .line 6412
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDozeAmount(F)V

    .line 6413
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContinuousBackgroundDrawing()V

    .line 6414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setDozing(ZZLandroid/graphics/PointF;)V
    .locals 0

    .line 5339
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    .line 5342
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDozing(Z)V

    .line 5343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 5344
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    return-void
.end method

.method public setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 3

    .line 5440
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 5441
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 5442
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5444
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 5445
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    if-eq v0, v1, :cond_1

    .line 5447
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz p1, :cond_1

    .line 5448
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsEmptyShadeViewVisible:Z

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    :cond_1
    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 6

    .line 1615
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1616
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsExpanded(Z)V

    .line 1617
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v4, p1, v1

    if-gez v4, :cond_1

    .line 1619
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 1620
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1621
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    float-to-int p1, p1

    .line 1622
    iput p1, v4, Landroid/graphics/Rect;->bottom:I

    .line 1624
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setRequestedClipBounds(Landroid/graphics/Rect;)V

    move p1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1626
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setRequestedClipBounds(Landroid/graphics/Rect;)V

    .line 1630
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v1

    .line 1631
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 1634
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setAppearing(Z)V

    if-nez v2, :cond_6

    .line 1637
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    if-eqz v1, :cond_3

    .line 1638
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_4

    .line 1639
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-eqz v1, :cond_5

    .line 1640
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    add-int/2addr p1, v1

    .line 1641
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_4

    move p1, v1

    goto :goto_4

    :cond_4
    int-to-float p1, p1

    int-to-float v1, v1

    .line 1645
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    invoke-static {p1, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p1

    :cond_5
    float-to-int p1, p1

    goto :goto_4

    .line 1652
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    move-result v5

    cmpl-float v1, v5, v0

    if-ltz v1, :cond_7

    .line 1654
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandTranslationStart()F

    move-result v1

    invoke-static {v1, v0, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    goto :goto_3

    :cond_7
    sub-float v1, p1, v4

    .line 1659
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandTranslationStart()F

    move-result v2

    add-float/2addr v1, v2

    :goto_3
    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 1662
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isHeadsUpTransition()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1663
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpInset:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1, v0, v5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_4

    :cond_8
    move v0, v1

    .line 1666
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setAppearFraction(F)V

    .line 1667
    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    if-eq p1, v1, :cond_9

    .line 1668
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 1669
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 1670
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1672
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setStackTranslation(F)V

    .line 1673
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyAppearChangedListeners()V

    return-void
.end method

.method public setExpandingEnabled(Z)V
    .locals 0

    .line 2110
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->setEnabled(Z)V

    return-void
.end method

.method public setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 3775
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 3776
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setExpandingVelocity(F)V
    .locals 0

    .line 5958
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setExpandingVelocity(F)V

    return-void
.end method

.method public setFinishScrollingCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 2293
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setFooterView(Lcom/android/systemui/statusbar/notification/row/FooterView;)V
    .locals 2

    .line 5429
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-eqz v0, :cond_0

    .line 5430
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 5431
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 5433
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 5434
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0

    .line 5553
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 5554
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnGroupChangeListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->addOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 0

    .line 5907
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    .line 5908
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClipping()V

    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    .line 6089
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-void
.end method

.method public setHeadsUpBoundaries(II)V
    .locals 1

    .line 5709
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    sub-int p2, p1, p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setMaxHeadsUpTranslation(F)V

    .line 5710
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->setHeadsUpAppearHeightBottom(I)V

    .line 5711
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setHeadsUpGoingAwayAnimationsAllowed(Z)V
    .locals 0

    .line 5988
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    return-void
.end method

.method public setHideAmount(FF)V
    .locals 3

    .line 5358
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    .line 5359
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    .line 5360
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p1

    .line 5361
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v0

    .line 5362
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setHideAmount(F)V

    .line 5363
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    move-result p2

    .line 5364
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v1

    if-eq p2, p1, :cond_0

    .line 5366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateVisibility()V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 5369
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetExposedMenuView(ZZ)V

    :cond_1
    if-ne p2, p1, :cond_2

    if-eq v0, v1, :cond_3

    .line 5372
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidateOutline()V

    .line 5374
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 5375
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 5376
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 5377
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateOwnTranslationZ()V

    return-void
.end method

.method public setIconAreaController(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 0

    .line 6094
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-void
.end method

.method public setInHeadsUpPinnedMode(Z)V
    .locals 0

    .line 5901
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    .line 5902
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateClipping()V

    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 0

    .line 5318
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    .line 5319
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setIntrinsicPadding(I)V

    return-void
.end method

.method setIsBeingDragged(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4693
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4695
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 4696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 4697
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetExposedMenuView(ZZ)V

    :cond_0
    return-void
.end method

.method public setIsFullWidth(Z)V
    .locals 0

    .line 5972
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPanelFullWidth(Z)V

    return-void
.end method

.method public setIsImeShow(Z)V
    .locals 0

    .line 7465
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsImeShow:Z

    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;)V
    .locals 0

    .line 4159
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

    return-void
.end method

.method public setMaxDisplayedNotifications(I)V
    .locals 1

    .line 5879
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    if-eq v0, p1, :cond_0

    .line 5880
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 5881
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 5882
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    :cond_0
    return-void
.end method

.method public setMaxTopPadding(I)V
    .locals 0

    .line 3282
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    return-void
.end method

.method public setNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V
    .locals 0

    .line 6225
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    return-void
.end method

.method public setNotificationPanelController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 6381
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationPanelController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method

.method public setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V
    .locals 0

    .line 4718
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V
    .locals 0

    .line 5059
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    return-void
.end method

.method public setOnPulseHeightChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 6460
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setOnPulseHeightChangedListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOverScrollAmount(FZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 2433
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    return-void
.end method

.method public setOverScrollAmount(FZZZ)V
    .locals 6

    .line 2447
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    return-void
.end method

.method public setOverScrollAmount(FZZZZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 2464
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 2466
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmountInternal(FZZZ)V

    return-void
.end method

.method public setOverScrolledPixels(FZZ)V
    .locals 1

    .line 2419
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    mul-float/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    return-void
.end method

.method public setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V
    .locals 0

    .line 2500
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    return-void
.end method

.method public setPulseHeight(F)F
    .locals 2

    .line 6395
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPulseHeight(F)V

    .line 6396
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6397
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyAppearChangedListeners()V

    .line 6399
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    const/4 v0, 0x0

    .line 6400
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight(Z)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public setPulsing(ZZ)V
    .locals 1

    .line 5763
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 5766
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    .line 5767
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPulsing(Z)V

    .line 5768
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->setPulsing(Z)V

    .line 5769
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 5770
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 5771
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 5772
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    const/4 p1, 0x0

    .line 5773
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method public setQsContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1904
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setQsCustomizerShowing(Z)V
    .locals 1

    .line 5982
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setQsCustomizerShowing(Z)V

    .line 5983
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    .line 5778
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    .line 5779
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 5780
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateScrollability()V

    return-void
.end method

.method public setQsExpansionFraction(F)V
    .locals 1

    .line 5785
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    .line 5787
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->setQsFullyExpanded(Z)V

    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 1

    .line 5728
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 5729
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$EebmavE8B0v9pYEId75j8vvZNvI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationStackScrollLayout$EebmavE8B0v9pYEId75j8vvZNvI;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0

    .line 2018
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 2

    .line 5855
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v0, :cond_0

    .line 5856
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 5857
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 5859
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 5860
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 5861
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 5862
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 5864
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPaddingBottom:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setPaddingBottom(I)V

    .line 5866
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    return-void
.end method

.method public setShouldShowShelfOnly(Z)V
    .locals 0

    .line 5888
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    .line 5889
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 5548
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method protected setStatusBarState(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5914
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    .line 5915
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setStatusBarState(I)V

    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 5721
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setTrackedHeadsUpRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5722
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    .line 5723
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public setUnlockHintRunning(Z)V
    .locals 0

    .line 5977
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setUnlockHintRunning(Z)V

    return-void
.end method

.method public setWLBBreakModeView(Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;)V
    .locals 2

    .line 6309
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBBreakModeView:Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;

    if-eqz v0, :cond_0

    .line 6310
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 6311
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBBreakModeView:Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 6313
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBBreakModeView:Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;

    .line 6314
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setWillExpand(Z)V
    .locals 0

    .line 5716
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWillExpand:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateClipping()V
    .locals 5

    .line 1717
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1720
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsClipped:Z

    if-eq v3, v0, :cond_1

    .line 1721
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsClipped:Z

    .line 1724
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1726
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidateOutline()V

    .line 1727
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFullyHidden()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1728
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 1731
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1733
    :cond_3
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_1
    move v1, v2

    .line 1736
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    return-void
.end method

.method public updateDecorViews(Z)V
    .locals 2

    .line 5276
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mUsingLightTheme:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5279
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInited:Z

    .line 5282
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mUsingLightTheme:Z

    .line 5283
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 5284
    sget p1, Lcom/android/systemui/R$style;->Theme_SystemUI_Light:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/systemui/R$style;->Theme_SystemUI:I

    :goto_0
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 5285
    sget p1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    .line 5286
    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    .line 5287
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->setHeaderForegroundColor(I)V

    .line 5293
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooterTextColor()V

    .line 5296
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setTextColor(I)V

    .line 5299
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setWLBBreakModeTextColor(I)V

    return-void
.end method

.method public updateEmptyShadeView(Z)V
    .locals 2

    .line 5455
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    .line 5457
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsEmptyShadeViewVisible:Z

    .line 5460
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/EmptyShadeView;->getTextResource()I

    move-result p1

    .line 5461
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->areNotificationsHiddenInShade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5462
    sget v0, Lcom/android/systemui/R$string;->dnd_suppressing_shade_text:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/systemui/R$string;->empty_shade_text:I

    :goto_1
    if-eq p1, v0, :cond_2

    .line 5464
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->setText(I)V

    :cond_2
    return-void
.end method

.method public updateFooter()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-nez v0, :cond_0

    return-void

    .line 868
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearAllEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveClearableNotifications(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 869
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveNotifications()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    if-eq v3, v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 871
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    .line 872
    :goto_1
    iget-object v4, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, -0x2

    const-string v6, "notification_history_enabled"

    invoke-static {v4, v6, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 875
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateFooter showDismissView "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " showFooterView "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " showHistory "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasActiveNotifications() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveNotifications()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mStatusBarState "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStatusBarState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "StackScroller"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooterView(ZZZ)V

    return-void
.end method

.method public updateFooterView(ZZZ)V
    .locals 2

    .line 5470
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    if-nez v0, :cond_0

    return-void

    .line 5473
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5474
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    .line 5475
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setSecondaryVisible(ZZ)V

    .line 5476
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/row/FooterView;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/notification/row/FooterView;->showHistory(Z)V

    return-void
.end method

.method public updateIconAreaViews()V
    .locals 0

    .line 6385
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons()V

    return-void
.end method

.method public updateScrimState(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrimState:Lcom/android/systemui/statusbar/phone/ScrimState;

    return-void
.end method

.method public updateSectionBoundaries(Ljava/lang/String;)V
    .locals 0

    .line 6537
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSectionsManager:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->updateSectionBoundaries(Ljava/lang/String;)V

    return-void
.end method

.method public updateSensitiveness(ZZ)V
    .locals 5

    .line 5159
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isAnyProfilePublicMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v0, v1

    .line 5166
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHideSensitive()Z

    move-result p1

    if-eq v0, p1, :cond_3

    .line 5167
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 5169
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5175
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->shouldHideSensitive(Landroid/view/View;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5179
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setHideSensitive(Z)V

    if-eqz p2, :cond_2

    .line 5180
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz p1, :cond_2

    .line 5181
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 5182
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 5184
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 5185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_3
    return-void
.end method

.method public updateSpeedBumpIndex()V
    .locals 9

    .line 6512
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v0, :cond_4

    .line 6514
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6515
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    instance-of v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v7, :cond_0

    goto :goto_2

    .line 6518
    :cond_0
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    add-int/lit8 v4, v4, 0x1

    .line 6521
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHighPriorityBeforeSpeedBump:Z

    if-eqz v7, :cond_2

    .line 6522
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    goto :goto_1

    .line 6524
    :cond_2
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isAmbient()Z

    move-result v6

    xor-int/2addr v5, v6

    :goto_1
    if-eqz v5, :cond_3

    move v3, v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-ne v3, v0, :cond_5

    move v1, v5

    .line 6531
    :cond_5
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex(IZ)V

    return-void
.end method

.method public updateSpeedBumpIndex(IZ)V
    .locals 2

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSpeedBumpIndex newIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " noAmbient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StackScroller"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setSpeedBumpIndex(I)V

    return-void
.end method

.method public updateTopPadding(FZ)V
    .locals 5

    float-to-int v0, p1

    .line 3259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v1

    .line 3261
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    add-int v3, v0, v1

    .line 3263
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 3264
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3266
    iput v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    .line 3269
    :goto_0
    sget-boolean v3, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 3270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifScroller updateTopPadding: qsHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", minStackHeight = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", getHeight = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3272
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mExpandedHeight = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StackScroller"

    .line 3270
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_2

    .line 3276
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setTopPadding(IZ)V

    .line 3277
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    return-void
.end method

.method public updateWLBBreakModeView(Z)V
    .locals 5

    .line 6319
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->readCurrentMode()V

    .line 6320
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBCurrentModeValue:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 6321
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting break mode view visibility: isKeyGaurdVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isWLBON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StackScroller"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6322
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWLBBreakModeView:Lcom/android/systemui/statusbar/notification/stack/WLBBreakModeView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    return-void
.end method

.method public wakeUpFromPulse()V
    .locals 9

    .line 6418
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getWakeUpHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulseHeight(F)F

    .line 6423
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    move v4, v1

    move v5, v2

    :goto_0
    if-ge v4, v0, :cond_5

    .line 6425
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 6426
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_2

    .line 6429
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-ne v6, v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v1

    .line 6430
    :goto_1
    instance-of v8, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v8, :cond_2

    if-nez v7, :cond_2

    goto :goto_2

    .line 6433
    :cond_2
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    if-nez v7, :cond_3

    if-eqz v5, :cond_4

    .line 6436
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    .line 6437
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    move v5, v1

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    .line 6440
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6443
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    return-void
.end method
