.class public Lcom/android/systemui/pip/phone/PipTouchHandler;
.super Ljava/lang/Object;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;,
        Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mBottomOffsetBufferPx:I

.field private mConnection:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;

.field private final mContext:Landroid/content/Context;

.field private mDeferResizeToNormalBoundsUntilRotation:I

.field private mDismissAreaHeight:I

.field private mDisplayRotation:I

.field private final mEnableDismissDragToEdge:Z

.field private final mEnableResize:Z

.field private mExpandedBounds:Landroid/graphics/Rect;

.field mExpandedMovementBounds:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mExpandedShortestEdgeSize:I

.field private final mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

.field private mGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

.field private mHandler:Landroid/os/Handler;

.field private mImeHeight:I

.field private mImeOffset:I

.field private mInsetBounds:Landroid/graphics/Rect;

.field private mIsImeShowing:Z

.field private mIsShelfShowing:Z

.field private mMagneticTarget:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

.field private mMagneticTargetAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMagnetizedPip:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private mMenuState:I

.field private mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private mMovementBounds:Landroid/graphics/Rect;

.field private mMovementBoundsExtraOffsets:I

.field private mMovementWithinDismiss:Z

.field private mNormalBounds:Landroid/graphics/Rect;

.field mNormalMovementBounds:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPinnedStackController:Landroid/view/IPinnedStackController;

.field private final mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

.field private mPipResizeGestureHandler:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

.field mResizedBounds:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSavedSnapFraction:F

.field private mSendingHoverAccessibilityEvents:Z

.field private mShelfHeight:I

.field private mShowPipMenuOnAnimationEnd:Z

.field private mShowTargetAction:Ljava/lang/Runnable;

.field private final mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

.field private final mTargetSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field private mTargetView:Lcom/android/systemui/util/DismissCircleView;

