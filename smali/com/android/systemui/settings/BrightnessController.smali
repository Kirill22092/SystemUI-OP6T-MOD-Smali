.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_FOR_VR_FLOAT_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_URI:Landroid/net/Uri;

.field private static final DEBUG:Z

.field private static final PRODUCT_CODENAME:Ljava/lang/String;

.field private static mLastClickTimeMillis:J


# instance fields
.field private AUTO_BRIGHTNESS_MINIMUM:I

.field private mAnimationDuration:J

.field private volatile mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBrightness:F

.field private final mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/ToggleSlider;

.field private final mDefaultBacklight:F

.field private final mDefaultBacklightForVr:F

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIcon:Landroid/widget/ImageView;

.field private volatile mIsVrModeEnabled:Z

.field private final mLevelIcon:Landroid/widget/ImageView;

.field private mListening:Z

.field private final mMaximumBacklight:F

.field private final mMaximumBacklightForVr:F

.field private final mMinimumBacklight:F

.field private final mMinimumBacklightForVr:F

.field private mMirrorIcon:Landroid/widget/ImageView;

.field private mMirrorLevelIcon:Landroid/widget/ImageView;

.field private mNewController:Z

.field private mSliderAnimator:Landroid/animation/ValueAnimator;

.field private mSliderMax:I

.field private mSliderValue:I

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private mTracking:Z

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;

.field private final mUpdateSliderNoAnimRunnable:Ljava/lang/Runnable;

