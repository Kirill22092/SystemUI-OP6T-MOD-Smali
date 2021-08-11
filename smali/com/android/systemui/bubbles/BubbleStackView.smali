.class public Lcom/android/systemui/bubbles/BubbleStackView;
.super Landroid/widget/FrameLayout;
.source "BubbleStackView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

.field static final FLYOUT_HIDE_AFTER:I = 0x1388
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;


# instance fields
.field private mAfterFlyoutHidden:Ljava/lang/Runnable;

.field private final mAfterFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mAnimateInFlyout:Ljava/lang/Runnable;

.field private final mAnimateTemporarilyInvisibleImmediate:Ljava/lang/Runnable;

.field private mAnimatingEducationAway:Z

.field private mAnimatingManageEducationAway:Z

.field private mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

.field private mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

.field private mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

.field private mBubbleClickListener:Landroid/view/View$OnClickListener;

.field private mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

.field private final mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

.field private mBubbleElevation:I

.field private mBubbleOverflow:Lcom/android/systemui/bubbles/BubbleOverflow;

.field private mBubblePaddingTop:I

.field private mBubbleSize:I

.field private mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

.field private mBubbleTouchListener:Lcom/android/systemui/util/RelativeTouchListener;

.field private mBubbleTouchPadding:I

.field private mCornerRadius:I

.field private final mDelayedAnimationHandler:Landroid/os/Handler;

.field private final mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

.field private final mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

.field private mDesaturateAndDarkenTargetView:Landroid/view/View;

.field private mDismissTargetAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDismissTargetCircle:Landroid/view/View;

.field private mDismissTargetContainer:Landroid/view/ViewGroup;

.field private mDismissTargetSpring:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

.field private mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

.field private mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

.field private mExpandedViewContainer:Landroid/widget/FrameLayout;

.field private final mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

.field private mExpandedViewPadding:I

.field private mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

.field private mFlyoutClickListener:Landroid/view/View$OnClickListener;

.field private final mFlyoutCollapseProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private mFlyoutDragDeltaX:F

.field private mFlyoutTouchListener:Lcom/android/systemui/util/RelativeTouchListener;

.field private final mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mHideCurrentInputMethodCallback:Ljava/lang/Runnable;

.field private mHideFlyout:Ljava/lang/Runnable;

.field private mImeOffset:I

.field private final mIndividualBubbleMagnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsBubbleSwitchAnimating:Z

.field private mIsDraggingStack:Z

.field private mIsExpanded:Z

.field private mIsExpansionAnimating:Z

.field private mIsGestureInProgress:Z

.field private mMagneticTarget:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

.field private mMagnetizedObject:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject<",
            "*>;"
        }
    .end annotation
.end field

.field private mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

.field private mManageMenu:Landroid/view/ViewGroup;

.field private mManageSettingsIcon:Landroid/widget/ImageView;

.field private mManageSettingsText:Landroid/widget/TextView;

.field private mManageSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field private mMaxBubbles:I

.field private mOrientation:I

.field private mOrientationChangedListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPointerIndexDown:I

.field private final mScaleInSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field private final mScaleOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field private mShouldShowManageEducation:Z

.field private mShouldShowUserEducation:Z

.field private mShowingDismiss:Z

.field private mShowingManage:Z

.field private mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

.field private final mStackMagnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

.field private mStackOnLeftOrWillBe:Z

.field private mStatusBarHeight:I

.field private final mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

.field private mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mSystemGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field private mTemporarilyInvisible:Z

.field private final mTranslateSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field private mUnbubbleConversationCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserEducationView:Landroid/view/View;

.field private mVerticalPosPercentBeforeRotation:F

.field private mViewUpdatedRequested:Z

