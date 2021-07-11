.class public Lcom/android/systemui/ScreenDecorations;
.super Lcom/android/systemui/SystemUI;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ScreenDecorations$SettingsObserver;,
        Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_COLOR:Z

.field private static final DEBUG_CUTOUT_CIRCLE_DISPLAY:Z

.field private static final DEBUG_CUTOUT_DISPLAY:Z

.field private static final DEBUG_DISABLE_ROUNDED_CORNER_DECORATIONS:Z

.field private static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

.field private static final DEBUG_SCREEN_DECORATIONS:Z

.field private static mDisableRoundedCorner:I

.field private static mOpCustRegionRight:I

.field private static mOpCustRegionleft:I


# instance fields
.field private MAX_BLOCK_INTERVAL:I

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasRoundedCorner:Z

.field protected mIsRegistered:Z

.field private mIsRoundedCornerMultipleRadius:Z

.field private mLastSizeBottom:I

.field private mLastSizeTop:I

.field private final mMainHandler:Landroid/os/Handler;

.field private mOpPendingRotationChange:Z

.field private mOpPendingRotationChangeBottom:Z

.field protected mOverlays:[Landroid/view/View;

.field private mPendingRotationChange:Z

.field mResizeRatio:F

.field private mRotation:I

.field protected mRoundedDefault:I

.field protected mRoundedDefaultBottom:I

.field mRoundedDefaultBottomResize:I

.field protected mRoundedDefaultBottomWidth:I

.field mRoundedDefaultBottomWidthResize:I

.field protected mRoundedDefaultTop:I

.field mRoundedDefaultTopResize:I

.field protected mRoundedDefaultTopWidth:I

.field mRoundedDefaultTopWidthResize:I

.field mScreenResolution:I

.field private mShowRunnable:Ljava/lang/Runnable;

.field private final mShutDownBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTempColorInversionDisableSetting:Lcom/oneplus/util/SystemSetting;

.field private mTempDisableInversion:Z

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 134
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG:Z

    const-string v0, "debug.screenshot_rounded_corners"

    const/4 v1, 0x0

    .line 141
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    const-string/jumbo v0, "vendor.display.disable_rounded_corner"

    .line 144
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/ScreenDecorations;->mDisableRoundedCorner:I

    const-string v0, "debug.disable_screen_decorations"

    .line 148
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_ROUNDED_CORNER_DECORATIONS:Z

    .line 152
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    const-string v0, "debug.screen_decorations"

    .line 194
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    const-string v0, "debug.cutout.display.enable"

    .line 227
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_CUTOUT_DISPLAY:Z

    const-string v0, "debug.cutout.display.circle.enable"

    .line 231
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_CUTOUT_CIRCLE_DISPLAY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/tuner/TunerService;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x4b0

    .line 188
    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->MAX_BLOCK_INTERVAL:I

    const/4 p1, 0x0

    .line 189
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChange:Z

    .line 190
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChangeBottom:Z

    .line 199
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mTempDisableInversion:Z

    .line 203
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mHasRoundedCorner:Z

    .line 212
    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    const/high16 p1, 0x3f400000    # 0.75f

    .line 220
    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mResizeRatio:F

    .line 235
    new-instance p1, Lcom/android/systemui/ScreenDecorations$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mShutDownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 714
    new-instance p1, Lcom/android/systemui/ScreenDecorations$7;

    invoke-direct {p1, p0}, Lcom/android/systemui/ScreenDecorations$7;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 862
    new-instance p1, Lcom/android/systemui/ScreenDecorations$8;

    invoke-direct {p1, p0}, Lcom/android/systemui/ScreenDecorations$8;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mShowRunnable:Ljava/lang/Runnable;

    .line 303
    iput-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mMainHandler:Landroid/os/Handler;

    .line 304
    iput-object p3, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 305
    iput-object p4, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->removeAllOverlays()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/ScreenDecorations;)Lcom/oneplus/util/SystemSetting;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mTempColorInversionDisableSetting:Lcom/oneplus/util/SystemSetting;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleTop()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleBottom()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateView(I)V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .line 128
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    return v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .line 128
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_CUTOUT_DISPLAY:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/ScreenDecorations;)I
    .locals 0

    .line 128
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return p0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .line 128
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_CUTOUT_CIRCLE_DISPLAY:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/ScreenDecorations;I)I
    .locals 0

    .line 128
    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p0
.end method