.field private final mUpdateSliderRunnable:Ljava/lang/Runnable;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/settings/BrightnessController;->DEBUG:Z

    const-string v0, "screen_brightness_mode"

    .line 90
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const-string v0, "screen_brightness"

    .line 92
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/BrightnessController;->BRIGHTNESS_URI:Landroid/net/Uri;

    const-string v0, "screen_brightness_float"

    .line 94
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/BrightnessController;->BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

    const-string v0, "screen_brightness_for_vr_float"

    .line 96
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/BrightnessController;->BRIGHTNESS_FOR_VR_FLOAT_URI:Landroid/net/Uri;

    const-wide/16 v0, -0x1

    .line 147
    sput-wide v0, Lcom/android/systemui/settings/BrightnessController;->mLastClickTimeMillis:J

    const-string v0, "ro.boot.project_codename"

    const-string v1, "0"

    .line 152
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/BrightnessController;->PRODUCT_CODENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 2

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMirrorIcon:Landroid/widget/ImageView;

    .line 110
    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMirrorLevelIcon:Landroid/widget/ImageView;

    const-wide/16 v0, 0x0

    .line 118
    iput-wide v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAnimationDuration:J

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->AUTO_BRIGHTNESS_MINIMUM:I

    .line 137
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mNewController:Z

    .line 138
    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderMax:I

    .line 139
    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderValue:I

    .line 143
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mTracking:Z

    const/4 v1, 0x0

    .line 144
    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightness:F

    .line 263
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    .line 295
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    .line 345
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$3;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    .line 374
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$4;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    .line 397
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$5;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderNoAnimRunnable:Ljava/lang/Runnable;

    .line 420
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$6;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 428
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$7;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 478
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    .line 479
    iput-object p3, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    .line 481
    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mLevelIcon:Landroid/widget/ImageView;

    .line 484
    sget-object p3, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$daXJdO8QhMk8Ivkwgi6j5oHn7Mk;->INSTANCE:Lcom/android/systemui/settings/-$$Lambda$BrightnessController$daXJdO8QhMk8Ivkwgi6j5oHn7Mk;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    new-instance p3, Lcom/android/systemui/settings/BrightnessController$8;

    invoke-direct {p3, p0}, Lcom/android/systemui/settings/BrightnessController$8;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    sget p2, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    iput p2, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderMax:I

    .line 496
    iput-object p4, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 497
    invoke-interface {p4, p2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 498
    new-instance p2, Landroid/os/Handler;

    sget-object p3, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Looper;

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 499
    new-instance p2, Lcom/android/systemui/settings/BrightnessController$9;

    invoke-direct {p2, p0, p5}, Lcom/android/systemui/settings/BrightnessController$9;-><init>(Lcom/android/systemui/settings/BrightnessController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 506
    new-instance p2, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    iget-object p3, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    .line 508
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 509
    invoke-virtual {p2, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:F

    const/4 p3, 0x1

    .line 511
    invoke-virtual {p2, p3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:F

    const/4 p3, 0x2

    .line 513
    invoke-virtual {p2, p3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklight:F

    const/4 p3, 0x5

    .line 515
    invoke-virtual {p2, p3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:F

    const/4 p3, 0x6

    .line 517
    invoke-virtual {p2, p3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:F

    const/4 p3, 0x7

    .line 519
    invoke-virtual {p2, p3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklightForVr:F

    .line 523
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110029

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 525
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo p1, "vrmanager"

    .line 526
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 530
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "oem.autobrightctl.animation.support"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mNewController:Z

    .line 531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mNewController="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/settings/BrightnessController;->mNewController:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatusBar.BrightnessController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e00b1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/settings/BrightnessController;->AUTO_BRIGHTNESS_MINIMUM:I

    .line 535
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AUTO_BRIGHTNESS_MINIMUM="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/settings/BrightnessController;->AUTO_BRIGHTNESS_MINIMUM:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/systemui/settings/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/systemui/settings/BrightnessController;->BRIGHTNESS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/BrightnessController;)Landroid/service/vr/IVrManager;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/BrightnessController;)Landroid/service/vr/IVrStateCallbacks;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/android/systemui/settings/BrightnessController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/android/systemui/settings/BrightnessController;->mTracking:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mTracking:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/android/systemui/settings/BrightnessController;->mNewController:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/settings/BrightnessController;)F
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightness:F

    return p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/settings/BrightnessController;)F
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklightForVr:F

    return p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/settings/BrightnessController;)F
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklight:F

    return p0
.end method

.method static synthetic access$2702(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/settings/BrightnessController;FZZ)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/settings/BrightnessController;->updateSlider(FZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateVrMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/systemui/settings/BrightnessController;->BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/settings/BrightnessController;J)J
    .locals 0

    .line 70
    iput-wide p1, p0, Lcom/android/systemui/settings/BrightnessController;->mAnimationDuration:J

    return-wide p1
.end method

.method static synthetic access$700()J
    .locals 2

    .line 70
    sget-wide v0, Lcom/android/systemui/settings/BrightnessController;->mLastClickTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$702(J)J
    .locals 0

    .line 70
    sput-wide p0, Lcom/android/systemui/settings/BrightnessController;->mLastClickTimeMillis:J

    return-wide p0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderNoAnimRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/systemui/settings/BrightnessController;->BRIGHTNESS_FOR_VR_FLOAT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private animateSliderTo(IZ)V
    .locals 6

    const-string v0, "StatusBar.BrightnessController"

    if-eqz p2, :cond_0

    .line 743
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not inited, set to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {p2, p1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 748
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "animateSliderTo: cancel anim."

    .line 749
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 v1, 0x0

    .line 752
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v2}, Lcom/android/systemui/settings/ToggleSlider;->getValue()I

    move-result v2

    aput v2, p2, v1

    const/4 v1, 0x1

    aput p1, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 753
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateSliderTo: animating from "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v1}, Lcom/android/systemui/settings/ToggleSlider;->getValue()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$S-CS_s0jEi0EiTJesxKBGNeWZLE;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$S-CS_s0jEi0EiTJesxKBGNeWZLE;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 765
    iget-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 766
    invoke-interface {p2}, Lcom/android/systemui/settings/ToggleSlider;->getValue()I

    move-result p2

    sub-int/2addr p2, p1

    .line 765
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0xbb8

    sget p2, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    div-int/2addr p1, p2

    int-to-long p1, p1

    const-wide/16 v1, 0x3e8

    cmp-long v3, p1, v1

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    move-wide p1, v1

    .line 770
    :goto_0
    sget-object v1, Lcom/android/systemui/settings/BrightnessController;->PRODUCT_CODENAME:Ljava/lang/String;

    const-string v2, "ebba"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    .line 771
    iput-wide v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAnimationDuration:J

    .line 775
    :cond_3
    iget-wide v4, p0, Lcom/android/systemui/settings/BrightnessController;->mAnimationDuration:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_4

    move-wide p1, v4

    .line 780
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AMD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 784
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$animateSliderTo$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    const/4 v0, 0x1

    .line 755
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    .line 756
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    const/4 p1, 0x0

    .line 757
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private setBrightness(F)V
    .locals 2

    .line 656
    sget-boolean v0, Lcom/android/systemui/settings/BrightnessController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBrightness "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar.BrightnessController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(F)V

    return-void
.end method

.method private setMode(I)V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 652
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result p0

    const-string v1, "screen_brightness_mode"

    .line 650
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private updateIcon(Z)V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mLevelIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/settings/BrightnessController;->updateIconInternal(ZLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 663
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMirrorIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMirrorLevelIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/settings/BrightnessController;->updateIconInternal(ZLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method private updateIconInternal(ZLandroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 669
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_brightness_auto_on:I

    goto :goto_0

    .line 670
    :cond_0
    sget p1, Lcom/android/systemui/R$drawable;->ic_qs_brightness_auto_off:I

    .line 668
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    if-eqz p3, :cond_7

    .line 674
    iget-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eqz p1, :cond_4

    .line 675
    iget p1, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderValue:I

    int-to-float p2, p1

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:F

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_2

    .line 676
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_brightness_low:I

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 677
    :cond_2
    iget p0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderMax:I

    add-int/lit8 p0, p0, -0x1

    if-lt p1, p0, :cond_3

    .line 678
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_brightness_high:I

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 680
    :cond_3
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_brightness_medium:I

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 683
    :cond_4
    iget p1, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderValue:I

    int-to-float p2, p1

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:F

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_5

    .line 684
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_brightness_low:I

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 685
    :cond_5
    iget p0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderMax:I

    add-int/lit8 p0, p0, -0x1

    if-lt p1, p0, :cond_6

    .line 686
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_brightness_high:I

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 688
    :cond_6
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_brightness_medium:I

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method private updateSlider(FZZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 709
    iget p2, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:F

    .line 710
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:F

    goto :goto_0

    .line 712
    :cond_0
    iget p2, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:F

    .line 713
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:F

    .line 716
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 717
    invoke-interface {v1}, Lcom/android/systemui/settings/ToggleSlider;->getValue()I

    move-result v1

    invoke-static {v1, p2, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinearFloat(IFF)F

    move-result v1

    .line 716
    invoke-static {p1, v1}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 723
    :cond_1
    invoke-static {p1, p2, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGammaFloat(FFF)I

    move-result p1

    .line 726
    iput p1, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderValue:I

    .line 731
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/settings/BrightnessController;->animateSliderTo(IZ)V

    return-void
.end method

.method private updateVrMode(Z)V
    .locals 1

    .line 696
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 697
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    .line 698
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetEnabled()V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$11;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$animateSliderTo$1$BrightnessController(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->lambda$animateSliderTo$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V
    .locals 2

    .line 565
    sget-boolean p1, Lcom/android/systemui/settings/BrightnessController;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Slider.onChanged value="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extChange="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", tracking="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", auto="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "StatusBar.BrightnessController"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    iput p4, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderValue:I

    .line 577
    iput-boolean p2, p0, Lcom/android/systemui/settings/BrightnessController;->mTracking:Z

    .line 580
    iget-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    .line 581
    iget-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    if-eqz p1, :cond_1

    return-void

    .line 583
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 584
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 592
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eqz p1, :cond_3

    const/16 p1, 0x1f2

    .line 594
    iget p3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:F

    .line 595
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:F

    const-string v1, "screen_brightness_for_vr_float"

    goto :goto_1

    .line 598
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz p1, :cond_4

    const/16 p1, 0xdb

    goto :goto_0

    :cond_4
    const/16 p1, 0xda

    .line 601
    :goto_0
    iget p3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:F

    .line 602
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:F

    const-string v1, "screen_brightness_float"

    .line 605
    :goto_1
    invoke-static {p4, p3, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinearFloat(IFF)F

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p3, p4}, Landroid/util/MathUtils;->min(FF)F

    move-result p3

    .line 610
    iput p3, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightness:F

    if-eqz p5, :cond_5

    .line 615
    iget-object p4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    .line 616
    invoke-static {p4, p3}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result p5

    .line 615
    invoke-static {p4, p1, p5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 619
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(F)V

    if-nez p2, :cond_6

    .line 621
    new-instance p1, Lcom/android/systemui/settings/BrightnessController$10;

    invoke-direct {p1, p0, v1, p3}, Lcom/android/systemui/settings/BrightnessController$10;-><init>(Lcom/android/systemui/settings/BrightnessController;Ljava/lang/String;F)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 632
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 633
    invoke-interface {p1}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public onClickAutomaticIcon()V
    .locals 3

    const-string v0, "quick_bright"

    const-string v1, "auto"

    const-string v2, "1"

    .line 790
    invoke-static {v0, v1, v2}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setMode(I)V

    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    return-void
.end method

.method public registerCallbacks()V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMirrorView(Landroid/view/View;)V
    .locals 1

    .line 800
    sget v0, Lcom/android/systemui/R$id;->brightness_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMirrorIcon:Landroid/widget/ImageView;

    .line 801
    sget v0, Lcom/android/systemui/R$id;->brightness_level:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mMirrorLevelIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