.field private mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mWasOnLeftBeforeRotation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x43480000    # 200.0f

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/android/systemui/bubbles/BubbleStackView$1;

    invoke-direct {v0}, Lcom/android/systemui/bubbles/BubbleStackView$1;-><init>()V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleStackView;->DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/model/SysUiState;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/bubbles/BubbleData;",
            "Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;",
            "Lcom/android/systemui/util/FloatingContentCoordinator;",
            "Lcom/android/systemui/model/SysUiState;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/high16 v3, 0x43960000    # 300.0f

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    new-instance v2, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/high16 v3, 0x44610000    # 900.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    new-instance v2, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/high16 v3, 0x43480000    # 200.0f

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mTranslateSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDelayedAnimationHandler:Landroid/os/Handler;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    new-instance v2, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-direct {v2}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$jXS10HgKCVgyvjX1UcSgdO2D_ug;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$jXS10HgKCVgyvjX1UcSgdO2D_ug;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mWasOnLeftBeforeRotation:Z

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mVerticalPosPercentBeforeRotation:F

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    iput-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    iput-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    iput-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsDraggingStack:Z

    const/4 v5, -0x1

    iput v5, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mPointerIndexDown:I

    iput-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    iput-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    iput-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    iput-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    new-instance v6, Lcom/android/systemui/bubbles/BubbleStackView$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/BubbleStackView$2;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v6, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$c-OiserdP7VIvU56hCAARnBncEE;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$c-OiserdP7VIvU56hCAARnBncEE;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    new-instance v6, Lcom/android/systemui/bubbles/BubbleStackView$3;

    const-string v7, "FlyoutCollapseSpring"

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/bubbles/BubbleStackView$3;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutCollapseProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v7, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutCollapseProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v6, p0, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v6, 0x0

    iput v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    new-instance v6, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$qNTN7f0ovKQkRVyENDOFd8Z5ydA;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$qNTN7f0ovKQkRVyENDOFd8Z5ydA;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    new-instance v6, Lcom/android/systemui/bubbles/BubbleStackView$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/BubbleStackView$4;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mIndividualBubbleMagnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    new-instance v6, Lcom/android/systemui/bubbles/BubbleStackView$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/BubbleStackView$5;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackMagnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    new-instance v6, Lcom/android/systemui/bubbles/BubbleStackView$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/BubbleStackView$6;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleClickListener:Landroid/view/View$OnClickListener;

    new-instance v6, Lcom/android/systemui/bubbles/BubbleStackView$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/BubbleStackView$7;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/android/systemui/util/RelativeTouchListener;

    new-instance v6, Lcom/android/systemui/bubbles/BubbleStackView$8;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/BubbleStackView$8;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutClickListener:Landroid/view/View$OnClickListener;

    new-instance v6, Lcom/android/systemui/bubbles/BubbleStackView$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/BubbleStackView$9;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTouchListener:Lcom/android/systemui/util/RelativeTouchListener;

    new-instance v6, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v6, v3, v7}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetSpring:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    iput v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientation:I

    iput-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingManage:Z

    new-instance v6, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const v8, 0x44bb8000    # 1500.0f

    invoke-direct {v6, v8, v7}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    new-instance v6, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$m1Oanm_NNH1J1i2WLfzcc3QC7Uw;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$m1Oanm_NNH1J1i2WLfzcc3QC7Uw;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimateTemporarilyInvisibleImmediate:Ljava/lang/Runnable;

    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/android/systemui/R$integer;->bubbles_max_rendered:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mMaxBubbles:I

    sget v8, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    sget v8, Lcom/android/systemui/R$dimen;->bubble_elevation:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleElevation:I

    sget v8, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubblePaddingTop:I

    sget v8, Lcom/android/systemui/R$dimen;->bubble_touch_padding:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleTouchPadding:I

    const v8, 0x1050249

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mStatusBarHeight:I

    sget v8, Lcom/android/systemui/R$dimen;->pip_ime_offset:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mImeOffset:I

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    const-string/jumbo v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget v8, Lcom/android/systemui/R$dimen;->bubble_expanded_view_padding:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    sget v8, Lcom/android/systemui/R$dimen;->bubble_elevation:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-array v10, v4, [I

    const v11, 0x1010571

    aput v11, v10, v2

    invoke-virtual {v9, v10}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {v9, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mCornerRadius:I

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v9, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$Hjz7hXc94PYdpndVbPsPbyIpyWU;

    move-object/from16 v10, p6

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$Hjz7hXc94PYdpndVbPsPbyIpyWU;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/Runnable;)V

    new-instance v10, Lcom/android/systemui/bubbles/animation/StackAnimationController;

    new-instance v11, Lcom/android/systemui/bubbles/-$$Lambda$3l4urKvsZCQadEpiHWxUBGPGyvY;

    invoke-direct {v11, p0}, Lcom/android/systemui/bubbles/-$$Lambda$3l4urKvsZCQadEpiHWxUBGPGyvY;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    move-object/from16 v12, p4

    invoke-direct {v10, v12, v11, v9}, Lcom/android/systemui/bubbles/animation/StackAnimationController;-><init>(Lcom/android/systemui/util/FloatingContentCoordinator;Ljava/util/function/IntSupplier;Ljava/lang/Runnable;)V

    iput-object v10, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    new-instance v10, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget-object v11, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    iget v12, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {v10, v11, v12, v13, v9}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;-><init>(Landroid/graphics/Point;IILjava/lang/Runnable;)V

    iput-object v10, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    if-eqz p3, :cond_0

    move-object/from16 v9, p3

    goto :goto_0

    :cond_0
    sget-object v9, Lcom/android/systemui/bubbles/BubbleStackView;->DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    :goto_0
    iput-object v9, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setUpUserEducation()V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    new-instance v9, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {v9, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v10, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v9, v10}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    iget-object v9, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setElevation(F)V

    iget-object v9, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    iget-object v9, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setElevation(F)V

    iget-object v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    iget-object v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->setUseAlpha()V

    iget-object v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v4}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    iget v9, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mCornerRadius:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    iget-object v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    iget v9, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setUpManageMenu()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setUpFlyout()V

    iget-object v8, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v9, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v9}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {v9, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v9, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v8, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v7, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v3, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    sget v3, Lcom/android/systemui/R$dimen;->dismiss_circle_size:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v6, Lcom/android/systemui/util/DismissCircleView;

    invoke-direct {v6, p1}, Lcom/android/systemui/util/DismissCircleView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetCircle:Landroid/view/View;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x51

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetCircle:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetCircle:Landroid/view/View;

    invoke-static {v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->floating_dismiss_gradient_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/16 v7, 0x50

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->floating_dismiss_bottom_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v2, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetCircle:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/R$drawable;->floating_dismiss_gradient_transition:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetCircle:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$dimen;->floating_dismiss_gradient_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    const/4 v5, 0x2

    mul-int/2addr v3, v5

    const-string v6, "bubble_dismiss_radius"

    invoke-static {v1, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    iget-object v6, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetCircle:Landroid/view/View;

    invoke-direct {v3, v6, v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;-><init>(Landroid/view/View;I)V

    iput-object v3, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v1, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->bringToFront()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setUpOverflow()V

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideCurrentInputMethodCallback:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$WdFVrYRSAwHYzZq062ZrQQcAUk8;

    move-object/from16 v2, p7

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$WdFVrYRSAwHYzZq062ZrQQcAUk8;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$zB8p0_cj-tonbCXvIH4kDoBtabk;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$zB8p0_cj-tonbCXvIH4kDoBtabk;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v1, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientationChangedListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$nTtH9EoKZ3I47Rp-Pl0BGULUUeI;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$nTtH9EoKZ3I47Rp-Pl0BGULUUeI;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$DgIHzfVnE2ZObZ8qcZwxCeDQAK0;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$DgIHzfVnE2ZObZ8qcZwxCeDQAK0;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleStackView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/StackAnimationController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->resetDesaturationAndDarken()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/systemui/bubbles/BubbleStackView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsDraggingStack:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/bubbles/BubbleStackView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/bubbles/BubbleStackView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleViewProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/bubbles/BubbleStackView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->maybeShowStackUserEducation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/bubbles/BubbleStackView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingManage:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/bubbles/BubbleStackView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->showManageMenu(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/bubbles/BubbleStackView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIndividualBubbleMagnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/util/magnetictarget/MagnetizedObject;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackMagnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/bubbles/BubbleStackView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->passEventToMagnetizedObject(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->springInDismissTargetMaybe()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/systemui/bubbles/BubbleStackView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/bubbles/BubbleStackView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->updateBubbleZOrdersAndDotPosition(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/bubbles/BubbleStackView;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    return p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleViewProvider;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/BubbleViewProvider;I)V

    return-void
.end method

.method static synthetic access$3102(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;)Lcom/android/systemui/bubbles/Bubble;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/bubbles/BubbleStackView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/BubbleFlyoutView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/bubbles/BubbleStackView;ZF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->animateFlyoutCollapsed(ZF)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/bubbles/BubbleStackView;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mCornerRadius:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->animateDesaturateAndDarken(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideDismissTarget()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/bubbles/BubbleStackView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->dismissMagnetizedObject()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    return-object p0
.end method

.method private afterExpandedViewAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedView()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->requestUpdate()V

    return-void
.end method

.method private animateCollapse()V
    .locals 9

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->cancelDelayedExpandCollapseSwitchAnimations()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->showManageMenu(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimations()V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->notifyPreparingToCollapse()V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDelayedAnimationHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$NMpNWXmTuSktREQh1njzbI8GffU;

    invoke-direct {v4, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$NMpNWXmTuSktREQh1njzbI8GffU;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    const-wide/16 v5, 0x69

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v2}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getIconView()Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v5}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    iget v6, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v4

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedViewY()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8, v8, v6, v7}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel()V

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v7, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v6, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v7, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    new-instance v3, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$H-5vYdJ9CVvPdyUTg_Cbel0Xecw;

    invoke-direct {v3, p0, v2, v4}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$H-5vYdJ9CVvPdyUTg_Cbel0Xecw;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/View;F)V

    invoke-virtual {v5, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    new-array v1, v1, [Ljava/lang/Runnable;

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$h3oedcF547c9oDcRUG7H-xXzZeI;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$h3oedcF547c9oDcRUG7H-xXzZeI;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    aput-object v2, v1, v0

    invoke-virtual {v5, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method private animateDesaturateAndDarken(Landroid/view/View;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/bubbles/BubbleStackView$11;

    invoke-direct {p2, p0}, Lcom/android/systemui/bubbles/BubbleStackView$11;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_0
    return-void
.end method

.method private animateExpansion()V
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->cancelDelayedExpandCollapseSwitchAnimations()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideStackUserEducation(Z)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->beforeExpandedViewAnimation()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateOverflowVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$3CiEYd1ciKAdZrEnaQ-sH0oiFPo;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$3CiEYd1ciKAdZrEnaQ-sH0oiFPo;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedViewY()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    if-lez v3, :cond_0

    const/high16 v3, 0x432f0000    # 175.0f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-long v2, v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    iget v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedViewY()F

    move-result v6

    invoke-virtual {v4, v1, v1, v5, v6}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setSurfaceZOrderedOnTop(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDelayedAnimationHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$UNuCs4sUpvhXoc1ew2TBDXBo2Fg;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$UNuCs4sUpvhXoc1ew2TBDXBo2Fg;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;F)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private animateFlyoutCollapsed(ZF)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v2, :cond_0

    const v2, 0x44bb8000    # 1500.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x43480000    # 200.0f

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    if-eqz v0, :cond_1

    neg-int p0, p0

    :cond_1
    int-to-float p0, p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private animateSwitchBubbles()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v1

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    iget v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTranslateSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    new-array v2, v0, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$pEtxhN7hJ3YH-4z9e-fDKF3VeMo;

    invoke-direct {v3, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$pEtxhN7hJ3YH-4z9e-fDKF3VeMo;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Overflow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedViewY()F

    move-result v2

    invoke-virtual {v1, v4, v4, v0, v2}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->setScale(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDelayedAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$E5IVko96vDa38BXRKa-W2m_RUJM;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$E5IVko96vDa38BXRKa-W2m_RUJM;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    const-wide/16 v2, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private beforeExpandedViewAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedBubble()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedView()V

    return-void
.end method

.method private cancelAllExpandCollapseSwitchAnimations()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->cancelDelayedExpandCollapseSwitchAnimations()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-static {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private cancelDelayedExpandCollapseSwitchAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDelayedAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    return-void
.end method

.method private clearFlyoutOnHide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimateInFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHidden:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHidden:Ljava/lang/Runnable;

    return-void
.end method

.method private dismissBubbleIfExists(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private dismissMagnetizedObject()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    invoke-virtual {v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getUnderlyingObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->dismissBubbleIfExists(Lcom/android/systemui/bubbles/Bubble;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->dismissAll(I)V

    :goto_0
    return-void
.end method

.method private getStatusBarHeight()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStatusBarHeight:I

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    :cond_0
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private hideDismissTarget()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetSpring:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$xFYhUm7TnCCBRG3JRHNKpHUKPlE;

    invoke-direct {v3, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$xFYhUm7TnCCBRG3JRHNKpHUKPlE;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method private hideFlyoutImmediate()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->clearFlyoutOnHide()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimateInFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->hideFlyout()V

    return-void
.end method

.method private synthetic lambda$animateCollapse$30()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    return-void
.end method

.method private synthetic lambda$animateCollapse$31()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPositionAlongNearestHorizontalEdge()Landroid/graphics/PointF;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$RLGYh0bXzbo7gLPSUpwtl0rh8zQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$RLGYh0bXzbo7gLPSUpwtl0rh8zQ;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->collapseBackToStack(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$animateCollapse$32(Landroid/view/View;FLcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->getScaleX()F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$animateCollapse$33()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->beforeExpandedViewAnimation()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->maybeShowManageEducation(Z)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateOverflowVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->afterExpandedViewAnimation()V

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->setContentVisibility(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$animateExpansion$26()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->afterExpandedViewAnimation()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->maybeShowManageEducation(Z)V

    return-void
.end method

.method private synthetic lambda$animateExpansion$27(FLcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getIconView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {p3}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getIconView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result p3

    sub-float/2addr p3, p1

    const/4 p1, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$animateExpansion$28()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setSurfaceZOrderedOnTop(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$animateExpansion$29(F)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v1, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-static {v2}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$b_UaRBEuWlY-020n8jg6KaRxhDs;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$b_UaRBEuWlY-020n8jg6KaRxhDs;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$pisfEoH-pfRWWDMgdm3_RYzne28;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$pisfEoH-pfRWWDMgdm3_RYzne28;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    const/4 p0, 0x0

    aput-object v1, p1, p0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$animateInFlyoutForBubble$38(Lcom/android/systemui/bubbles/BadgedImageView;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHidden:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

    :cond_0
    sget-object v0, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$animateInFlyoutForBubble$39()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->animateFlyoutCollapsed(ZF)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$animateInFlyoutForBubble$40()V
    .locals 3

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$1wZEYs1bqQVpEdcpI6IEUDdY0OU;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$1wZEYs1bqQVpEdcpI6IEUDdY0OU;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimateInFlyout:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$animateInFlyoutForBubble$41(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v7, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$FdgpI1yIWBqhVrPpLrADoKYyrnw;

    invoke-direct {v7, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$FdgpI1yIWBqhVrPpLrADoKYyrnw;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BadgedImageView;->getDotColor()I

    move-result v6

    iget-object v8, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHidden:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BadgedImageView;->getDotCenter()[F

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->showDot()Z

    move-result p1

    xor-int/lit8 v10, p1, 0x1

    move-object v2, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->setupFlyoutStartingAsDot(Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;FZILjava/lang/Runnable;Ljava/lang/Runnable;[FZ)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method private synthetic lambda$animateSwitchBubbles$34(Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private synthetic lambda$animateSwitchBubbles$35()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setSurfaceZOrderedOnTop(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    return-void
.end method

.method private synthetic lambda$animateSwitchBubbles$36()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v2, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-static {v3}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mScaleInSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$ddRwJKDnyQ0sMOzts_rJUhoOp9U;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$ddRwJKDnyQ0sMOzts_rJUhoOp9U;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6gxlC8TSjhqAqfcarGbWjlPEvjk;

    invoke-direct {v3, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6gxlC8TSjhqAqfcarGbWjlPEvjk;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$c-OiserdP7VIvU56hCAARnBncEE(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateSystemGestureExcludeRects()V

    return-void
.end method

.method private synthetic lambda$hideDismissTarget$37()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$hideStackUserEducation$20()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingEducationAway:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->shouldShowBubblesEducation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShouldShowUserEducation:Z

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$maybeShowManageEducation$21(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {p1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->maybeShowManageEducation(Z)V

    return-void
.end method

.method private synthetic lambda$maybeShowManageEducation$22(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->maybeShowManageEducation(Z)V

    return-void
.end method

.method private synthetic lambda$maybeShowManageEducation$23(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->maybeShowManageEducation(Z)V

    return-void
.end method

.method private synthetic lambda$maybeShowManageEducation$24()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getManageButtonBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleManageEducationView;->getManageViewHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->bubbles_manage_education_top_inset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/bubbles/BubbleManageEducationView;->setManageViewPosition(II)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    sget v1, Lcom/android/systemui/R$id;->manage:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$9Nx-qZetHgM6c4X0j2S1B9RZkd0;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$9Nx-qZetHgM6c4X0j2S1B9RZkd0;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    sget v1, Lcom/android/systemui/R$id;->got_it:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$GYZbVitDInH2RKYw7i19AAO6zHM;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$GYZbVitDInH2RKYw7i19AAO6zHM;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$N-z5_OzRSP1AvTx6QRv1WoAsDRI;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$N-z5_OzRSP1AvTx6QRv1WoAsDRI;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$maybeShowManageEducation$25()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingManageEducationAway:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->shouldShowManageEducation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShouldShowManageEducation:Z

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$maybeShowStackUserEducation$19()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getDefaultStartPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->animateFlyoutCollapsed(ZF)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1388

    invoke-virtual {p1, p0, p2, p3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->hideFlyout()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/WindowInsets;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateInsets(Landroid/view/WindowInsets;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$4(Ljava/util/function/Consumer;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$SGgilPVMr7ds9JBrPWP0ZRoSeUQ;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$SGgilPVMr7ds9JBrPWP0ZRoSeUQ;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/WindowInsets;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateYPosition(Ljava/lang/Runnable;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$5()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->afterExpandedViewAnimation()V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientation:I

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateResources(ILandroid/graphics/Point;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientation:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->updateResources(I)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/systemui/bubbles/BubbleOverflow;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleOverflow;->updateDimensions()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p4

    invoke-virtual {p3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p2, p1

    move p1, p2

    move p2, p4

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget p4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    invoke-virtual {p3, p2, p4, p1, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->beforeExpandedViewAnimation()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateOverflowVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    new-instance p3, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$BhIZ4rN3xHvYX6KiS0mXLMuJu-g;

    invoke-direct {p3, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$BhIZ4rN3xHvYX6KiS0mXLMuJu-g;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedViewY()F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_2
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVerticalPosPercentBeforeRotation:F

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget-boolean p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mWasOnLeftBeforeRotation:Z

    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveStackToSimilarPositionAfterRotation(ZF)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientationChangedListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p3, v0, p3

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr p3, v1

    sub-float p3, v0, p3

    invoke-virtual {p2, p3, p3, p3, v0}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    invoke-virtual {p1, p2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p3, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingManage:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->showManageMenu(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, p2}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$9()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$pEtxhN7hJ3YH-4z9e-fDKF3VeMo(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->releaseAnimatingOutBubbleBuffer()V

    return-void
.end method

.method static synthetic lambda$screenshotAnimatingOutBubbleIntoSurface$46(Ljava/util/function/Consumer;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$screenshotAnimatingOutBubbleIntoSurface$47(Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$FdX0ZJ9EYnkK2lpUxRIrtE_sXRw;

    invoke-direct {v0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$FdX0ZJ9EYnkK2lpUxRIrtE_sXRw;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$screenshotAnimatingOutBubbleIntoSurface$48(Ljava/util/function/Consumer;)V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$0p9zU4O79lP7pId00KTtOu3oOm4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$0p9zU4O79lP7pId00KTtOu3oOm4;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;->syncSurfaceAndRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setSelectedBubble$17(Lcom/android/systemui/bubbles/BubbleViewProvider;Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->showNewlySelectedBubble(Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    return-void
.end method

.method private synthetic lambda$setUpManageMenu$10(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->showManageMenu(Z)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleData;->getSelectedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->dismissBubbleIfExists(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method private synthetic lambda$setUpManageMenu$11(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->showManageMenu(Z)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUnbubbleConversationCallback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->getSelectedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUpManageMenu$12(Landroid/content/Intent;Lcom/android/systemui/bubbles/Bubble;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 p1, 0x9

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/BubbleViewProvider;I)V

    return-void
.end method

.method private synthetic lambda$setUpManageMenu$13(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->showManageMenu(Z)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleData;->getSelectedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/Bubble;->getSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$2Rn_iGaMRg7HpIeuK7fa52Zy4nY;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$2Rn_iGaMRg7HpIeuK7fa52Zy4nY;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/content/Intent;Lcom/android/systemui/bubbles/Bubble;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->collapseStack(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setUpOverflow$14(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/systemui/bubbles/BubbleOverflow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->setSelectedBubble(Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->showManageMenu(Z)V

    return-void
.end method

.method private synthetic lambda$showManageMenu$42()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    return-void
.end method

.method private synthetic lambda$showManageMenu$43()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$showNewlySelectedBubble$18(Lcom/android/systemui/bubbles/BubbleViewProvider;Lcom/android/systemui/bubbles/BubbleViewProvider;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->setContentVisibility(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedBubble()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->requestUpdate()V

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/BubbleViewProvider;I)V

    const/4 v1, 0x3

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/BubbleViewProvider;I)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->notifyExpansionChanged(Lcom/android/systemui/bubbles/BubbleViewProvider;Z)V

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->notifyExpansionChanged(Lcom/android/systemui/bubbles/BubbleViewProvider;Z)V

    return-void
.end method

.method public static synthetic lambda$tSRUcpVJ_facfkGXYDqDR9OJwMQ(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->animateSwitchBubbles()V

    return-void
.end method

.method private synthetic lambda$updateExpandedBubble$44(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingManage:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->showManageMenu(Z)V

    return-void
.end method

.method private synthetic lambda$updateExpandedBubble$45()V
    .locals 1

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$tSRUcpVJ_facfkGXYDqDR9OJwMQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$tSRUcpVJ_facfkGXYDqDR9OJwMQ;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$updateExpandedViewDirection$16(ILcom/android/systemui/bubbles/Bubble;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateExpandedViewTheme$15(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    :cond_0
    return-void
.end method

.method private logBubbleEvent(Lcom/android/systemui/bubbles/BubbleViewProvider;I)V
    .locals 18

    const-string v0, "Overflow"

    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedXPosition()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedYPosition()F

    move-result v4

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/systemui/bubbles/BubbleViewProvider;)I

    move-result v5

    move-object/from16 v0, p1

    move/from16 v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/bubbles/BubbleViewProvider;->logUIEvent(IIFFI)V

    return-void

    :cond_1
    :goto_0
    const/16 v6, 0x95

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedXPosition()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedYPosition()F

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v12, p2

    invoke-static/range {v6 .. v17}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)V

    return-void
.end method

.method private maybeShowStackUserEducation()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShouldShowUserEducation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateUserEducationForLayoutDirection()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$-qEPeIiYThpJeOpmzYMlHotgNlc;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$-qEPeIiYThpJeOpmzYMlHotgNlc;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "HasSeenBubblesOnboarding"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return v1
.end method

.method private notifyExpansionChanged(Lcom/android/systemui/bubbles/BubbleViewProvider;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;->onBubbleExpandChanged(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private passEventToMagnetizedObject(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private releaseAnimatingOutBubbleBuffer()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/GraphicBuffer;->destroy()V

    :cond_0
    return-void
.end method

.method private requestUpdate()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetDesaturationAndDarken()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private screenshotAnimatingOutBubbleIntoSurface(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->releaseAnimatingOutBubbleBuffer()V

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->snapshotActivitySurface()Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Bubbles"

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getActivityViewLocationOnScreen()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLocationOnScreen()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    aget v0, v0, v3

    aget v1, v1, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutBubbleBuffer:Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingOutSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$MCpRhr7435uVYw2HGhQ51yVBRac;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$MCpRhr7435uVYw2HGhQ51yVBRac;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_2
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private setUpFlyout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleFlyoutView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTouchListener:Lcom/android/systemui/util/RelativeTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setUpManageMenu()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->bubble_manage_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->setDefaultSpringConfig(Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/bubbles/BubbleStackView$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/BubbleStackView$10;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->bubble_manage_menu_dismiss_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$r9lwHRxNgYPwFIdyspAWzwNWX0c;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$r9lwHRxNgYPwFIdyspAWzwNWX0c;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->bubble_manage_menu_dont_bubble_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$GRQaewUOo0NVAl_1r4p82XhLmc4;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$GRQaewUOo0NVAl_1r4p82XhLmc4;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->bubble_manage_menu_settings_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$OgUqEHRcTH_CSY2Hykwvk0S0vx4;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$OgUqEHRcTH_CSY2Hykwvk0S0vx4;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->bubble_manage_menu_settings_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageSettingsIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->bubble_manage_menu_settings_name:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageSettingsText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setUpOverflow()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/systemui/bubbles/BubbleOverflow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/bubbles/BubbleOverflow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/bubbles/BubbleOverflow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/systemui/bubbles/BubbleOverflow;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/BubbleOverflow;->setUpOverflow(Landroid/view/ViewGroup;Lcom/android/systemui/bubbles/BubbleStackView;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleOverflow;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/systemui/bubbles/BubbleOverflow;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/BubbleOverflow;->setUpOverflow(Landroid/view/ViewGroup;Lcom/android/systemui/bubbles/BubbleStackView;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/systemui/bubbles/BubbleOverflow;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/BubbleOverflow;->getIconView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/systemui/bubbles/BubbleOverflow;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleOverflow;->getIconView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$gUr7zrwt06iDPovK5kFZqUDsxYs;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$gUr7zrwt06iDPovK5kFZqUDsxYs;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateOverflowVisibility()V

    return-void
.end method

.method private setUpUserEducation()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->shouldShowBubblesEducation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShouldShowUserEducation:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/systemui/R$layout;->bubble_stack_user_education:I

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {v4, v3, v5}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->user_education_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->user_education_description:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateUserEducationForLayoutDirection()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->shouldShowManageEducation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShouldShowManageEducation:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/systemui/R$layout;->bubbles_manage_button_education:I

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleManageEducationView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleElevation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleManageEducationView;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x1010435
        0x1010039
    .end array-data
.end method

.method private shouldShowBubblesEducation()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleDebugConfig;->forceShowUserEducation(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "HasSeenBubblesOnboarding"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private shouldShowManageEducation()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleDebugConfig;->forceShowUserEducation(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "HasSeenBubblesManageOnboarding"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showManageMenu(Z)V
    .locals 9

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingManage:Z

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v3}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v3}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageSettingsIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getBadgedAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageSettingsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->bubbles_app_settings:I

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getAppName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v2}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getManageButtonBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_1
    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    mul-int/2addr v2, v5

    int-to-float v2, v2

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v2, v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    sub-float v2, v3, v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v2, v5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v2, v5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v2, v4}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;

    new-array v0, v0, [Ljava/lang/Runnable;

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$66q0xFex2JGOS-PpLClbbWQL_UE;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$66q0xFex2JGOS-PpLClbbWQL_UE;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v8, v6}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v6, v7}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-virtual {p1, v6, v7}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sub-float/2addr v3, v2

    invoke-virtual {p1, v6, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    invoke-virtual {p1, v2, v4}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;

    new-array v0, v0, [Ljava/lang/Runnable;

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$sNHlTJ3HvrRehpCED1n9iqYBH3A;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$sNHlTJ3HvrRehpCED1n9iqYBH3A;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateObscuredTouchableRegion()V

    return-void

    :cond_6
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showNewlySelectedBubble(Lcom/android/systemui/bubbles/BubbleViewProvider;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideCurrentInputMethod()V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$8QlfeYkGdUNh1TqL6uaiSF62PB0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$8QlfeYkGdUNh1TqL6uaiSF62PB0;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleViewProvider;Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;->syncSurfaceAndRun(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private springInDismissTargetMaybe()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    const v1, 0x46fffc00    # 32766.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setZ(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetSpring:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method private updateBubbleZOrdersAndDotPosition(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/BadgedImageView;

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mMaxBubbles:I

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleElevation:I

    mul-int/2addr v3, v4

    sub-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setZ(F)V

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/BadgedImageView;->getDotPositionOnLeft()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    if-ne v3, v4, :cond_0

    xor-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotPositionOnLeft(ZZ)V

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v3, :cond_1

    if-lez v1, :cond_1

    sget-object v3, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {v2, v3}, Lcom/android/systemui/bubbles/BadgedImageView;->addDotSuppressionFlag(Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;)V

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {v2, v3}, Lcom/android/systemui/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateExpandedBubble()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$R5D2WvsrOupUqEboJoXeDAozj24;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$R5D2WvsrOupUqEboJoXeDAozj24;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setManageClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->populateExpandedView()V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$ULCkxljaWNb1HjCQS8HNQGEim50;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$ULCkxljaWNb1HjCQS8HNQGEim50;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;->syncSurfaceAndRun(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateExpandedView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedViewY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateView([I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/bubbles/BubbleStackView;->updateBubbleZOrdersAndDotPosition(Z)V

    return-void
.end method

.method private updateOverflowVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/systemui/bubbles/BubbleOverflow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleOverflow;->setVisible(I)V

    return-void
.end method

.method private updatePointerPosition()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/systemui/bubbles/BubbleViewProvider;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setPointerPosition(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSystemGestureExcludeRects()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private updateTemporarilyInvisibleAnimation(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimateTemporarilyInvisibleImmediate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsDraggingStack:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimateTemporarilyInvisibleImmediate:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const-wide/16 v2, 0x3e8

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateUserEducationForLayoutDirection()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/android/systemui/R$id;->user_education_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->user_education_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->user_education_description:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setLayoutDirection(I)V

    sget p0, Lcom/android/systemui/R$drawable;->bubble_stack_user_education_bg:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 p0, 0x3

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    sget p0, Lcom/android/systemui/R$drawable;->bubble_stack_user_education_bg_rtl:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 p0, 0x5

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method addBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShouldShowUserEducation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getDefaultStartPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/bubbles/BadgedImageView;->setDotPositionOnLeft(ZZ)V

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/android/systemui/util/RelativeTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v1

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/systemui/bubbles/Bubble;)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->requestUpdate()V

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/BubbleViewProvider;I)V

    return-void
.end method

.method animateInFlyoutForBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getFlyoutMessage()Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->showFlyout()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/systemui/bubbles/Bubble;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->clearFlyoutOnHide()V

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$CYJd20zKzWrHFqeWE_8Gsgx5kPs;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$CYJd20zKzWrHFqeWE_8Gsgx5kPs;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BadgedImageView;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHidden:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object v2, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/BadgedImageView;->addDotSuppressionFlag(Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;)V

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$KX0Tp-qCGg3cAYGLQEThgtWbFX0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$KX0Tp-qCGg3cAYGLQEThgtWbFX0;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/BubbleViewProvider;I)V

    return-void

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    sget-object p0, Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {v1, p0}, Lcom/android/systemui/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/systemui/bubbles/BadgedImageView$SuppressionFlag;)V

    :cond_3
    return-void
.end method

.method collapseStack(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mPointerIndexDown:I

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mPointerIndexDown:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mPointerIndexDown:I

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/android/systemui/util/RelativeTouchListener;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/util/RelativeTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_5

    move v1, v3

    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "Stack view state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  gestureInProgress:       "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  showingDismiss:          "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  isExpansionAnimating:    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  expandedContainerVis:    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  expandedContainerAlpha:  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  expandedContainerMatrix: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz p1, :cond_2

    const-string p1, "Expanded bubble state:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  expandedBubbleKey: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {p3}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  expandedViewVis:    "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  expandedViewAlpha:  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  expandedViewTaskId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getTaskId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getActivityView()Landroid/app/ActivityView;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  activityViewVis:    "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ActivityView;->getVisibility()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  activityViewAlpha:  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ActivityView;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "  activityView is null"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "Expanded bubble view state: expanded bubble view is null"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "Expanded bubble state: expanded bubble is null"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getBubbleCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method getBubbleIndex(Lcom/android/systemui/bubbles/BubbleViewProvider;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-interface {p1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getIconView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method getExpandedBubble()Lcom/android/systemui/bubbles/BubbleViewProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    return-object p0
.end method

.method getExpandedViewY()F
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getStatusBarHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubblePaddingTop:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method public getNormalizedXPosition()F
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public getNormalizedYPosition()F
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public getStackPosition()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getTouchableRegion(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleTouchPadding:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method hideCurrentInputMethod()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideCurrentInputMethodCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method hideStackUserEducation(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShouldShowUserEducation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingEducationAway:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingEducationAway:Z

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x28

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xc8

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$m0XC_pa-gmXZSQ75lsfSAXgWwAg;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$m0XC_pa-gmXZSQ75lsfSAXgWwAg;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method public isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    return p0
.end method

.method public isExpansionAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    return p0
.end method

.method public synthetic lambda$animateCollapse$30$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateCollapse$30()V

    return-void
.end method

.method public synthetic lambda$animateCollapse$31$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateCollapse$31()V

    return-void
.end method

.method public synthetic lambda$animateCollapse$32$BubbleStackView(Landroid/view/View;FLcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateCollapse$32(Landroid/view/View;FLcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public synthetic lambda$animateCollapse$33$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateCollapse$33()V

    return-void
.end method

.method public synthetic lambda$animateExpansion$26$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateExpansion$26()V

    return-void
.end method

.method public synthetic lambda$animateExpansion$27$BubbleStackView(FLcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateExpansion$27(FLcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public synthetic lambda$animateExpansion$28$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateExpansion$28()V

    return-void
.end method

.method public synthetic lambda$animateExpansion$29$BubbleStackView(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateExpansion$29(F)V

    return-void
.end method

.method public synthetic lambda$animateInFlyoutForBubble$38$BubbleStackView(Lcom/android/systemui/bubbles/BadgedImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$38(Lcom/android/systemui/bubbles/BadgedImageView;)V

    return-void
.end method

.method public synthetic lambda$animateInFlyoutForBubble$39$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$39()V

    return-void
.end method

.method public synthetic lambda$animateInFlyoutForBubble$40$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$40()V

    return-void
.end method

.method public synthetic lambda$animateInFlyoutForBubble$41$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$41(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble$FlyoutMessage;)V

    return-void
.end method

.method public synthetic lambda$animateSwitchBubbles$34$BubbleStackView(Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateSwitchBubbles$34(Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public synthetic lambda$animateSwitchBubbles$35$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateSwitchBubbles$35()V

    return-void
.end method

.method public synthetic lambda$animateSwitchBubbles$36$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateSwitchBubbles$36()V

    return-void
.end method

.method public synthetic lambda$hideDismissTarget$37$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$hideDismissTarget$37()V

    return-void
.end method

.method public synthetic lambda$hideStackUserEducation$20$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$hideStackUserEducation$20()V

    return-void
.end method

.method public synthetic lambda$maybeShowManageEducation$21$BubbleStackView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$maybeShowManageEducation$21(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$maybeShowManageEducation$22$BubbleStackView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$maybeShowManageEducation$22(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$maybeShowManageEducation$23$BubbleStackView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$maybeShowManageEducation$23(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$maybeShowManageEducation$24$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$maybeShowManageEducation$24()V

    return-void
.end method

.method public synthetic lambda$maybeShowManageEducation$25$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$maybeShowManageEducation$25()V

    return-void
.end method

.method public synthetic lambda$maybeShowStackUserEducation$19$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$maybeShowStackUserEducation$19()V

    return-void
.end method

.method public synthetic lambda$new$0$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$new$1$BubbleStackView(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$new$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public synthetic lambda$new$2$BubbleStackView(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$new$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$new$3$BubbleStackView(Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$new$3(Landroid/view/WindowInsets;)V

    return-void
.end method

.method public synthetic lambda$new$4$BubbleStackView(Ljava/util/function/Consumer;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$new$4(Ljava/util/function/Consumer;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$5$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$new$5()V

    return-void
.end method

.method public synthetic lambda$new$6$BubbleStackView(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$new$6(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public synthetic lambda$new$7$BubbleStackView(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$new$7(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$new$8$BubbleStackView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$new$8(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$9$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$new$9()V

    return-void
.end method

.method public synthetic lambda$screenshotAnimatingOutBubbleIntoSurface$47$BubbleStackView(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$screenshotAnimatingOutBubbleIntoSurface$47(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$screenshotAnimatingOutBubbleIntoSurface$48$BubbleStackView(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$screenshotAnimatingOutBubbleIntoSurface$48(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$setSelectedBubble$17$BubbleStackView(Lcom/android/systemui/bubbles/BubbleViewProvider;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$setSelectedBubble$17(Lcom/android/systemui/bubbles/BubbleViewProvider;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$setUpManageMenu$10$BubbleStackView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$setUpManageMenu$10(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setUpManageMenu$11$BubbleStackView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$setUpManageMenu$11(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setUpManageMenu$12$BubbleStackView(Landroid/content/Intent;Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$setUpManageMenu$12(Landroid/content/Intent;Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method public synthetic lambda$setUpManageMenu$13$BubbleStackView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$setUpManageMenu$13(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setUpOverflow$14$BubbleStackView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$setUpOverflow$14(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showManageMenu$42$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$showManageMenu$42()V

    return-void
.end method

.method public synthetic lambda$showManageMenu$43$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$showManageMenu$43()V

    return-void
.end method

.method public synthetic lambda$showNewlySelectedBubble$18$BubbleStackView(Lcom/android/systemui/bubbles/BubbleViewProvider;Lcom/android/systemui/bubbles/BubbleViewProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$showNewlySelectedBubble$18(Lcom/android/systemui/bubbles/BubbleViewProvider;Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    return-void
.end method

.method public synthetic lambda$updateExpandedBubble$44$BubbleStackView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$updateExpandedBubble$44(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$updateExpandedBubble$45$BubbleStackView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$updateExpandedBubble$45()V

    return-void
.end method

.method maybeShowManageEducation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShouldShowManageEducation:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$HbG4ghYlsoeaS4sVsaHntwSx5g4;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$HbG4ghYlsoeaS4sVsaHntwSx5g4;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "HasSeenBubblesManageOnboarding"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingManageEducationAway:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x28

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0xc8

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$y4EqEexeus3MZ5glmUeVBmnnXPA;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$y4EqEexeus3MZ5glmUeVBmnnXPA;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_3
    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getTouchableRegion(Landroid/graphics/Rect;)V

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/systemui/bubbles/BubbleOverflow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleOverflow;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/systemui/bubbles/BubbleOverflow;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleOverflow;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->cleanUpExpandedState()V

    :cond_0
    return-void
.end method

.method public onDisplaySizeChanged()V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setUpOverflow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050249

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStatusBarHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubblePaddingTop:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display size changed. Icon null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bubbles"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientation:I

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateResources(ILandroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->updateResources(I)V

    sget v1, Lcom/android/systemui/R$dimen;->dismiss_circle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetCircle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetCircle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissTargetCircle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    mul-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->setMagneticFieldRadiusPx(I)V

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mImeOffset:I

    add-int/2addr p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->setImeHeight(I)V

    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->animateForImeVisibility(Z)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-static {p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object p2

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    add-float/2addr p0, p1

    sget-object p1, Lcom/android/systemui/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p2, v0, p0, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->setupLocalMenu(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUserEducationView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateUserEducationForLayoutDirection()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleManageEducationView;->setLayoutDirection(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedViewDirection(I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1050249

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStatusBarHeight:I

    sget v0, Lcom/android/systemui/R$dimen;->bubble_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubblePaddingTop:I

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mWasOnLeftBeforeRotation:Z

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVerticalPosPercentBeforeRotation:F

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVerticalPosPercentBeforeRotation:F

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mOrientationChangedListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageMenu:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingManage:Z

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setUpFlyout()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setUpOverflow()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setUpUserEducation()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setUpManageMenu()V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedViewTheme()V

    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object p2

    const/high16 v1, 0x100000

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->dismissAll(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->accessibility_bubble_dismissed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v0

    :cond_1
    const/high16 v1, 0x80000

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    return v0

    :cond_2
    const/high16 v1, 0x40000

    if-ne p1, v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    return v0

    :cond_3
    sget v1, Lcom/android/systemui/R$id;->action_move_top_left:I

    if-ne p1, v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStackAfterFling(FF)V

    return v0

    :cond_4
    sget v1, Lcom/android/systemui/R$id;->action_move_top_right:I

    if-ne p1, v1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStackAfterFling(FF)V

    return v0

    :cond_5
    sget v1, Lcom/android/systemui/R$id;->action_move_bottom_left:I

    if-ne p1, v1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStackAfterFling(FF)V

    return v0

    :cond_6
    sget v1, Lcom/android/systemui/R$id;->action_move_bottom_right:I

    if-ne p1, v1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStackAfterFling(FF)V

    return v0

    :cond_7
    return v2
.end method

.method performBackPressIfNeeded()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {p0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->performBackPressIfNeeded()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method removeBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/bubbles/BadgedImageView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BadgedImageView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->removeViewAt(I)V

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->cleanupViews()V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/BubbleViewProvider;I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "was asked to remove Bubble, but didn\'t find the view! "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->releaseAnimatingOutBubbleBuffer()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideCurrentInputMethod()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->animateCollapse()V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/BubbleViewProvider;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->animateExpansion()V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/BubbleViewProvider;I)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/BubbleViewProvider;I)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->notifyExpansionChanged(Lcom/android/systemui/bubbles/BubbleViewProvider;Z)V

    return-void
.end method

.method setFlyoutStateForDragLength(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    if-eqz v0, :cond_1

    neg-float p1, p1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->setCollapsePercent(F)V

    cmpg-float v1, p1, v2

    if-ltz v1, :cond_2

    cmpl-float v3, p1, v4

    if-lez v3, :cond_a

    :cond_2
    cmpl-float v2, p1, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_3

    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v3

    :goto_0
    if-eqz v0, :cond_4

    if-gtz v2, :cond_5

    :cond_4
    if-nez v0, :cond_6

    if-gez v1, :cond_6

    :cond_5
    move v3, v5

    :cond_6
    if-eqz v6, :cond_7

    sub-float/2addr p1, v4

    goto :goto_1

    :cond_7
    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p1, v0

    :goto_1
    if-eqz v3, :cond_8

    const/4 v0, -0x1

    goto :goto_2

    :cond_8
    move v0, v5

    :goto_2
    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    if-eqz v6, :cond_9

    const/4 v5, 0x2

    :cond_9
    int-to-float v2, v5

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v2, p1, v0

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->getRestingTranslationX()F

    move-result p1

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method public setSelectedBubble(Lcom/android/systemui/bubbles/BubbleViewProvider;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Overflow"

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleData;->setShowingOverflow(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/BubbleData;->setShowingOverflow(Z)V

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->cancelAllExpandCollapseSwitchAnimations()V

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setSurfaceZOrderedOnTop(Z)V

    :cond_4
    :try_start_0
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$v9Fpisep_4rDb1vjFiHap285MHs;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$v9Fpisep_4rDb1vjFiHap285MHs;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->screenshotAnimatingOutBubbleIntoSurface(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->showNewlySelectedBubble(Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->showNewlySelectedBubble(Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    :goto_2
    return-void
.end method

.method public setTemporarilyInvisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTemporarilyInvisible:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    return-void
.end method

.method public setUnbubbleConversationCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mUnbubbleConversationCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method setupLocalMenu(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/systemui/R$id;->action_move_top_left:I

    sget v3, Lcom/android/systemui/R$string;->bubble_accessibility_action_move_top_left:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/systemui/R$id;->action_move_top_right:I

    sget v3, Lcom/android/systemui/R$string;->bubble_accessibility_action_move_top_right:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/systemui/R$id;->action_move_bottom_left:I

    sget v3, Lcom/android/systemui/R$string;->bubble_accessibility_action_move_bottom_left:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/systemui/R$id;->action_move_bottom_right:I

    sget v3, Lcom/android/systemui/R$string;->bubble_accessibility_action_move_bottom_right:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_0
    return-void
.end method

.method showExpandedViewContents(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getVirtualDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/BubbleViewProvider;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/bubbles/BubbleViewProvider;->setContentVisibility(Z)V

    :cond_0
    return-void
.end method

.method public subtractObscuredTouchableRegion(Landroid/graphics/Region;Landroid/view/View;)V
    .locals 0

    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingManage:Z

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mManageEducationView:Lcom/android/systemui/bubbles/BubbleManageEducationView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    :cond_1
    return-void
.end method

.method updateBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/systemui/bubbles/Bubble;)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->requestUpdate()V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/BubbleViewProvider;I)V

    return-void
.end method

.method public updateBubbleOrder(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/Bubble;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->reorderView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateBubbleZOrdersAndDotPosition(Z)V

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    return-void
.end method

.method public updateContentDescription()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->notification_bubble_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v5, :cond_3

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$string;->bubble_content_description_stack:I

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v0

    aput-object v3, v10, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/systemui/R$string;->bubble_content_description_single:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v0

    aput-object v3, v6, v7

    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method updateExpandedViewDirection(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$C-KKUSLKaEFdqjL8UshFp6r2378;

    invoke-direct {v0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$C-KKUSLKaEFdqjL8UshFp6r2378;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method updateExpandedViewTheme()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$gtti_QWIhKA2hCHaS7klo4hfz0Y;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$gtti_QWIhKA2hCHaS7klo4hfz0Y;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
