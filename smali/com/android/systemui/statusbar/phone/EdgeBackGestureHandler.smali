.class public Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/shared/tracing/ProtoTraceable;
.implements Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/settings/CurrentUserTracker;",
        "Landroid/hardware/display/DisplayManager$DisplayListener;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;",
        ">;",
        "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
        "Lcom/android/systemui/tracing/nano/SystemUiTraceProto;",
        ">;",
        "Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;"
    }
.end annotation


# static fields
.field private static final DEBUG_GESTURE:Z

.field private static final DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

.field private static final GESTURE_KEY_DISTANCE_THRESHOLD:I

.field private static final IS_SUPPORT_CAMERA_NOTCH:Z

.field private static final MAX_LONG_PRESS_TIMEOUT:I

.field private static final PORTRAIT_LEAVE_ONE_HANDED_SCALE:F

.field private static final SIDE_GESTURE_EDGE_BACK_SCALE:F

.field private static final SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

.field private static final SIDE_GESTURE_EDGE_MOVE_SCALE:F

.field private static final SIDE_GESTURE_EDGE_SCALE:F

.field private static mCameraNotchHeight:I

.field public static sSideGestureEnabled:Z


# instance fields
.field private final mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mAllowGesture:Z

.field private mAllowLeaveOneHandedGesture:Z

.field private final mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mBottomGestureHeight:F

.field private final mContext:Landroid/content/Context;

.field private final mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

.field private mDisabledForQuickstep:Z

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDownPoint:Landroid/graphics/PointF;

.field private mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

.field private mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

.field private mEdgeSwipeStartThreshold:I

.field private mEdgeWidthLeft:I

.field private mEdgeWidthRight:I

.field private final mEndPoint:Landroid/graphics/PointF;

.field private final mExcludeRegion:Landroid/graphics/Region;

.field private mGameToolBoxRegionHeight:I

.field private final mGestureBlockingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureBlockingActivityRunning:Z

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field private mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

.field private mInRejectedExclusion:Z

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsBackGestureAllowed:Z

.field private mIsEnabled:Z

.field private mIsGesturalModeEnabled:Z

.field protected mIsHidden:Z

.field private mIsIgnoreCameraNotch:Z

.field private mIsNavBarShownTransiently:Z

.field private mIsOnLeftEdge:Z

.field private mIsOneHandedPerformed:Z

.field private mIsOneHandedSettingEnable:Z

.field private mLeftInset:I

.field private mLogGesture:Z

.field private final mLongPressTimeout:I

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mOneHandListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;

.field private mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

.field private mOpOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

.field private final mOpTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private mReceiverRegister:Z

.field private mRightInset:I

.field private mRotation:I

.field private mRunningTaskId:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSideGestureKeyAnimThreshold:I

.field private mSideGestureKeyDistanceThreshold:I

.field private mStartingQuickstepRotation:I

.field private final mStateChangeCallback:Ljava/lang/Runnable;

.field private mSwipeStartThreshold:I

.field private mSysUiFlags:I

.field private mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mThresholdCrossed:Z

.field private mTopClassName:Ljava/lang/String;

.field private mTopPackageName:Ljava/lang/String;