.method static synthetic access$2500(II)I
    .locals 0

    .line 128
    invoke-static {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$2600()I
    .locals 1

    .line 128
    sget v0, Lcom/android/systemui/ScreenDecorations;->mOpCustRegionleft:I

    return v0
.end method

.method static synthetic access$2700()I
    .locals 1

    .line 128
    sget v0, Lcom/android/systemui/ScreenDecorations;->mOpCustRegionRight:I

    return v0
.end method

.method static synthetic access$2800(I)Ljava/lang/String;
    .locals 0

    .line 128
    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowTitleByPos(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChange:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChangeBottom:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mOpPendingRotationChangeBottom:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mTempDisableInversion:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/qs/SecureSetting;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object p0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 128
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG:Z

    return v0
.end method

.method private createOverlay(I)V
    .locals 4

    .line 544
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_ROUNDED_CORNER_DECORATIONS:Z

    if-eqz v0, :cond_0

    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    new-array v0, v1, [Landroid/view/View;

    .line 549
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-nez v0, :cond_2

    new-array v0, v1, [Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 553
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v0, p1

    if-eqz v1, :cond_3

    return-void

    .line 559
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->rounded_corners:I

    const/4 v3, 0x0

    .line 560
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p1

    .line 562
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    new-instance v1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ILcom/android/systemui/ScreenDecorations;)V

    aput-object v1, v0, p1

    .line 563
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 567
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 569
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateView(I)V

    .line 571
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    new-instance v1, Lcom/android/systemui/ScreenDecorations$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ScreenDecorations$6;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 590
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-direct {v1, p0, v2, p1}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static getBoundPositionFromRotation(II)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x4

    :cond_0
    return p0
.end method

.method private getHeightLayoutParamByPos(I)I
    .locals 0

    .line 661
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x2

    :goto_1
    return p0
.end method

.method private getOpRoundedCornerGravity(IIZ)I
    .locals 4

    const/16 p0, 0x33

    const/16 v0, 0x53

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    const/16 v2, 0x35

    if-eq p2, v1, :cond_8

    const/4 p0, 0x2

    const/16 v3, 0x55

    if-eq p2, p0, :cond_4

    const/4 p0, 0x3

    if-ne p2, p0, :cond_3

    if-ne p1, v1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    return v0

    .line 1110
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Incorrect position: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-ne p1, v1, :cond_6

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    return v2

    :cond_6
    if-nez p3, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    return v2

    :cond_8
    if-ne p1, v1, :cond_a

    if-eqz p3, :cond_9

    goto :goto_4

    :cond_9
    move p0, v2

    :goto_4
    return p0

    :cond_a
    if-nez p3, :cond_b

    goto :goto_5

    :cond_b
    move p0, v2

    :goto_5
    return p0

    :cond_c
    if-ne p1, v1, :cond_e

    if-nez p3, :cond_d

    goto :goto_6

    :cond_d
    move p0, v0

    :goto_6
    return p0

    :cond_e
    if-eqz p3, :cond_f

    goto :goto_7

    :cond_f
    move p0, v0

    :goto_7
    return p0
.end method

.method private getOpRoundedCornerRotation(II)I
    .locals 5

    const/16 p0, 0x10e

    const/16 v0, 0x5a

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    const/16 v3, 0xb4

    if-eq p1, v1, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    if-ne p2, v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 1125
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Incorrect position: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-ne p2, v1, :cond_3

    move p0, v0

    :cond_3
    return p0

    :cond_4
    if-ne p2, v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    return v2

    :cond_6
    if-ne p2, v1, :cond_7

    goto :goto_1

    :cond_7
    move p0, v0

    :goto_1
    return p0
.end method

.method private getOverlayWindowGravity(I)I
    .locals 2

    .line 682
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x50

    return p0

    .line 693
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown bound position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/16 p0, 0x30

    return p0

    :cond_3
    return v0
.end method

.method private getRoundedCornerRotationX(IZ)I
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0
.end method

.method private getRoundedCornerRotationY(IZ)I
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    return p0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0
.end method

.method private getWidthLayoutParamByPos(I)I
    .locals 0

    .line 655
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private static getWindowTitleByPos(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "ScreenDecorOverlayBottom"

    return-object p0

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bound position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "ScreenDecorOverlayRight"

    return-object p0

    :cond_2
    const-string p0, "ScreenDecorOverlay"

    return-object p0

    :cond_3
    const-string p0, "ScreenDecorOverlayLeft"

    return-object p0
.end method

.method private hasRoundedCorners()Z
    .locals 0

    .line 1165
    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mHasRoundedCorner:Z

    return p0
.end method

.method private initRoundCornerView()V
    .locals 6

    .line 1973
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v3, v0, v1

    if-nez v3, :cond_0

    goto :goto_0

    .line 1980
    :cond_0
    aget-object v0, v0, v2

    sget v3, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1981
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v3, v2

    sget v3, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1982
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v3, v3, v1

    sget v4, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1983
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v4, v1

    sget v4, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1986
    sget v4, Lcom/android/systemui/R$drawable;->rounded_top:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1987
    sget v0, Lcom/android/systemui/R$drawable;->rounded_top:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1988
    sget v0, Lcom/android/systemui/R$drawable;->rounded_bottom:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1989
    sget v0, Lcom/android/systemui/R$drawable;->rounded_bottom:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1993
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1994
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mResizeRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopResize:I

    .line 1995
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomResize:I

    .line 1997
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidthResize:I

    .line 1998
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidthResize:I

    .line 2002
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateDecorSize()V

    return-void

    .line 1976
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRoundCornerView failed, overlay: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v3, :cond_3

    const-string p0, "null"

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " top null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    if-nez v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " bottom null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object p0, p0, v1

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenDecorations"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isOverlaysVisibility()Z
    .locals 4

    .line 843
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 845
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    goto :goto_1

    .line 848
    :cond_0
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isRectangleBottom()Z
    .locals 1

    .line 2150
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRectangleTop()Z
    .locals 1

    .line 2146
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$IfAux2ksmJXT9o9i38WaSEQXJTQ(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$2(Landroid/content/res/Configuration;)V
    .locals 3

    .line 775
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive onConfigurationChanged, newConfig.orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", getRotation:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 777
    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenDecorations"

    .line 776
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleTop()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleBottom()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 783
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x2

    const-string v2, "oneplus_screen_resolution_adjust"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    .line 785
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateDecorSize()V

    .line 788
    :cond_1
    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v1, 0x0

    .line 789
    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    .line 790
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    .line 791
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    .line 792
    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigChanged from rot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 794
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz p1, :cond_3

    .line 799
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onTuningChanged$3(Ljava/lang/String;)V
    .locals 0

    .line 1217
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string/jumbo p0, "sysui_rounded_size"

    .line 1218
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$setupDecorations$0()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_rounded_size"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setupDecorations$1()V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method private postShow()V
    .locals 3

    .line 858
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 859
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Region;"
        }
    .end annotation

    .line 286
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 288
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private removeAllOverlays()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 522
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 523
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->removeOverlay(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    return-void
.end method

.method private removeOverlay(I)V
    .locals 2

    .line 531
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_ROUNDED_CORNER_DECORATIONS:Z

    if-eqz v0, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_2

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    goto :goto_0

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    aget-object v0, v0, p1

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 539
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v0, 0x0

    aput-object v0, p0, p1

    :cond_2
    :goto_0
    return-void
.end method

.method private static rotateBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    const-string v1, "ScreenDecorations"

    if-nez p1, :cond_0

    const-string p0, "bitmap is null"

    .line 2119
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 2124
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p0

    .line 2125
    invoke-virtual {v7, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2129
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p1

    .line 2128
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_1

    .line 2130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2131
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2135
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "Error: the returned resizedBitmap is already recycled !!!"

    .line 2136
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object p0
.end method

.method private setSize(Landroid/view/View;II)V
    .locals 0

    .line 1282
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1283
    iput p3, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1284
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1285
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupCameraListener()V
    .locals 1

    .line 704
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 705
    sget v0, Lcom/android/systemui/R$bool;->config_enableDisplayCutoutProtection:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    return-void
.end method

.method private setupDecorations()V
    .locals 9

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->removeAllOverlays()V

    goto :goto_4

    .line 415
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 416
    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    move v2, v1

    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_6

    .line 419
    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {v2, v3}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v3

    if-eqz v0, :cond_3

    .line 420
    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 421
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->shouldShowRoundedCorner(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 422
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->createOverlay(I)V

    goto :goto_3

    .line 424
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/systemui/ScreenDecorations;->removeOverlay(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 430
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->initRoundCornerView()V

    .line 432
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    if-eqz v0, :cond_7

    const/16 v0, -0x100

    .line 433
    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    .line 441
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasOverlays()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 442
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    if-eqz v0, :cond_8

    return-void

    .line 445
    :cond_8
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 446
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ItnW8ZEHeCqCHue6f8abcXewifU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ItnW8ZEHeCqCHue6f8abcXewifU;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v2, 0x1

    if-nez v0, :cond_9

    .line 453
    new-instance v0, Lcom/android/systemui/ScreenDecorations$4;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    const-string v5, "accessibility_display_inversion_enabled"

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/systemui/ScreenDecorations$4;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 460
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->onChange(Z)V

    .line 466
    :cond_9
    new-instance v0, Lcom/android/systemui/ScreenDecorations$5;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const-string/jumbo v7, "temp_disable_inversion"

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/ScreenDecorations$5;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTempColorInversionDisableSetting:Lcom/oneplus/util/SystemSetting;

    .line 474
    invoke-virtual {v0, v2}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTempColorInversionDisableSetting:Lcom/oneplus/util/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/oneplus/util/SystemSetting;->onChange(Z)V

    .line 479
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 480
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/os/HandlerExecutor;

    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 483
    iput-boolean v2, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    goto :goto_5

    .line 485
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/-$$Lambda$ScreenDecorations$CTk_RNSSvwUoNV8CfAa6W3y0c0A;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$CTk_RNSSvwUoNV8CfAa6W3y0c0A;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    if-eqz v0, :cond_b

    .line 488
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 491
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 492
    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    :goto_5
    return-void
.end method

.method private shouldDrawCutout()Z
    .locals 0

    .line 1190
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static shouldDrawCutout(Landroid/content/Context;)Z
    .locals 2

    .line 1194
    sget v0, Lcom/android/systemui/ScreenDecorations;->mDisableRoundedCorner:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1198
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110087

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private shouldShowRoundedCorner(I)Z
    .locals 6

    .line 1170
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1174
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1176
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isBoundsEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    .line 1179
    :goto_1
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {v2, v4}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v4

    .line 1180
    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v5, 0x3

    invoke-static {v5, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    if-nez v3, :cond_6

    .line 1181
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1182
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1

    :cond_6
    :goto_2
    if-eq p1, v2, :cond_7

    if-ne p1, v5, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method private startOnScreenDecorationsThread()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 331
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 332
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 333
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_roundedCornerMultipleRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsRoundedCornerMultipleRadius:Z

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mHasRoundedCorner:Z

    .line 343
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_cust_statusbar_cutout_show_region_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/systemui/ScreenDecorations;->mOpCustRegionleft:I

    .line 344
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_cust_statusbar_cutout_show_region_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/systemui/ScreenDecorations;->mOpCustRegionRight:I

    .line 349
    new-instance v0, Lcom/android/systemui/ScreenDecorations$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$SettingsObserver;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 350
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    .line 355
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupCameraListener()V

    .line 358
    new-instance v0, Lcom/android/systemui/ScreenDecorations$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 409
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 410
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method private updateColorInversion(I)V
    .locals 7

    const/high16 v0, -0x1000000

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 734
    :goto_0
    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    if-eqz v1, :cond_1

    const/high16 p1, -0x10000

    .line 740
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mTempDisableInversion:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    .line 744
    :goto_1
    sget-boolean p1, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    if-eqz p1, :cond_3

    const/16 v0, -0x100

    .line 749
    :cond_3
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 751
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v1, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_9

    .line 755
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v4, v3, v2

    if-nez v4, :cond_5

    goto :goto_5

    .line 758
    :cond_5
    aget-object v3, v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_8

    .line 761
    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v5, v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 762
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    .line 763
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    .line 764
    :cond_6
    instance-of v6, v5, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-eqz v6, :cond_7

    .line 765
    check-cast v5, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method private updateLayoutParams()V
    .locals 4

    .line 1203
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 1207
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    goto :goto_1

    .line 1210
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateOrientation()V
    .locals 4

    .line 805
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "must call on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 806
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 805
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 808
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    if-eqz v0, :cond_1

    return-void

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 817
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isOverlaysVisibility()Z

    move-result v1

    if-nez v1, :cond_5

    .line 819
    :cond_2
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 821
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_5

    .line 822
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :goto_1
    const/4 v0, 0x4

    if-ge v2, v0, :cond_4

    .line 824
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v0, v2

    if-nez v1, :cond_3

    goto :goto_2

    .line 831
    :cond_3
    aget-object v0, v0, v2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 835
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->postShow()V

    :cond_5
    return-void
.end method

.method private updateRoundedCornerRadii()V
    .locals 9

    .line 930
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 932
    sget v1, Lcom/android/systemui/ScreenDecorations;->mDisableRoundedCorner:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v0, v2

    .line 942
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$dimen;->rounded_corner_radius_top:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 944
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->rounded_corner_radius_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 947
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->rounded_corner_radius_top_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 949
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->rounded_corner_radius_bottom_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 952
    sget-boolean v7, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREEN_DECORATIONS:Z

    if-eqz v7, :cond_1

    .line 953
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newRoundedDefaultTop:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "newRoundedDefaultBottom:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", newRoundedDefaultBottomWidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ScreenDecorations"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1
    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-ne v7, v0, :cond_2

    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-ne v7, v4, :cond_2

    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-eq v7, v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    if-eqz v2, :cond_5

    .line 965
    iget-boolean v2, p0, Lcom/android/systemui/ScreenDecorations;->mIsRoundedCornerMultipleRadius:Z

    if-eqz v2, :cond_4

    .line 966
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->rounded:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    .line 967
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 968
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    goto :goto_0

    .line 970
    :cond_4
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    .line 971
    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 972
    iput v4, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    .line 977
    :goto_0
    iput v5, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    .line 978
    iput v6, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    const/4 v0, 0x0

    const-string/jumbo v1, "sysui_rounded_size"

    .line 982
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ScreenDecorations;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private updateRoundedCornerView(II)V
    .locals 6

    .line 988
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 993
    :cond_0
    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x8

    .line 997
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 998
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->shouldShowRoundedCorner(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1000
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, v1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v1

    .line 1006
    sget v2, Lcom/android/systemui/R$id;->left:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/ScreenDecorations;->getOpRoundedCornerGravity(IIZ)I

    move-result v2

    .line 1007
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1008
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/ScreenDecorations;->getOpRoundedCornerRotation(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 1009
    sget p1, Lcom/android/systemui/R$id;->left:I

    if-ne p2, p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v4

    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/ScreenDecorations;->getRoundedCornerRotationX(IZ)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 1010
    sget p1, Lcom/android/systemui/R$id;->left:I

    if-ne p2, p1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/ScreenDecorations;->getRoundedCornerRotationY(IZ)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setRotationY(F)V

    .line 1012
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private updateView(I)V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_4

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 607
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleTop()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleBottom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 608
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->left:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ScreenDecorations;->updateViewByBitmap(II)V

    .line 609
    sget v0, Lcom/android/systemui/R$id;->right:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ScreenDecorations;->updateViewByBitmap(II)V

    goto :goto_0

    .line 611
    :cond_3
    sget v0, Lcom/android/systemui/R$id;->left:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerView(II)V

    .line 612
    sget v0, Lcom/android/systemui/R$id;->right:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerView(II)V

    .line 616
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateDecorSize()V

    .line 622
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutViews:[Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-eqz v0, :cond_4

    aget-object v1, v0, p1

    if-eqz v1, :cond_4

    .line 623
    aget-object p1, v0, p1

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setRotation(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateViewByBitmap(II)V
    .locals 7

    .line 1018
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1019
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, v1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v1

    .line 1020
    sget v2, Lcom/android/systemui/R$id;->left:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/ScreenDecorations;->getOpRoundedCornerGravity(IIZ)I

    move-result v2

    .line 1021
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/ScreenDecorations;->getOpRoundedCornerRotation(II)I

    move-result v5

    .line 1023
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne p1, v4, :cond_1

    .line 1025
    sget p1, Lcom/android/systemui/R$drawable;->rounded_top:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/systemui/R$drawable;->rounded_bottom:I

    .line 1028
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1030
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1031
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-nez v2, :cond_2

    const-string p0, "ScreenDecorations"

    const-string p1, "Bitmap is null"

    .line 1035
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1039
    :cond_2
    invoke-static {v5, v2}, Lcom/android/systemui/ScreenDecorations;->rotateBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1040
    sget p1, Lcom/android/systemui/R$id;->left:I

    if-ne p2, p1, :cond_3

    move p1, v4

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/ScreenDecorations;->getRoundedCornerRotationX(IZ)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 1041
    sget p1, Lcom/android/systemui/R$id;->left:I

    if-ne p2, p1, :cond_4

    move v3, v4

    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/ScreenDecorations;->getRoundedCornerRotationY(IZ)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setRotationY(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1045
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method getCutout()Landroid/view/DisplayCutout;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 629
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 630
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getWidthLayoutParamByPos(I)I

    move-result v1

    .line 631
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getHeightLayoutParamByPos(I)I

    move-result v2

    const/16 v3, 0x7e8

    const v4, 0x20800128

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 639
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 642
    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 643
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 646
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->getWindowTitleByPos(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 647
    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getOverlayWindowGravity(I)I

    move-result p0

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, 0x3

    .line 648
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p0, 0x0

    .line 649
    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 650
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 p1, 0x1000000

    or-int/2addr p0, p1

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v6
.end method

.method hasOverlays()Z
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 508
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    return v1
.end method

.method public synthetic lambda$onConfigurationChanged$2$ScreenDecorations(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->lambda$onConfigurationChanged$2(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public synthetic lambda$onTuningChanged$3$ScreenDecorations(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations;->lambda$onTuningChanged$3(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setupDecorations$0$ScreenDecorations()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->lambda$setupDecorations$0()V

    return-void
.end method

.method public synthetic lambda$setupDecorations$1$ScreenDecorations()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->lambda$setupDecorations$1()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$NfhIKJZ6L4jkc7cEhc50RJtdE1g;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$NfhIKJZ6L4jkc7cEhc50RJtdE1g;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1216
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$SUGiySfRKK3_sOKVTApzHsRl4l4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$SUGiySfRKK3_sOKVTApzHsRl4l4;-><init>(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected setSize(Landroid/view/View;I)V
    .locals 0

    .line 1274
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1275
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1276
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1277
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->startHandlerThread()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 311
    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 315
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mShutDownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method startHandlerThread()Landroid/os/Handler;
    .locals 1

    .line 324
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "ScreenDecorations"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 326
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method updateDecorSize()V
    .locals 11

    .line 2016
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2021
    aget-object v2, v0, v1

    const/4 v3, 0x3

    .line 2022
    aget-object v0, v0, v3

    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    .line 2026
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2027
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mScreenResolution:I

    if-eqz v4, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 2034
    :cond_1
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopResize:I

    .line 2035
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomResize:I

    .line 2037
    iget v6, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidthResize:I

    .line 2038
    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidthResize:I

    goto :goto_1

    .line 2028
    :cond_2
    :goto_0
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 2029
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    .line 2031
    iget v6, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    .line 2032
    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    goto :goto_1

    .line 2041
    :cond_3
    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    .line 2042
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    .line 2043
    iget v6, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTopWidth:I

    .line 2044
    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottomWidth:I

    .line 2048
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleTop()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->isRectangleBottom()Z

    move-result v8

    if-nez v8, :cond_4

    iget v8, p0, Lcom/android/systemui/ScreenDecorations;->mLastSizeTop:I

    if-ne v8, v4, :cond_4

    iget v8, p0, Lcom/android/systemui/ScreenDecorations;->mLastSizeBottom:I

    if-ne v8, v5, :cond_4

    return-void

    .line 2053
    :cond_4
    iput v4, p0, Lcom/android/systemui/ScreenDecorations;->mLastSizeTop:I

    .line 2054
    iput v5, p0, Lcom/android/systemui/ScreenDecorations;->mLastSizeBottom:I

    .line 2055
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateDecorSize top "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/systemui/ScreenDecorations;->mLastSizeTop:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bottom "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/systemui/ScreenDecorations;->mLastSizeBottom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mRotation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ScreenDecorations"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_7

    .line 2060
    iget v8, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v8, v1, :cond_5

    if-ne v8, v3, :cond_6

    :cond_5
    move v10, v6

    move v6, v4

    move v4, v10

    .line 2066
    :cond_6
    sget v8, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v4, v6}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;II)V

    .line 2067
    sget v8, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v4, v6}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;II)V

    goto :goto_2

    .line 2069
    :cond_7
    sget v6, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 2070
    sget v6, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    :goto_2
    if-eqz v7, :cond_a

    .line 2076
    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v2, v1, :cond_8

    if-ne v2, v3, :cond_9

    :cond_8
    move v10, v7

    move v7, v5

    move v5, v10

    .line 2082
    :cond_9
    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v5, v7}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;II)V

    .line 2083
    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v5, v7}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;II)V

    goto :goto_3

    .line 2085
    :cond_a
    sget v1, Lcom/android/systemui/R$id;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    .line 2086
    sget v1, Lcom/android/systemui/R$id;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    :cond_b
    :goto_3
    return-void
.end method
