.class public Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;
.super Ljava/lang/Object;
.source "OpEdgeNavGestureHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$SysUiInputEventReceiver;
    }
.end annotation


# static fields
.field private static mIsOneHandedEnable:Z = false


# instance fields
.field private mAllowNavGesture:Z

.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mBottomGestureHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mDisplayId:I

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mExcludeRegion:Landroid/graphics/Region;

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private mHome:Landroid/view/View;

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsEnabled:Z

.field private mIsGesturalModeEnabled:Z

.field private mIsNavBarShownTransiently:Z

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private mNavBarFrameHeight:I

.field private mNavEdgeWidth:I

.field private mNavEdgeWidthLand:I

.field private mOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

.field private mRotation:I

.field private mSysUiFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance p2, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$1;

    invoke-direct {p2, p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)V

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 74
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 79
    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    const/4 p2, 0x0

    .line 94
    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mAllowNavGesture:Z

    .line 97
    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mRotation:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 114
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 120
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 124
    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getOneHandModeController()Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    .line 127
    invoke-virtual {p0, p2}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateCurrentUserResources(Landroid/content/res/Resources;)V

    .line 128
    new-instance p1, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$1O3ShNNo6cPSc_sep9lRivTsiJM;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpEdgeNavGestureHandler$1O3ShNNo6cPSc_sep9lRivTsiJM;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)V

    invoke-virtual {p3, p1}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)Landroid/graphics/Region;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private disposeInputChannel()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 200
    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 204
    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private getNavEdgeWidth(I)I
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

    .line 436
    :cond_1
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavEdgeWidth:I

    return p0

    .line 434
    :cond_2
    :goto_0
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavEdgeWidthLand:I

    return p0

    .line 432
    :cond_3
    :goto_1
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavEdgeWidth:I

    return p0
.end method

.method public static isOneHandedEnable()Z
    .locals 1

    .line 402
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsOneHandedEnable:Z

    return v0
.end method

.method private isWithinNavTouchRegion(II)Z
    .locals 4

    .line 292
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsOneHandedEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavBarFrameHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mBottomGestureHeight:I

    .line 294
    :goto_0
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    const-string v3, "OpEdgeNavGestureHandler"

    if-ge p2, v2, :cond_1

    const-string p0, " mAllowNavGesture touch point is height than NavBarHeight."

    .line 296
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 301
    :cond_1
    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mRotation:I

    invoke-direct {p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->getNavEdgeWidth(I)I

    move-result v2

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_4

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mRotation:I

    .line 302
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->getNavEdgeWidth(I)I

    move-result v1

    if-ge p1, v1, :cond_2

    goto :goto_1

    .line 309
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsNavBarShownTransiently:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    .line 313
    :cond_3
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_4
    :goto_1
    const-string p0, " mAllowNavGesture touch point is out of range"

    .line 303
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mSysUiFlags:I

    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 284
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHome:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 285
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "OpEdgeNavGestureHandler"

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 331
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mSysUiFlags:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v0, v4}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->isWithinNavTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mAllowNavGesture:Z

    if-eqz v3, :cond_7

    .line 335
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHome:Landroid/view/View;

    if-eqz v0, :cond_7

    const-string v0, "AllowNavGesture actionDown"

    .line 336
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHome:Landroid/view/View;

    instance-of v2, v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;

    if-eqz v2, :cond_1

    .line 338
    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->handleTouch(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 340
    :cond_1
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsOneHandedEnable:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mRotation:I

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_7

    .line 342
    :cond_2
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHome:Landroid/view/View;

    check-cast p0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton;->handleTouch(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 348
    :cond_3
    iget-boolean v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mAllowNavGesture:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHome:Landroid/view/View;

    if-eqz v4, :cond_7

    if-ne v0, v3, :cond_4

    const-string v0, "AllowNavGesture actionUp"

    .line 349
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHome:Landroid/view/View;

    instance-of v2, v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;

    if-eqz v2, :cond_5

    .line 352
    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->handleTouch(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 354
    :cond_5
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsOneHandedEnable:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mRotation:I

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_7

    .line 356
    :cond_6
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHome:Landroid/view/View;

    check-cast p0, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/policy/OpHomeButton;->handleTouch(Landroid/view/MotionEvent;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private updateDisplaySize()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    .line 379
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "OpEdgeNavGestureHandler"

    const-string v0, "It\'s not update display size, because display is null or display already removed."

    .line 380
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    .line 386
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private updateIsEnabled()V
    .locals 4

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIsEnabled: GestureModeEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsGesturalModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", OneHandEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsOneHandedEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", LastTimeEnableState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpEdgeNavGestureHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsAttached:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsGesturalModeEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsOneHandedEnable:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 217
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsEnabled:Z

    if-ne v0, v2, :cond_2

    const-string p0, "Already enable"

    .line 218
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_2
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsEnabled:Z

    .line 223
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->disposeInputChannel()V

    .line 225
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsEnabled:Z

    if-nez v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    .line 236
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 237
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    .line 238
    invoke-interface {v0, v2, p0}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    goto :goto_2

    :cond_3
    const-string p0, "It is not unregister system gesture exclusion listener, because display is null or display already removed."

    .line 241
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "Failed to unregister window manager callbacks"

    .line 245
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 249
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateDisplaySize()V

    .line 250
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mContext:Landroid/content/Context;

    .line 251
    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 250
    invoke-virtual {v0, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 261
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    .line 262
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 263
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    .line 264
    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    goto :goto_1

    :cond_5
    const-string v0, "It is not register system gesture exclusion listener, because display is null or display already removed."

    .line 267
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Failed to register window manager callbacks"

    .line 271
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :goto_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    const-string v2, "edge-nav-swipe"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 277
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$SysUiInputEventReceiver;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 278
    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$SysUiInputEventReceiver;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$OpEdgeNavGestureHandler(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->lambda$new$0(I)V

    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 0

    .line 418
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mRotation:I

    .line 419
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsEnabled:Z

    if-eqz p1, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateDisplaySize()V

    :cond_0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 371
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    if-ne p1, v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateDisplaySize()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onNavBarAttached()V
    .locals 2

    const-string v0, "OpEdgeNavGestureHandler"

    const-string v1, "onNavBarAttached"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsAttached:Z

    .line 161
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->addListener(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;)V

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onNavBarDetached()V
    .locals 2

    const-string v0, "OpEdgeNavGestureHandler"

    const-string v1, "onNavBarDetached"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsAttached:Z

    .line 179
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->removeListener(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;)V

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onNavBarTransientStateChanged(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsNavBarShownTransiently:Z

    return-void
.end method

.method public onNavigationModeChanged(ILandroid/content/Context;)V
    .locals 0

    .line 188
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsGesturalModeEnabled:Z

    .line 189
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateIsEnabled()V

    .line 190
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateCurrentUserResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method public onOneHandEnableStateChange(Z)V
    .locals 0

    .line 397
    sput-boolean p1, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsOneHandedEnable:Z

    .line 398
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onOneHandPerformStateChange(Z)V
    .locals 0

    return-void
.end method

.method public setHomeButton(Landroid/view/View;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHome:Landroid/view/View;

    return-void
.end method

.method public updateCurrentUserResources(Landroid/content/res/Resources;)V
    .locals 1

    const v0, 0x50601b9

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavEdgeWidth:I

    const v0, 0x50601b8

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavEdgeWidthLand:I

    const v0, 0x10501ae

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mBottomGestureHeight:I

    const v0, 0x10501ac

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavBarFrameHeight:I

    return-void
.end method