.field private final mUnrestrictedExcludeRegion:Landroid/graphics/Region;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "gestures.back_timeout"

    const/16 v1, 0xfa

    .line 136
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    const-string v0, "persist.gesture_button.debug_gesture"

    const/4 v1, 0x0

    .line 236
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v2, 0x31

    aput v2, v0, v1

    .line 240
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->IS_SUPPORT_CAMERA_NOTCH:Z

    .line 244
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x5090014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v2, "persist.gesture_button.side.edge.scale"

    .line 243
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v2

    sput v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_SCALE:F

    const-string v0, "persist.gesture_button.side.move.scale"

    const/16 v3, 0x2d

    .line 248
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sput v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_MOVE_SCALE:F

    .line 252
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x5090013

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v4, "persist.gesture_button.side.back.scale"

    .line 251
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sput v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_BACK_SCALE:F

    const-string v0, "persist.gesture_button.side.hor.scale"

    const/16 v2, 0x12c

    .line 256
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v2

    sput v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

    const/16 v0, 0x50

    .line 281
    sput v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mCameraNotchHeight:I

    const-string v0, "persist.gesture_button.one.handed.leave.scale"

    .line 287
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sput v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->PORTRAIT_LEAVE_ONE_HANDED_SCALE:F

    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    .line 294
    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    const-string v0, "persist.gesture_button.dis"

    const/16 v2, 0x3c

    .line 326
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    .line 327
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/lang/Runnable;)V
    .locals 4

    .line 374
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 154
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 163
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    .line 178
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 183
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    .line 184
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    const/4 v0, -0x1

    .line 196
    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    .line 201
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 202
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    .line 203
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 257
    sget v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_SCALE:F

    const/high16 v3, 0x44870000    # 1080.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeSwipeStartThreshold:I

    .line 258
    sget v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_MOVE_SCALE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSideGestureKeyAnimThreshold:I

    .line 259
    sget v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_BACK_SCALE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSideGestureKeyDistanceThreshold:I

    .line 264
    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenHeight:I

    .line 265
    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenWidth:I

    .line 269
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsHidden:Z

    .line 273
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mReceiverRegister:Z

    .line 282
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsIgnoreCameraNotch:Z

    .line 288
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedSettingEnable:Z

    .line 289
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedPerformed:Z

    .line 290
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowLeaveOneHandedGesture:Z

    .line 302
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOneHandListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;

    const/16 v0, 0x32

    .line 328
    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSwipeStartThreshold:I

    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTopPackageName:Ljava/lang/String;

    .line 337
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTopClassName:Ljava/lang/String;

    .line 349
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 1529
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$6;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOpTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 1540
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$7;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 378
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 379
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 380
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStateChangeCallback:Ljava/lang/Runnable;

    const p2, 0x1040251

    .line 382
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 381
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    const-string p4, "EdgeBackGestureHandler"

    if-eqz p2, :cond_1

    .line 384
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    .line 387
    :try_start_0
    invoke-virtual {p5, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p5

    const-string v0, "gesture_blocking_activities"

    const-string v2, "array"

    .line 388
    invoke-virtual {p5, v0, v2, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "No resource found for gesture-blocking activities"

    .line 392
    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 394
    :cond_0
    invoke-virtual {p5, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 395
    array-length p5, p2

    move v0, v1

    :goto_0
    if-ge v0, p5, :cond_1

    aget-object v2, p2, v0

    .line 396
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    .line 397
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 396
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p5, "Failed to add gesture blocking activities"

    .line 401
    invoke-static {p4, p5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    :cond_1
    :goto_1
    const-class p2, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-virtual {p2, p0}, Lcom/android/systemui/tracing/ProtoTracer;->add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    .line 406
    sget p2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    .line 407
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p5

    .line 406
    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongPressTimeout:I

    .line 409
    new-instance p2, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 410
    invoke-virtual {p5}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$_LuW15YEeoCQlkaEsBj7DgfSfSI;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$_LuW15YEeoCQlkaEsBj7DgfSfSI;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    invoke-direct {p2, p5, v0, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources()V

    .line 413
    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$0xBzEFuOIJ4-3m0YZa3952VKAW8;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$0xBzEFuOIJ4-3m0YZa3952VKAW8;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    invoke-virtual {p3, p2}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    .line 416
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 420
    invoke-virtual {p2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getGestureButtonController()Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    .line 424
    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    .line 425
    iget p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenWidth:I

    int-to-float p3, p2

    sget p5, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_MOVE_SCALE:F

    mul-float/2addr p3, p5

    float-to-int p3, p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSideGestureKeyAnimThreshold:I

    int-to-float p2, p2

    .line 426
    sget p3, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_BACK_SCALE:F

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSideGestureKeyDistanceThreshold:I

    .line 427
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplay:Landroid/view/Display;

    .line 428
    new-instance p1, Lcom/oneplus/phone/OpSideGestureConfiguration;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplay:Landroid/view/Display;

    invoke-direct {p1, p2}, Lcom/oneplus/phone/OpSideGestureConfiguration;-><init>(Landroid/view/Display;)V

    .line 429
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 430
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 431
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenHeight:I

    .line 432
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenWidth:I

    .line 436
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050249

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mCameraNotchHeight:I

    .line 439
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->IS_SUPPORT_CAMERA_NOTCH:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 441
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsIgnoreCameraNotch:Z

    .line 450
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 452
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    goto :goto_2

    .line 457
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$dimen;->op_game_mode_toolbox_region_width_land:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGameToolBoxRegionHeight:I

    goto :goto_3

    .line 454
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$dimen;->op_game_mode_toolbox_region_width_port:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGameToolBoxRegionHeight:I

    goto :goto_3

    :cond_5
    const/high16 p1, 0x42400000    # 48.0f

    .line 461
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/android/systemui/assist/ui/DisplayUtils;->convertDpToPx(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGameToolBoxRegionHeight:I

    .line 466
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOneHandListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;

    invoke-virtual {p1, p3}, Lcom/android/systemui/recents/OverviewProxyService;->addOneHandListener(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;)V

    .line 467
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 469
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    .line 470
    sget-object p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    array-length p3, p1

    move p5, v1

    :goto_4
    if-ge p5, p3, :cond_6

    aget-object v0, p1, p5

    .line 471
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    .line 474
    :cond_6
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const/16 p3, 0xdd

    if-eqz p1, :cond_7

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "is Support one hand feature "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p5, p2, [I

    aput p3, p5, v1

    invoke-static {p5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-array p1, p2, [I

    aput p3, p1, v1

    .line 478
    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 479
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getOneHandModeController()Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOpOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    .line 484
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getGestureOnlineConfig()Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->notifyLeaveOneHandedMode()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;II)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/PointF;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Lcom/android/systemui/recents/OverviewProxyService;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->logGesture(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateTopPackage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)I
    .locals 0

    .line 126
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisabledForQuickstep()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Z)Z
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isGestureBlockingActivityRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedSettingEnable:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedPerformed:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Z)Z
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedPerformed:Z

    return p1
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 991
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 992
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    .line 993
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 994
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 995
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {v0, p1}, Lcom/oneplus/phone/OpSideGestureNavView;->handleTouch(Landroid/view/MotionEvent;)V

    .line 1003
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    invoke-interface {p0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->cancelBack()V

    .line 1005
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 766
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 767
    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowWidth()I

    move-result v2

    const/4 v7, 0x0

    .line 768
    invoke-static {v7}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowHeight(I)I

    move-result v3

    const/16 v4, 0x7e8

    const v5, 0x800128

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 778
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 779
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 783
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EdgeBackGestureHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 784
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->nav_bar_edge_panel:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 785
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 786
    invoke-virtual {v0, v7}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v0
.end method

.method private disposeInputChannel()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 604
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 608
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private getScreenHeight(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1487
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenHeight:I

    return p0

    .line 1485
    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenWidth:I

    return p0

    .line 1483
    :cond_3
    :goto_1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenHeight:I

    return p0
.end method

.method private isGameToolBoxRegion(I)Z
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->gameToolboxEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGameToolBoxRegionHeight:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGestureBlockingActivityRunning()Z
    .locals 1

    .line 1431
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1432
    :cond_0
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :goto_0
    if-eqz v0, :cond_1

    .line 1433
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private isNonBlockHiddenNavBar()Z
    .locals 4

    .line 1587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTopPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1591
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNonBlockHiddenNavBar package name "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTopPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " navbar hidden "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSysUiFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EdgeBackGestureHandler"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSysUiFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTopPackageName:Ljava/lang/String;

    .line 1598
    invoke-virtual {v0, p0}, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->isInNonBlockBackGestureList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private isPortrait()Z
    .locals 1

    .line 794
    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRotation:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method private isWithinTouchRegion(II)Z
    .locals 13

    .line 806
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 814
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_9

    .line 815
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 816
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSwipeStartThreshold:I

    sub-int/2addr v0, v4

    if-ge p2, v0, :cond_1

    return v1

    .line 819
    :cond_1
    iget p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenWidth:I

    div-int/lit8 v0, p2, 0x3

    if-lt p1, v0, :cond_2

    mul-int/lit8 p2, p2, 0x2

    div-int/2addr p2, v2

    if-le p1, p2, :cond_7

    .line 820
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return v3

    .line 824
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRotation:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSwipeStartThreshold:I

    sub-int/2addr v0, v4

    if-lt p1, v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRotation:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSwipeStartThreshold:I

    if-le p1, v0, :cond_6

    :cond_5
    return v1

    .line 828
    :cond_6
    iget p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenWidth:I

    div-int/lit8 v0, p1, 0x3

    if-lt p2, v0, :cond_8

    mul-int/lit8 p1, p1, 0x2

    div-int/2addr p1, v2

    if-le p2, p1, :cond_7

    goto :goto_0

    :cond_7
    return v1

    .line 829
    :cond_8
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return v3

    .line 838
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    const-string v4, "EdgeBackGestureHandler"

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/oneplus/phone/OpSideGestureNavView;->isExitAnimFinished()Z

    move-result v0

    if-nez v0, :cond_b

    .line 840
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    if-eqz p0, :cond_a

    const-string p0, "[DEBUG_GESTURE][Back] Exit anim not finished"

    .line 841
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v1

    .line 849
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRotation:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->adjuestEdgeThreshold(III)I

    move-result v0

    .line 852
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTopClassName:Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 853
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "topClassName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTopClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->getTopClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->isInPhotoEditorList(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v6, "~"

    const-string v7, "],["

    const-string v8, "]"

    if-eqz v5, :cond_e

    div-int/lit8 v5, v0, 0x2

    if-le p1, v5, :cond_e

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    if-ge p1, v9, :cond_e

    .line 859
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    if-eqz p1, :cond_d

    .line 860
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[DEBUG_GESTURE][Back] special ignore region [0~"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, v5

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v1

    :cond_e
    if-le p1, v0, :cond_10

    .line 873
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v0

    if-ge p1, v5, :cond_10

    .line 875
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    if-eqz p1, :cond_f

    .line 876
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[DEBUG_GESTURE][Back] ignore region [0~"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v1

    :cond_10
    int-to-float v0, p2

    .line 889
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBottomGestureHeight:F

    sub-float/2addr v5, v6

    cmpl-float v0, v0, v5

    if-gez v0, :cond_1b

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isYInTouchRegion(I)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_3

    .line 914
    :cond_11
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v0, v5

    if-le p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthRight:I

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v0, v5

    if-lt p1, v0, :cond_12

    goto :goto_1

    :cond_12
    move v0, v1

    goto :goto_2

    :cond_13
    :goto_1
    move v0, v3

    .line 916
    :goto_2
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_14

    .line 917
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "withinRange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mEdgeWidthLeft="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mLeftInset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mEdgeWidthRight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthRight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mRightInset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mDisplaySize.x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_14
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    if-eqz v5, :cond_15

    .line 925
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return v0

    .line 930
    :cond_15
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isGameToolBoxRegion(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 931
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    if-eqz p0, :cond_16

    const-string p0, "[DEBUG_GESTURE][Back] isInGameToolBoxRegion!"

    .line 932
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return v1

    .line 938
    :cond_17
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v5

    .line 941
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    if-eqz v6, :cond_18

    .line 942
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DEBUG_GESTURE][Back] isInExcludedRegion "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    if-eqz v5, :cond_1a

    if-eqz v0, :cond_19

    .line 952
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/lit8 v12, p1, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    .line 955
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 956
    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 957
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    .line 958
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->logGesture(I)V

    :cond_19
    return v1

    .line 963
    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 964
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return v0

    .line 892
    :cond_1b
    :goto_3
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    if-eqz p1, :cond_1c

    .line 893
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[DEBUG_GESTURE][Back] touch on navigation bar area ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBottomGestureHeight:F

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " ~ "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return v1
.end method

.method private isYInLeaveOneHandedTouchRegion(I)Z
    .locals 1

    int-to-float p1, p1

    .line 985
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRotation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->getScreenHeight(I)I

    move-result p0

    int-to-float p0, p0

    sget v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->PORTRAIT_LEAVE_ONE_HANDED_SCALE:F

    mul-float/2addr p0, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isYInTouchRegion(I)Z
    .locals 1

    int-to-float p1, p1

    .line 977
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRotation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->getScreenHeight(I)I

    move-result p0

    int-to-float p0, p0

    sget v0, Lcom/oneplus/phone/OpSideGestureConfiguration;->PORTRAIT_NON_DETECT_SCALE:F

    mul-float/2addr p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$_LuW15YEeoCQlkaEsBj7DgfSfSI(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavigationSettingsChanged()V

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 413
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSysUiFlags:I

    return-void
.end method

.method private logGesture(I)V
    .locals 11

    .line 1009
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1012
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    const/16 v1, 0xe0

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v0

    .line 1014
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    move v4, v0

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v5, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v6, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    add-int v9, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthRight:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    add-int/2addr v2, p0

    sub-int v10, v0, v2

    move v2, p1

    .line 1013
    invoke-static/range {v1 .. v10}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIIIIII)V

    return-void
.end method

.method private notifyLeaveOneHandedMode()V
    .locals 3

    .line 1571
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "EdgeBackGestureHandler"

    if-eqz v0, :cond_0

    const-string v0, "notifyLeaveOneHandedMode"

    .line 1572
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getSysUIProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1576
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getSysUIProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object p0

    const/16 v0, 0x32

    invoke-interface {p0, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyGestureEnded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " notifyGestureEnded , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 799
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 800
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1024
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const-string v3, "]"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "EdgeBackGestureHandler"

    if-nez v2, :cond_b

    .line 1032
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget v9, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRotation:I

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->adjuestEdgeThreshold(III)I

    move-result v7

    .line 1034
    sget-boolean v8, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_0

    .line 1035
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjuestEdgeThreshold() returns: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " -- x="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", y="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", rot="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1035
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    if-gt v8, v7, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    iput-boolean v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    .line 1039
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    .line 1041
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 1050
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsDetailShowing()Z

    move-result v7

    .line 1051
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    if-nez v8, :cond_3

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Z

    if-nez v8, :cond_3

    iget v8, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSysUiFlags:I

    .line 1053
    invoke-static {v8}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1055
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isNonBlockHiddenNavBar()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v7, :cond_3

    .line 1058
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v0, v8, v9}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isWithinTouchRegion(II)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v4

    goto :goto_1

    :cond_3
    move v8, v5

    :goto_1
    iput-boolean v8, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 1059
    sget-boolean v8, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_4

    .line 1060
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAllowGesture: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSysUiFlags:I

    invoke-static {v9}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v9

    xor-int/2addr v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_4
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v7, :cond_7

    .line 1069
    sget-boolean v7, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_5

    const-string v7, "AllowGesture down"

    .line 1070
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_5
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    if-eqz v7, :cond_7

    .line 1073
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v8, :cond_6

    const/16 v8, 0x53

    goto :goto_2

    :cond_6
    const/16 v8, 0x55

    .line 1075
    :goto_2
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1076
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    invoke-virtual {v7, v8}, Lcom/oneplus/phone/OpSideGestureNavView;->setIsLeftPanel(Z)V

    .line 1077
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v7, v1}, Lcom/oneplus/phone/OpSideGestureNavView;->handleTouch(Landroid/view/MotionEvent;)V

    .line 1078
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v7, v8, v9}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    :cond_7
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    if-eqz v7, :cond_8

    .line 1083
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 1084
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 1085
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 1090
    :cond_8
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedSettingEnable:Z

    if-eqz v7, :cond_9

    .line 1091
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isYInLeaveOneHandedTouchRegion(I)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    move v4, v5

    :goto_3
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowLeaveOneHandedGesture:Z

    .line 1096
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    if-nez v4, :cond_a

    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_27

    .line 1097
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DEBUG_GESTURE] Motion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DEBUG_GESTURE] x,y : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DEBUG_GESTURE][Back] mIsOnLeftEdge: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", x:["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DEBUG_GESTURE][OneHand] AllowLeave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowLeaveOneHandedGesture:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1103
    :cond_b
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-nez v7, :cond_c

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    if-eqz v7, :cond_27

    .line 1104
    :cond_c
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-nez v7, :cond_1c

    .line 1105
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    iput v11, v7, Landroid/graphics/PointF;->x:F

    .line 1106
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    iput v11, v7, Landroid/graphics/PointF;->y:F

    if-ne v2, v8, :cond_e

    .line 1108
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x6

    .line 1109
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->logGesture(I)V

    .line 1111
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 1113
    :cond_d
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    :cond_e
    if-ne v2, v10, :cond_1c

    .line 1117
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    if-eqz v7, :cond_f

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTopClassName:Ljava/lang/String;

    if-eqz v7, :cond_f

    .line 1118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "topClassName "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTopClassName:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_f
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->getTopClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->isInPhotoEditorList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1123
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x50

    cmp-long v7, v11, v13

    if-lez v7, :cond_12

    .line 1124
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    if-eqz v2, :cond_10

    const-string v2, "[DEBUG_GESTURE][Back] special LongPressTimeOut [80]"

    .line 1125
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_10
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v2, :cond_11

    .line 1128
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 1130
    :cond_11
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    .line 1135
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    iget v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongPressTimeout:I

    int-to-long v13, v7

    cmp-long v7, v11, v13

    if-lez v7, :cond_15

    .line 1137
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    if-eqz v2, :cond_13

    .line 1138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DEBUG_GESTURE] LongPressTimeOut: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongPressTimeout:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DEBUG_GESTURE] time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_13
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x7

    .line 1143
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->logGesture(I)V

    .line 1144
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 1146
    :cond_14
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    .line 1149
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1150
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1156
    sget-boolean v12, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-nez v12, :cond_19

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v12, :cond_19

    .line 1159
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1160
    sget v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    int-to-float v2, v2

    cmpl-float v2, v11, v2

    if-lez v2, :cond_17

    goto :goto_4

    .line 1164
    :cond_16
    sget v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    int-to-float v2, v2

    cmpl-float v2, v7, v2

    if-lez v2, :cond_17

    :goto_4
    move v2, v4

    goto :goto_5

    :cond_17
    move v2, v5

    :goto_5
    if-eqz v2, :cond_18

    const-string v2, "onMotionEvent sendBackKey"

    .line 1170
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-direct {v0, v5, v9}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(II)V

    .line 1173
    invoke-direct {v0, v4, v9}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(II)V

    .line 1174
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->onBackAction(F)V

    .line 1176
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    :cond_18
    return-void

    .line 1203
    :cond_19
    iget v12, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSideGestureKeyAnimThreshold:I

    int-to-float v13, v12

    cmpl-float v7, v7, v13

    if-lez v7, :cond_1a

    .line 1204
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v7, :cond_1c

    .line 1205
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 1207
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v7}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 1208
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v7}, Lcom/oneplus/phone/OpSideGestureNavView;->onDownEvent()V

    goto :goto_6

    :cond_1a
    int-to-float v7, v12

    .line 1210
    sget v12, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

    mul-float/2addr v7, v12

    cmpl-float v7, v11, v7

    if-lez v7, :cond_1c

    .line 1215
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v2, :cond_1b

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swipe too skew "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 1219
    :cond_1b
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    .line 1235
    :cond_1c
    :goto_6
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v7, :cond_26

    .line 1237
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v7, v1}, Lcom/oneplus/phone/OpSideGestureNavView;->handleTouch(Landroid/view/MotionEvent;)V

    .line 1239
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isYInTouchRegion(I)Z

    move-result v7

    .line 1241
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v11

    .line 1243
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1245
    iget v12, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSideGestureKeyDistanceThreshold:I

    int-to-float v12, v12

    cmpl-float v12, v15, v12

    if-lez v12, :cond_1d

    move v12, v10

    goto :goto_7

    :cond_1d
    move v12, v4

    :goto_7
    if-ne v2, v10, :cond_1e

    if-nez v7, :cond_1e

    if-ne v12, v10, :cond_1e

    move v14, v9

    goto :goto_8

    :cond_1e
    move v14, v12

    .line 1251
    :goto_8
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    new-instance v10, Lcom/oneplus/phone/GesturePointContainer;

    new-instance v13, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v13, v12, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1252
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/2addr v5, v4

    iget v12, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenHeight:I

    iget v8, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenWidth:I

    move/from16 v17, v12

    move-object v12, v10

    move/from16 v19, v15

    move v15, v5

    move/from16 v16, v11

    move/from16 v18, v8

    invoke-direct/range {v12 .. v18}, Lcom/oneplus/phone/GesturePointContainer;-><init>(Landroid/graphics/PointF;IIIII)V

    .line 1251
    invoke-virtual {v9, v10}, Lcom/oneplus/phone/OpSideGestureNavView;->onUpdateGestureView(Lcom/oneplus/phone/GesturePointContainer;)V

    if-ne v2, v4, :cond_1f

    move v5, v4

    goto :goto_9

    :cond_1f
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_20

    .line 1255
    iget v8, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSideGestureKeyDistanceThreshold:I

    int-to-float v8, v8

    move/from16 v9, v19

    cmpl-float v8, v9, v8

    if-lez v8, :cond_21

    if-eqz v7, :cond_21

    move v7, v4

    goto :goto_a

    :cond_20
    move/from16 v9, v19

    :cond_21
    const/4 v7, 0x0

    :goto_a
    if-eqz v5, :cond_22

    .line 1258
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    new-instance v10, Lcom/oneplus/phone/GesturePointContainer;

    new-instance v13, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    invoke-direct {v13, v12, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v14, 0x2

    .line 1259
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/lit8 v15, v12, 0x1

    iget v12, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenHeight:I

    iget v4, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenWidth:I

    move/from16 v17, v12

    move-object v12, v10

    move/from16 v16, v11

    move/from16 v18, v4

    invoke-direct/range {v12 .. v18}, Lcom/oneplus/phone/GesturePointContainer;-><init>(Landroid/graphics/PointF;IIIII)V

    .line 1258
    invoke-virtual {v8, v10}, Lcom/oneplus/phone/OpSideGestureNavView;->onGestureFinished(Lcom/oneplus/phone/GesturePointContainer;)V

    goto :goto_b

    :cond_22
    const/4 v4, 0x3

    if-eq v2, v4, :cond_23

    const/4 v4, 0x5

    if-ne v2, v4, :cond_24

    .line 1262
    :cond_23
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    new-instance v8, Lcom/oneplus/phone/GesturePointContainer;

    new-instance v13, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-direct {v13, v10, v12}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v14, 0x2

    .line 1263
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    const/4 v12, 0x1

    xor-int/lit8 v15, v10, 0x1

    iget v10, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenHeight:I

    iget v12, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenWidth:I

    move/from16 v18, v12

    move-object v12, v8

    move/from16 v16, v11

    move/from16 v17, v10

    invoke-direct/range {v12 .. v18}, Lcom/oneplus/phone/GesturePointContainer;-><init>(Landroid/graphics/PointF;IIIII)V

    .line 1262
    invoke-virtual {v4, v8}, Lcom/oneplus/phone/OpSideGestureNavView;->onGestureFinished(Lcom/oneplus/phone/GesturePointContainer;)V

    .line 1264
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v4}, Lcom/oneplus/phone/OpSideGestureNavView;->onUpEvent()V

    .line 1265
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 1270
    :cond_24
    :goto_b
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->DEBUG_GESTURE:Z

    if-eqz v4, :cond_25

    if-eqz v5, :cond_25

    .line 1271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DEBUG_GESTURE][Back] performBackKey: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DEBUG_GESTURE][Back] back move distance: ["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", need big than target ["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSideGestureKeyDistanceThreshold:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    if-eqz v5, :cond_26

    if-eqz v7, :cond_26

    .line 1277
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    invoke-interface {v3}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->triggerBack()V

    const/4 v3, 0x0

    .line 1279
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowLeaveOneHandedGesture:Z

    .line 1288
    :cond_26
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowLeaveOneHandedGesture:Z

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    .line 1289
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isYInLeaveOneHandedTouchRegion(I)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedPerformed:Z

    if-eqz v1, :cond_27

    .line 1290
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->requestExitOneHandMode()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "Touch leave region to leave One Handed."

    .line 1291
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1292
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedPerformed:Z

    .line 1294
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->notifyLeaveOneHandedMode()V

    .line 1302
    :cond_27
    :goto_c
    const-class v0, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-virtual {v0}, Lcom/android/systemui/tracing/ProtoTracer;->update()V

    return-void
.end method

.method private onNavigationSettingsChanged()V
    .locals 2

    .line 521
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v0

    .line 522
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources()V

    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 524
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStateChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private sendEvent(II)V
    .locals 14

    .line 1387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1388
    new-instance v13, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1394
    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    move-object v1, p0

    .line 1395
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedDisplayId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1397
    invoke-virtual {v13, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 1399
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private updateDisabledForQuickstep()V
    .locals 3

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 1307
    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    return-void
.end method

.method private updateDisplaySize()V
    .locals 3

    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 1358
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "EdgeBackGestureHandler"

    const-string v0, "It\'s not update display size, because display is null or display already removed."

    .line 1359
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 1365
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 1366
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1368
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1369
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplay:Landroid/view/Display;

    .line 1370
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1371
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenHeight:I

    .line 1372
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenWidth:I

    int-to-float v1, v0

    .line 1374
    sget v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_SCALE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeSwipeStartThreshold:I

    int-to-float v1, v0

    .line 1375
    sget v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_MOVE_SCALE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSideGestureKeyAnimThreshold:I

    int-to-float v0, v0

    .line 1376
    sget v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_BACK_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSideGestureKeyDistanceThreshold:I

    .line 1377
    new-instance v0, Lcom/oneplus/phone/OpSideGestureConfiguration;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplay:Landroid/view/Display;

    invoke-direct {v0, v1}, Lcom/oneplus/phone/OpSideGestureConfiguration;-><init>(Landroid/view/Display;)V

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->updateDisplaySize()V

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    if-nez v1, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedSettingEnable:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->updateRegion(Z)V

    return-void
.end method

.method private updateIsEnabled()V
    .locals 6

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateIsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHidden: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", OneHandMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedSettingEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeBackGestureHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsHidden:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedSettingEnable:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 626
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    if-ne v0, v4, :cond_3

    return-void

    .line 629
    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    .line 630
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->disposeInputChannel()V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    if-eqz v0, :cond_4

    .line 640
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    invoke-interface {v4, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 641
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    .line 645
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    if-nez v0, :cond_8

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->unregister()V

    .line 647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 649
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 659
    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 660
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 661
    invoke-interface {v0, v4, v5}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    goto :goto_2

    :cond_5
    const-string v0, "It is not unregister system gesture exclusion listener, because display is null or display already removed."

    .line 664
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v4, "Failed to unregister window manager callbacks"

    .line 668
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    if-nez v1, :cond_7

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedSettingEnable:Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :cond_7
    :goto_3
    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->updateRegion(Z)V

    goto/16 :goto_5

    .line 675
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->register()V

    .line 676
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisplaySize()V

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 678
    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 677
    invoke-virtual {v0, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 679
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 688
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 689
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 690
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 691
    invoke-interface {v0, v2, v4}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    goto :goto_4

    :cond_9
    const-string v0, "It is not register system gesture exclusion listener, because display is null or display already removed."

    .line 694
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v2, "Failed to register window manager callbacks"

    .line 698
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    :goto_4
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    const-string v2, "edge-swipe"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 704
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 705
    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 712
    new-instance v0, Lcom/oneplus/phone/OpSideGestureNavView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v3}, Lcom/oneplus/phone/OpSideGestureNavView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    .line 713
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    .line 714
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {v0, p0, v1, v3}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    :goto_5
    return-void
.end method

.method private updateTopPackage()V
    .locals 3

    .line 1551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1553
    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRunningTaskId:I

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 1555
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1558
    :cond_0
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRunningTaskId:I

    .line 1559
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTopPackageName:Ljava/lang/String;

    .line 1560
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTopClassName:Ljava/lang/String;

    .line 1561
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTopClassName:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/oneplus/util/OpUtils;->updateTopPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 1564
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateTopPackage isHomeApp "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EdgeBackGestureHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method adjuestEdgeThreshold(III)I
    .locals 2

    .line 1493
    iget p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeSwipeStartThreshold:I

    .line 1495
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1497
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1498
    :goto_0
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    if-ne p3, v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    if-nez p1, :cond_3

    .line 1502
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsIgnoreCameraNotch:Z

    if-eqz p1, :cond_4

    .line 1503
    sget p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mCameraNotchHeight:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeSwipeStartThreshold:I

    add-int p2, p1, p0

    goto :goto_1

    .line 1521
    :cond_3
    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mScreenWidth:I

    int-to-float p0, p0

    sget p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->SIDE_GESTURE_EDGE_SCALE:F

    mul-float/2addr p0, p1

    float-to-int p2, p0

    :cond_4
    :goto_1
    return p2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "EdgeBackGestureHandler:"

    .line 1415
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsBackGestureAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisabledForQuickstep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStartingQuickstepRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInRejectedExclusion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnrestrictedExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeWidthLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeWidthRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthRight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isHandlingGestures()Z
    .locals 1

    .line 747
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$EdgeBackGestureHandler(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->lambda$new$0(I)V

    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 3

    .line 1457
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_1

    .line 1458
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRotation:I

    .line 1460
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisplaySize()V

    .line 1462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1463
    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowHeight(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1464
    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1465
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1467
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 1468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Edge onConfigurationChanged rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeBackGestureHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {p0, p1}, Lcom/oneplus/phone/OpSideGestureNavView;->onConfigChanged(I)V

    :cond_1
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 1319
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 1320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisabledForQuickstep()V

    .line 1323
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    if-ne p1, v0, :cond_1

    .line 1324
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisplaySize()V

    .line 1326
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRotation:I

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onNavBarAttached()V
    .locals 4

    const-string v0, "EdgeBackGestureHandler"

    const-string v1, "onNavBarAttached"

    .line 539
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 542
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    .line 543
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 544
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 545
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 549
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOpTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 550
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 552
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mReceiverRegister:Z

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOpOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->addListener(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;)V

    :cond_0
    return-void
.end method

.method public onNavBarDetached()V
    .locals 3

    const-string v0, "EdgeBackGestureHandler"

    const-string v1, "onNavBarDetached"

    .line 565
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 568
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    .line 569
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 570
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 571
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 574
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOpTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 576
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mReceiverRegister:Z

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 578
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mReceiverRegister:Z

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOpOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    if-eqz v1, :cond_1

    .line 582
    invoke-virtual {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->removeListener(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;)V

    .line 584
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedSettingEnable:Z

    return-void
.end method

.method public onNavBarTransientStateChanged(Z)V
    .locals 0

    .line 598
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 592
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    .line 593
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 594
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources()V

    return-void
.end method

.method public onOneHandEnableStateChange(Z)V
    .locals 2

    .line 1339
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "One hand enable state changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedSettingEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeBackGestureHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedSettingEnable:Z

    .line 1343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onOneHandPerformStateChange(Z)V
    .locals 0

    .line 1334
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOneHandedPerformed:Z

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 126
    check-cast p1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onPluginConnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 126
    check-cast p1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onPluginDisconnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0

    .line 530
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources()V

    return-void
.end method

.method public setInsets(II)V
    .locals 0

    .line 1403
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    .line 1404
    iput p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    return-void
.end method

.method public updateCurrentUserResources()V
    .locals 5

    .line 489
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    .line 492
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidthRight:I

    .line 498
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 499
    invoke-virtual {v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    .line 503
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x10501ae

    .line 504
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v3

    const-string/jumbo v3, "systemui"

    const-string v4, "back_gesture_bottom_height"

    .line 506
    invoke-static {v3, v4, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    .line 509
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mBottomGestureHeight:F

    const/high16 v0, 0x3f400000    # 0.75f

    const-string v1, "back_gesture_slop_multiplier"

    .line 515
    invoke-static {v3, v1, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 517
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    return-void
.end method

.method public writeToProto(Lcom/android/systemui/tracing/nano/SystemUiTraceProto;)V
    .locals 1

    .line 1438
    iget-object v0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    if-nez v0, :cond_0

    .line 1439
    new-instance v0, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    invoke-direct {v0}, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 1441
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    iput-boolean p0, p1, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;->allowGesture:Z

    return-void
.end method

.method public bridge synthetic writeToProto(Ljava/lang/Object;)V
    .locals 0

    .line 126
    check-cast p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->writeToProto(Lcom/android/systemui/tracing/nano/SystemUiTraceProto;)V

    return-void
.end method