.field private mTargetViewContainer:Landroid/view/ViewGroup;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/shared/system/InputConsumerController;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/pip/PipSnapAlgorithm;Lcom/android/systemui/model/SysUiState;)V
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 226
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    .line 103
    iput-boolean v13, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    .line 129
    new-instance v1, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 134
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 137
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mResizedBounds:Landroid/graphics/Rect;

    .line 140
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 142
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    .line 143
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 144
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    .line 145
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 150
    iput v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    .line 157
    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$bnz9PC9JAAj_rxnZq96LLBoKnqw;

    invoke-direct {v1, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$bnz9PC9JAAj_rxnZq96LLBoKnqw;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowTargetAction:Ljava/lang/Runnable;

    .line 159
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    .line 162
    iput v13, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 171
    iput v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 183
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    .line 228
    iput-object v10, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    move-object/from16 v1, p2

    .line 229
    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityManager:Landroid/app/IActivityManager;

    .line 230
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v10, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 231
    iget-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 232
    iput-object v11, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 233
    new-instance v1, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;Lcom/android/systemui/pip/phone/PipTouchHandler$1;)V

    invoke-virtual {v11, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->addListener(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V

    move-object/from16 v15, p9

    .line 234
    iput-object v15, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    .line 235
    new-instance v1, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;Lcom/android/systemui/pip/phone/PipTouchHandler$1;)V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

    .line 236
    new-instance v9, Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v4, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    move-object v3, v9

    move-object/from16 v5, p6

    move-object/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/pip/phone/PipMotionHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/pip/PipSnapAlgorithm;Lcom/android/systemui/util/FloatingContentCoordinator;)V

    iput-object v9, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 238
    new-instance v14, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    new-instance v7, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Pinp5dDEZz4g_gFarHF_EBKOZzg;

    invoke-direct {v7, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Pinp5dDEZz4g_gFarHF_EBKOZzg;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    new-instance v8, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$uINUOEMRLade2qxAeU4HH4-1XrU;

    invoke-direct {v8, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$uINUOEMRLade2qxAeU4HH4-1XrU;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v9

    move-object/from16 v5, p8

    move-object/from16 v6, p6

    move-object/from16 v9, p10

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/pip/PipTaskOrganizer;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/systemui/model/SysUiState;)V

    iput-object v14, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    .line 242
    new-instance v1, Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Uq5M9Md512Sfgd22VAeFpot25E0;

    invoke-direct {v4, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Uq5M9Md512Sfgd22VAeFpot25E0;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 245
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/pip/phone/-$$Lambda$QWy-27z4N9eSKLQk7iOWRu3Ei38;

    invoke-direct {v5, v11}, Lcom/android/systemui/pip/phone/-$$Lambda$QWy-27z4N9eSKLQk7iOWRu3Ei38;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/pip/phone/PipTouchState;-><init>(Landroid/view/ViewConfiguration;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 248
    sget v2, Lcom/android/systemui/R$bool;->config_pipEnableDismissDragToEdge:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mEnableDismissDragToEdge:Z

    .line 249
    sget v2, Lcom/android/systemui/R$bool;->config_pipEnableResizeForMenu:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mEnableResize:Z

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->reloadResources()V

    .line 253
    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$A78OVgVs8H_2SG6WUxzMSclOdX0;

    invoke-direct {v1, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$A78OVgVs8H_2SG6WUxzMSclOdX0;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    invoke-virtual {v12, v1}, Lcom/android/systemui/shared/system/InputConsumerController;->setInputListener(Lcom/android/systemui/shared/system/InputConsumerController$InputListener;)V

    .line 254
    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$NVpciZTELe-GnxXPZeY5rYMmqJQ;

    invoke-direct {v1, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$NVpciZTELe-GnxXPZeY5rYMmqJQ;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    invoke-virtual {v12, v1}, Lcom/android/systemui/shared/system/InputConsumerController;->setRegistrationListener(Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;)V

    move-object/from16 v1, p5

    .line 256
    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    move-object/from16 v1, p7

    .line 257
    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    .line 258
    new-instance v1, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;

    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    new-instance v4, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$1nY3kLe318Fm3UtIAbDmSK80h7w;

    invoke-direct {v4, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$1nY3kLe318Fm3UtIAbDmSK80h7w;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    new-instance v5, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$uINUOEMRLade2qxAeU4HH4-1XrU;

    invoke-direct {v5, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$uINUOEMRLade2qxAeU4HH4-1XrU;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iget-object v6, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, p6

    move-object/from16 v18, p9

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-direct/range {v14 .. v21}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;-><init>(Landroid/content/Context;Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/pip/PipSnapAlgorithm;Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;Ljava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mConnection:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;

    .line 262
    new-instance v1, Lcom/android/systemui/util/DismissCircleView;

    invoke-direct {v1, v10}, Lcom/android/systemui/util/DismissCircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetView:Lcom/android/systemui/util/DismissCircleView;

    .line 263
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 264
    sget v2, Lcom/android/systemui/R$drawable;->floating_dismiss_gradient_transition:I

    .line 265
    invoke-virtual {v10, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 264
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 267
    iget-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetView:Lcom/android/systemui/util/DismissCircleView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 269
    iget-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getMagnetizedPip()Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMagnetizedPip:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 270
    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetView:Lcom/android/systemui/util/DismissCircleView;

    invoke-virtual {v1, v2, v13}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->addTarget(Landroid/view/View;I)Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMagneticTarget:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMagneticTargetSize()V

    .line 273
    iget-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMagnetizedPip:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    new-instance v2, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Nekx4ZO_bAe0QnJLdZ92hnlTRtE;

    invoke-direct {v2, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Nekx4ZO_bAe0QnJLdZ92hnlTRtE;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->setAnimateStuckToTarget(Lkotlin/jvm/functions/Function5;)V

    .line 278
    iget-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMagnetizedPip:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    new-instance v2, Lcom/android/systemui/pip/phone/PipTouchHandler$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/pip/phone/PipTouchHandler$1;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->setMagnetListener(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;)V

    .line 314
    iget-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetView:Lcom/android/systemui/util/DismissCircleView;

    invoke-static {v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMagneticTargetAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipTouchHandler;IZLjava/lang/Runnable;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMenuState(IZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->showDismissTargetMaybe()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->hideDismissTarget()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    return p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/pip/phone/PipTouchHandler;F)F
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mEnableDismissDragToEdge:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/view/ViewGroup;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowTargetAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateDismissFraction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/app/IActivityManager;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityManager:Landroid/app/IActivityManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->shouldShowResizeHandle()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    return-object p0
.end method

.method private cleanUpDismissTarget()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowTargetAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private createOrUpdateDismissTarget()V
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowTargetAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 536
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMagneticTargetAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel()V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getDismissTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 545
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 546
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getDismissTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 545
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getDismissTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private getDismissTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 10

    .line 555
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 556
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 558
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissAreaHeight:I

    iget p0, v0, Landroid/graphics/Point;->y:I

    sub-int v6, p0, v4

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/16 v7, 0x7e8

    const/16 v8, 0x118

    const/4 v9, -0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const-string p0, "pip-dismiss-overlay"

    .line 568
    invoke-virtual {v1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 569
    iget p0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p0, p0, 0x10

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 p0, 0x0

    .line 570
    invoke-virtual {v1, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v1
.end method

.method private getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1032
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1033
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 1034
    iget-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v3, :cond_0

    iget p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1033
    :goto_0
    invoke-virtual {v1, p1, v2, v0, p0}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method private handleTouchEvent(Landroid/view/InputEvent;)Z
    .locals 11

    .line 638
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    if-nez v0, :cond_1

    return v1

    .line 646
    :cond_1
    check-cast p1, Landroid/view/MotionEvent;

    .line 647
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    .line 648
    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->willStartResizeGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 652
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->reset()V

    return v1

    .line 656
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMagnetizedPip:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    .line 657
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 662
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 667
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    return v1

    .line 673
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 675
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    .line 677
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_10

    if-eq v3, v1, :cond_d

    const/4 v5, 0x2

    if-eq v3, v5, :cond_b

    if-eq v3, v4, :cond_e

    const/4 v5, 0x7

    if-eq v3, v5, :cond_a

    const/16 v5, 0x9

    if-eq v3, v5, :cond_9

    const/16 v5, 0xa

    if-eq v3, v5, :cond_7

    goto/16 :goto_1

    .line 727
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    .line 728
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v3}, Lcom/android/systemui/pip/phone/PipTouchState;->scheduleHoverExitTimeoutCallback()V

    :cond_8
    if-nez v0, :cond_11

    .line 730
    iget-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-eqz v3, :cond_11

    const/16 v3, 0x100

    .line 731
    invoke-direct {p0, v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->sendAccessibilityHoverEvent(I)V

    .line 732
    iput-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    goto/16 :goto_1

    .line 710
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 711
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipTouchState;->removeHoverExitTimeoutCallback()V

    .line 712
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 714
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->shouldShowResizeHandle()Z

    move-result v10

    .line 712
    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    :cond_a
    if-nez v0, :cond_11

    .line 717
    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-nez v2, :cond_11

    const/16 v2, 0x80

    .line 718
    invoke-direct {p0, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->sendAccessibilityHoverEvent(I)V

    .line 719
    iput-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    goto :goto_1

    .line 683
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v2, v3}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_1

    .line 687
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_1

    .line 693
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds()V

    .line 695
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v3, v5}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_1

    .line 702
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->startedDragging()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v0

    if-nez v0, :cond_f

    move v2, v1

    .line 703
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->reset()V

    move v0, v2

    goto :goto_1

    .line 679
    :cond_10
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v2, v3}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V

    :cond_11
    :goto_1
    if-eqz v0, :cond_13

    .line 740
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 742
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->startedDragging()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 743
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 744
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->pokeMenu()V

    .line 747
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->handlePointerEvent(Landroid/view/MotionEvent;)V

    :cond_13
    return v1
.end method

.method private hideDismissTarget()V
    .locals 4

    .line 597
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowTargetAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMagneticTargetAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 600
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 599
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    new-instance v2, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$JjtgIlfsvLfISVWRI9f7tSgS_AA;

    invoke-direct {v2, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$JjtgIlfsvLfISVWRI9f7tSgS_AA;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 602
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 603
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    .line 605
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    return-void
.end method

.method public static synthetic lambda$1nY3kLe318Fm3UtIAbDmSK80h7w(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onAccessibilityShowMenu()V

    return-void
.end method

.method public static synthetic lambda$A78OVgVs8H_2SG6WUxzMSclOdX0(Lcom/android/systemui/pip/phone/PipTouchHandler;Landroid/view/InputEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->handleTouchEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$NVpciZTELe-GnxXPZeY5rYMmqJQ(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$Pinp5dDEZz4g_gFarHF_EBKOZzg(Lcom/android/systemui/pip/phone/PipTouchHandler;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$bnz9PC9JAAj_rxnZq96LLBoKnqw(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->showDismissTargetMaybe()V

    return-void
.end method

.method private synthetic lambda$hideDismissTarget$2()V
    .locals 1

    .line 602
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 6

    .line 243
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->shouldShowResizeHandle()Z

    move-result v5

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 243
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenuWithDelay(ILandroid/graphics/Rect;ZZZ)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 6

    .line 275
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateIntoDismissTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFZLkotlin/jvm/functions/Function0;)V

    .line 276
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic lambda$uINUOEMRLade2qxAeU4HH4-1XrU(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds()V

    return-void
.end method

.method private onAccessibilityShowMenu()V
    .locals 6

    .line 631
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 632
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v4

    .line 633
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->shouldShowResizeHandle()Z

    move-result v5

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 631
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    return-void
.end method

.method private onRegistrationChanged(Z)V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mConnection:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 621
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    if-nez p1, :cond_1

    .line 623
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 626
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    :cond_1
    return-void
.end method

.method private reloadResources()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 319
    sget v1, Lcom/android/systemui/R$dimen;->pip_bottom_offset_buffer:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mBottomOffsetBufferPx:I

    .line 320
    sget v1, Lcom/android/systemui/R$dimen;->pip_expanded_shortest_edge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    .line 322
    sget v1, Lcom/android/systemui/R$dimen;->pip_ime_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeOffset:I

    .line 323
    sget v1, Lcom/android/systemui/R$dimen;->floating_dismiss_gradient_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissAreaHeight:I

    .line 324
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMagneticTargetSize()V

    return-void
.end method

.method private sendAccessibilityHoverEvent(I)V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    const/4 v0, 0x1

    .line 759
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setImportantForAccessibility(Z)V

    .line 760
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSourceNodeId(J)V

    const/4 v0, -0x3

    .line 761
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 763
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private setMenuState(IZLjava/lang/Runnable;)V
    .locals 9

    .line 799
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 803
    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    if-eq v2, v1, :cond_1

    if-eqz p2, :cond_5

    .line 809
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mResizedBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 810
    new-instance p2, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-direct {p2, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 811
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, v3, v4, p3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToExpandedState(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    goto :goto_2

    :cond_1
    if-nez p1, :cond_5

    .line 814
    iget p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    if-ne p3, v1, :cond_5

    const/high16 p3, -0x40800000    # -1.0f

    if-eqz p2, :cond_4

    .line 818
    iget p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 828
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    invoke-interface {p2}, Landroid/view/IPinnedStackController;->getDisplayRotation()I

    move-result p2

    .line 829
    iget v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDisplayRotation:I

    if-eq v3, p2, :cond_2

    .line 830
    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "PipTouchHandler"

    const-string v3, "Could not get display rotation from controller"

    .line 833
    invoke-static {p2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_2
    :goto_0
    iget p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    if-ne p2, v2, :cond_5

    .line 838
    new-instance v4, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mResizedBounds:Landroid/graphics/Rect;

    invoke-direct {v4, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 839
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 840
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 841
    iget-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    goto :goto_1

    :cond_3
    move v3, v0

    .line 840
    :goto_1
    invoke-virtual {p2, v4, v2, v6, v3}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 842
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 844
    iput p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    goto :goto_2

    .line 847
    :cond_4
    iput p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 850
    :cond_5
    :goto_2
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    .line 851
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds()V

    const/4 p2, 0x1

    if-nez p1, :cond_6

    move p3, p2

    goto :goto_3

    :cond_6
    move p3, v0

    .line 854
    :goto_3
    invoke-direct {p0, p3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    if-eq p1, p2, :cond_8

    .line 856
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    if-ne p1, v1, :cond_7

    move v0, p2

    :cond_7
    invoke-static {p0, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureMenuVisible(Landroid/content/Context;Z)V

    :cond_8
    return-void
.end method

.method private shouldShowResizeHandle()Z
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipBoundsHandler;->hasSaveReentryBounds()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private showDismissTargetMaybe()V
    .locals 4

    .line 577
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->createOrUpdateDismissTarget()V

    .line 579
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetView:Lcom/android/systemui/util/DismissCircleView;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 582
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMagneticTargetAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel()V

    .line 586
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMagneticTargetAnimator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 587
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 588
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    .line 590
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    return-void
.end method

.method private updateDismissFraction()V
    .locals 5

    .line 773
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-nez v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 775
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 777
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v2

    cmpl-float v3, v3, v1

    const/4 v4, 0x0

    if-lez v3, :cond_0

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 779
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v4

    .line 781
    :goto_0
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isMenuActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 783
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setDismissFraction(F)V

    :cond_2
    return-void
.end method

.method private updateMagneticTargetSize()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetView:Lcom/android/systemui/util/DismissCircleView;

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 333
    sget v1, Lcom/android/systemui/R$dimen;->dismiss_circle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 334
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x51

    .line 336
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 337
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->floating_dismiss_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 339
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTargetView:Lcom/android/systemui/util/DismissCircleView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMagneticTarget:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->setMagneticFieldRadiusPx(I)V

    return-void
.end method

.method private updateMovementBounds()V
    .locals 6

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 1023
    iget-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    goto :goto_0

    :cond_0
    move v4, v5

    .line 1022
    :goto_0
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1024
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->setCurrentMovementBounds(Landroid/graphics/Rect;)V

    .line 1026
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v5

    .line 1027
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    if-eqz v0, :cond_2

    .line 1028
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    .line 1027
    :cond_2
    invoke-virtual {v1, v5}, Lcom/android/systemui/pip/PipBoundsHandler;->setMinEdgeSize(I)V

    return-void
.end method

.method private willResizeMenu()Z
    .locals 3

    .line 1042
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mEnableResize:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    .line 1046
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eq v0, p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public adjustBoundsForRotation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 425
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p3, v0, v2}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 427
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBoundsExtraOffsets:I

    sub-int/2addr p3, v1

    .line 428
    iget p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mBottomOffsetBufferPx:I

    sub-int/2addr p3, p0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    if-gt p3, p0, :cond_0

    .line 429
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipTouchHandler"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMovementBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mNormalBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mNormalMovementBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mExpandedBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mExpandedMovementBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMenuState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsImeShowing="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mImeHeight="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsShelfShowing="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mShelfHeight="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShelfHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSavedSnapFraction="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEnableDragToEdgeDismiss="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mEnableDismissDragToEdge:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMovementBoundsExtraOffsets="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBoundsExtraOffsets:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/pip/phone/PipTouchState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1066
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1067
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    if-eqz p0, :cond_0

    .line 1068
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;
    .locals 0

    .line 864
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object p0
.end method

.method public getNormalBounds()Landroid/graphics/Rect;
    .locals 0

    .line 886
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method getPipResizeGestureHandler()Lcom/android/systemui/pip/phone/PipResizeGestureHandler;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 869
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    return-object p0
.end method

.method public synthetic lambda$hideDismissTarget$2$PipTouchHandler()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->lambda$hideDismissTarget$2()V

    return-void
.end method

.method public synthetic lambda$new$0$PipTouchHandler()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$new$1$PipTouchHandler(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->lambda$new$1(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public onActivityPinned()V
    .locals 1

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->createOrUpdateDismissTarget()V

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    .line 371
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->onActivityPinned()V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/FloatingContentCoordinator;->onContentAdded(Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;)V

    return-void
.end method

.method public onActivityUnpinned(Landroid/content/ComponentName;)V
    .locals 1

    if-nez p1, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    .line 380
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFloatingContentCoordinator:Lcom/android/systemui/util/FloatingContentCoordinator;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/FloatingContentCoordinator;->onContentRemoved(Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;)V

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mResizedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 383
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->onActivityUnpinned()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->onConfigurationChanged()V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->reloadResources()V

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->createOrUpdateDismissTarget()V

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 416
    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .locals 9

    .line 435
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 436
    :goto_0
    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDisplayRotation:I

    const/4 v3, 0x1

    if-eq v2, p6, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 438
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipTouchState;->reset()V

    .line 442
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 443
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 444
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, p1, v2, v0}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 447
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 450
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p3, p1, v5, v1}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 455
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 456
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 457
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 458
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    iget v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v4, v7, v8, v5}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object v4

    .line 460
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v5, v1, v1, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 461
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 462
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, p1, v4, v0}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->updateMinSize(II)V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/pip/phone/PipResizeGestureHandler;->updateMaxSize(II)V

    .line 471
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeOffset:I

    goto :goto_2

    :cond_4
    move v0, v1

    .line 472
    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShelfHeight:I

    goto :goto_3

    :cond_5
    move v5, v1

    .line 470
    :goto_3
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez p4, :cond_6

    if-eqz p5, :cond_d

    .line 477
    :cond_6
    iget-object p4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {p4}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_6

    .line 481
    :cond_7
    iget p4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    const/4 p5, 0x2

    if-ne p4, p5, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result p4

    if-eqz p4, :cond_8

    goto :goto_4

    :cond_8
    move v3, v1

    .line 482
    :goto_4
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 483
    iget-object p5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    .line 484
    iget-boolean v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v5, :cond_9

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 483
    :cond_9
    invoke-virtual {p5, p3, p1, p4, v1}, Lcom/android/systemui/pip/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 485
    iget-object p5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBoundsExtraOffsets:I

    sub-int/2addr p5, v1

    .line 488
    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    iget v5, p4, Landroid/graphics/Rect;->top:I

    if-ge v1, v5, :cond_a

    goto :goto_5

    :cond_a
    sub-int/2addr v1, v0

    :goto_5
    if-eqz v3, :cond_b

    .line 493
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 494
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/systemui/pip/PipSnapAlgorithm;

    iget v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    invoke-virtual {v3, p3, p4, v5}, Lcom/android/systemui/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    :cond_b
    if-ge p5, v1, :cond_c

    .line 500
    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mBottomOffsetBufferPx:I

    sub-int/2addr p5, v3

    if-le p4, p5, :cond_d

    .line 501
    iget-object p5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    sub-int/2addr v1, p4

    invoke-virtual {p5, p3, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToOffset(Landroid/graphics/Rect;I)V

    goto :goto_6

    :cond_c
    if-le p5, v1, :cond_d

    .line 505
    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget p5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mBottomOffsetBufferPx:I

    sub-int p5, v1, p5

    if-le p4, p5, :cond_d

    .line 506
    iget-object p5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    sub-int/2addr v1, p4

    invoke-virtual {p5, p3, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToOffset(Landroid/graphics/Rect;I)V

    .line 514
    :cond_d
    :goto_6
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 515
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 516
    iput p6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDisplayRotation:I

    .line 517
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 518
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds()V

    .line 519
    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBoundsExtraOffsets:I

    .line 520
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mConnection:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;

    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    iget-object p5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3, p4, p5, v0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 524
    iget p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    if-ne p1, p6, :cond_e

    .line 525
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    const/4 v5, 0x1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 527
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    const/4 p1, -0x1

    .line 528
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    :cond_e
    return-void
.end method

.method public onPinnedStackAnimationEnded(I)V
    .locals 6

    .line 389
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 390
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 394
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mResizedBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 397
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    if-eqz p1, :cond_1

    .line 398
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v1, 0x1

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->shouldShowResizeHandle()Z

    move-result v5

    .line 398
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    const/4 p1, 0x0

    .line 401
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    :cond_1
    return-void
.end method

.method public onShelfVisibilityChanged(ZI)V
    .locals 0

    .line 420
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    .line 421
    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShelfHeight:I

    return-void
.end method

.method setPinnedStackController(Landroid/view/IPinnedStackController;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    return-void
.end method

.method setPipMotionHelper(Lcom/android/systemui/pip/phone/PipMotionHelper;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 879
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-void
.end method

.method setPipResizeGestureHandler(Lcom/android/systemui/pip/phone/PipResizeGestureHandler;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 874
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/systemui/pip/phone/PipResizeGestureHandler;

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->setAllowTouches(Z)V

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 7

    .line 360
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v5

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->shouldShowResizeHandle()Z

    move-result v6

    .line 361
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    :cond_0
    return-void
.end method
