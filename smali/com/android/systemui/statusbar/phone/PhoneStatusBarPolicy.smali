.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;
.implements Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;
.implements Lcom/oneplus/worklife/OPWLBHelper$IStatusBarIconChangeListener;


# static fields
.field private static final DEBUG:Z

.field public static final LOCATION_STATUS_ICON_ID:I

.field protected static final mHandler:Landroid/os/Handler;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mCurrentUserSetup:Z

.field private final mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mDateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

.field private final mDisplayId:I

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mManagedProfileIconVisible:Z

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private final mNextAlarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

.field private final mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private final mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

.field private mRemoveCastIconRunnable:Ljava/lang/Runnable;

.field private final mResources:Landroid/content/res/Resources;

.field private final mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

.field private final mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

.field private final mSensorPrivacyListener:Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;

.field private final mSlotAlarmClock:Ljava/lang/String;

.field private final mSlotCast:Ljava/lang/String;

.field private final mSlotDataSaver:Ljava/lang/String;

.field private final mSlotHeadset:Ljava/lang/String;

.field private final mSlotHotspot:Ljava/lang/String;

.field private final mSlotLocation:Ljava/lang/String;

.field private final mSlotManagedProfile:Ljava/lang/String;

.field private final mSlotRotate:Ljava/lang/String;

.field private final mSlotScreenRecord:Ljava/lang/String;

.field private final mSlotSensorsOff:Ljava/lang/String;

.field private final mSlotTty:Ljava/lang/String;

.field private final mSlotVolume:Ljava/lang/String;

.field private mSlotWLB:Ljava/lang/String;

.field private final mSlotZen:Ljava/lang/String;

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

.field private mVolumeVisible:Z

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PhoneStatusBarPolicy"

    const/4 v1, 0x3

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    .line 134
    sget v0, Lcom/android/systemui/R$drawable;->op_perm_group_location:I

    sput v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->LOCATION_STATUS_ICON_ID:I

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/SensorPrivacyController;Landroid/app/IActivityManager;Landroid/app/AlarmManager;Landroid/os/UserManager;Lcom/android/systemui/screenrecord/RecordingController;Landroid/telecom/TelecomManager;ILandroid/content/SharedPreferences;Lcom/android/systemui/util/time/DateFormatUtil;Lcom/android/systemui/util/RingerModeTracker;)V
    .locals 5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p6

    move-object v3, p1

    move-object/from16 v4, p25

    .line 218
    invoke-direct {p0, p1, p2, v4}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Landroid/content/SharedPreferences;)V

    const/4 v3, 0x0

    .line 188
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    .line 612
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

    .line 628
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 645
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 652
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .line 661
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyListener:Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;

    .line 762
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 789
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    .line 220
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-object v1, p3

    .line 221
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v1, p4

    .line 222
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 223
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    move-object v1, p7

    .line 224
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    move-object v1, p8

    .line 225
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    move-object v1, p9

    .line 226
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-object v1, p10

    .line 227
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-object/from16 v1, p20

    .line 228
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v1, p11

    .line 229
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-object/from16 v1, p19

    .line 230
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v1, p21

    .line 231
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v1, p12

    .line 232
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-object/from16 v1, p13

    .line 233
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-object/from16 v1, p14

    .line 234
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v1, p15

    .line 235
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v1, p16

    .line 236
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p17

    .line 237
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    move-object/from16 v1, p18

    .line 238
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    move-object/from16 v1, p22

    .line 239
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    move-object v1, p5

    .line 240
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p23

    .line 241
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    move-object/from16 v1, p27

    .line 242
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    const v1, 0x1040799

    .line 244
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    const v1, 0x10407a1

    .line 245
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    const v1, 0x1040797

    .line 246
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    const v1, 0x10407b2

    .line 247
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    const v1, 0x10407b8

    .line 248
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    const v1, 0x10407b4

    .line 249
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    const v1, 0x1040795

    .line 250
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    const v1, 0x10407a4

    .line 251
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    const v1, 0x10407ab

    .line 253
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const v1, 0x10407a0

    .line 254
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    const v1, 0x104079d

    .line 255
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    const v1, 0x10407a3

    .line 256
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    const v1, 0x10407ae

    .line 257
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    const v1, 0x10407ac

    .line 258
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    move/from16 v1, p24

    .line 261
    iput v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDisplayId:I

    move-object/from16 v1, p26

    .line 263
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

    const v1, 0x10407b7

    .line 268
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotWLB:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHeadsetPlug(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 107
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/UserInfoController;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;II)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHotspotIcon(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCast()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/app/AlarmManager$AlarmClockInfo;)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    return-void
.end method

.method private buildAlarmContentDescription()Ljava/lang/String;
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_0

    .line 397
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->status_bar_alarm:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

    invoke-virtual {v0}, Lcom/android/systemui/util/time/DateFormatUtil;->is24HourFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EHm"

    goto :goto_0

    :cond_1
    const-string v0, "Ehma"

    .line 401
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$string;->accessibility_quick_settings_alarm:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Xfz5Yb18bNwaH_MFXZNINIQ7qpE(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method

.method private synthetic lambda$init$0(Ljava/lang/Integer;)V
    .locals 1

    .line 291
    sget-object p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$Xfz5Yb18bNwaH_MFXZNINIQ7qpE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$Xfz5Yb18bNwaH_MFXZNINIQ7qpE;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onCountdownEnd$3()V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onCountdownEnd$4()V
    .locals 2

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconAccessibilityLiveRegion(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onRecordingEnd$6()V
    .locals 2

    .line 844
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onRecordingStart$5()V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$updateManagedProfile$1(ZI)V
    .locals 4

    if-eqz p1, :cond_1

    const/16 p1, 0x3e7

    if-eq p2, p1, :cond_1

    .line 591
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 592
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 595
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_managed_profile_status:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$string;->accessibility_managed_profile:I

    .line 597
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-interface {p2, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 601
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    if-eq p2, p1, :cond_2

    .line 602
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 603
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateManagedProfile$2()V
    .locals 4

    .line 580
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLastResumedActivityUserId()I

    move-result v0

    .line 581
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    .line 582
    sget-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$k5LzGn5vL350weYgt3sHE3wykZE;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$k5LzGn5vL350weYgt3sHE3wykZE;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PhoneStatusBarPolicy"

    const-string/jumbo v1, "updateManagedProfile: "

    .line 607
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateAlarm()V
    .locals 7

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 388
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 390
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_alarm_dim:I

    goto :goto_2

    .line 391
    :cond_2
    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_alarm:I

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->buildAlarmContentDescription()Ljava/lang/String;

    move-result-object v6

    .line 390
    invoke-interface {v4, v5, v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 392
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-interface {v3, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private final updateBluetooth()V
    .locals 2

    .line 496
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBarPolicy"

    const-string/jumbo v1, "updateBluetooth"

    .line 497
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    invoke-super {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->OpUpdateBluetooth()V

    return-void
.end method

.method private updateCast()V
    .locals 6

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 553
    iget v1, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 559
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    const-string v3, "PhoneStatusBarPolicy"

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCast: isCasting: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_4

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result v0

    if-nez v0, :cond_4

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_cast:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$string;->accessibility_casting:I

    .line 563
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 562
    invoke-interface {v0, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    invoke-interface {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 568
    :cond_4
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "updateCast: hiding icon in 3 sec..."

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method private updateHeadsetPlug(Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    .line 712
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "microphone"

    .line 713
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    .line 715
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive ACTION_USBHEADSET_PLUG, connected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasMic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PhoneStatusBarPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    .line 719
    sget v1, Lcom/android/systemui/R$string;->accessibility_status_bar_headset:I

    goto :goto_2

    .line 720
    :cond_2
    sget v1, Lcom/android/systemui/R$string;->accessibility_status_bar_headphones:I

    .line 718
    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    if-eqz p1, :cond_3

    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_headset_mic:I

    goto :goto_3

    .line 722
    :cond_3
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_headset:I

    .line 721
    :goto_3
    invoke-interface {v1, v3, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 723
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 726
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->sendHeadsetNotify()V

    goto :goto_4

    .line 730
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 733
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->cancelHeadsetNotify()V

    :goto_4
    return-void
.end method

.method private updateHotspotIcon(II)V
    .locals 3

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHotspotIcon standard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numDevices:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStatusBarPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 885
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_hotspot:I

    goto :goto_0

    .line 882
    :pswitch_0
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_10:I

    goto :goto_0

    .line 879
    :pswitch_1
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_9:I

    goto :goto_0

    .line 876
    :pswitch_2
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_8:I

    goto :goto_0

    .line 873
    :pswitch_3
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_7:I

    goto :goto_0

    .line 870
    :pswitch_4
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_6:I

    goto :goto_0

    .line 867
    :pswitch_5
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_5:I

    goto :goto_0

    .line 864
    :pswitch_6
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_4:I

    goto :goto_0

    .line 861
    :pswitch_7
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_3:I

    goto :goto_0

    .line 858
    :pswitch_8
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_2:I

    goto :goto_0

    .line 855
    :pswitch_9
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_1:I

    .line 887
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$string;->accessibility_status_bar_hotspot:I

    .line 888
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 887
    invoke-interface {p2, v0, p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    const/16 v2, 0xc5

    aput v2, p2, v0

    .line 895
    invoke-static {p2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    .line 898
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_hotspot:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$string;->accessibility_status_bar_hotspot:I

    .line 899
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 898
    invoke-interface {p1, p2, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 901
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_wifi_5_hotspot:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$string;->accessibility_status_bar_hotspot:I

    .line 902
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 901
    invoke-interface {p1, p2, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 904
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_wifi_4_hotspot:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$string;->accessibility_status_bar_hotspot:I

    .line 905
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 904
    invoke-interface {p1, p2, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 907
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_hotspot:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$string;->accessibility_status_bar_hotspot:I

    .line 908
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 907
    invoke-interface {p1, p2, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 913
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_hotspot:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$string;->accessibility_status_bar_hotspot:I

    .line 914
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 913
    invoke-interface {p1, p2, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    const-string/jumbo p0, "use default hotspot icon"

    .line 915
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLocation()V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private updateManagedProfile()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$w1c9js_99pYYTi-INgjnhsQltlU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$w1c9js_99pYYTi-INgjnhsQltlU;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final updateTTY()V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 526
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    :goto_0
    return-void
.end method

.method private final updateTTY(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 535
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    const-string v3, "PhoneStatusBarPolicy"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTTY: enabled: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_3

    .line 539
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string/jumbo p1, "updateTTY: set TTY on"

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_tty_mode:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$string;->accessibility_tty_enabled:I

    .line 541
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 540
    invoke-interface {p1, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 542
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 545
    :cond_3
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string/jumbo p1, "updateTTY: set TTY off"

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private final updateVolumeZen()V
    .locals 8

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    .line 449
    invoke-super {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->updateVolumeZen(I)Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;

    move-result-object v0

    .line 450
    iget-boolean v1, v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenVisible:Z

    .line 451
    iget v2, v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenIconId:I

    .line 452
    iget-object v3, v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->zenDescription:Ljava/lang/String;

    .line 454
    iget-boolean v4, v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeVisible:Z

    .line 455
    iget v5, v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeIconId:I

    .line 456
    iget-object v0, v0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$OpUpdateVolumeZenObject;->volumeDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 460
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    invoke-interface {v6, v7, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 462
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    if-eq v1, v2, :cond_1

    .line 463
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 464
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    :cond_1
    if-eqz v4, :cond_2

    .line 468
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 470
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    if-eq v4, v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 472
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 474
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    return-void
.end method


# virtual methods
.method public appTransitionStarting(IJJZ)V
    .locals 0

    .line 674
    iget p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDisplayId:I

    if-ne p2, p1, :cond_0

    .line 675
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 7

    .line 277
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 291
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$KdIGXKMKGALjz1ooREPEW2VYtAY;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$KdIGXKMKGALjz1ooREPEW2VYtAY;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 293
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    invoke-interface {v1}, Lcom/android/systemui/util/RingerModeTracker;->getRingerMode()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    invoke-interface {v1}, Lcom/android/systemui/util/RingerModeTracker;->getRingerModeInternal()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

    const-string v2, "PhoneStatusBarPolicy"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :catch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY()V

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_alarm:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_dnd:I

    invoke-interface {v0, v1, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_ringer_vibrate:I

    invoke-interface {v0, v1, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_cast:I

    invoke-interface {v0, v1, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_managed_profile_status:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/systemui/R$string;->accessibility_managed_profile:I

    .line 328
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 327
    invoke-interface {v0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    invoke-interface {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_data_saver:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/systemui/R$string;->accessibility_data_saver_on:I

    .line 333
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-interface {v0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->LOCATION_STATUS_ICON_ID:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/systemui/R$string;->accessibility_location_active:I

    .line 337
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-interface {v0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_sensors_off:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/systemui/R$string;->accessibility_sensors_off_active:I

    .line 342
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 341
    invoke-interface {v0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    .line 344
    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/SensorPrivacyController;->isSensorPrivacyEnabled()Z

    move-result v4

    .line 343
    invoke-interface {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_screen_record:I

    invoke-interface {v0, v1, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyListener:Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenrecord/RecordingController;->addCallback(Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 367
    const-class v0, Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/worklife/OPWLBHelper;

    .line 368
    invoke-virtual {v0}, Lcom/oneplus/worklife/OPWLBHelper;->checkAndIncludeWLBTile()V

    .line 369
    invoke-virtual {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper;->registerStatusBarObserver(Lcom/oneplus/worklife/OPWLBHelper$IStatusBarIconChangeListener;)V

    .line 370
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotWLB:Ljava/lang/String;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wlb_mode:I

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 371
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotWLB:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oneplus/worklife/OPWLBHelper;->isWLBEnabled()Z

    move-result v0

    invoke-interface {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$init$0$PhoneStatusBarPolicy(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$init$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$onCountdownEnd$3$PhoneStatusBarPolicy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$onCountdownEnd$3()V

    return-void
.end method

.method public synthetic lambda$onCountdownEnd$4$PhoneStatusBarPolicy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$onCountdownEnd$4()V

    return-void
.end method

.method public synthetic lambda$onRecordingEnd$6$PhoneStatusBarPolicy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$onRecordingEnd$6()V

    return-void
.end method

.method public synthetic lambda$onRecordingStart$5$PhoneStatusBarPolicy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$onRecordingStart$5()V

    return-void
.end method

.method public synthetic lambda$updateManagedProfile$1$PhoneStatusBarPolicy(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$updateManagedProfile$1(ZI)V

    return-void
.end method

.method public synthetic lambda$updateManagedProfile$2$PhoneStatusBarPolicy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$updateManagedProfile$2()V

    return-void
.end method

.method public onBluetoothActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 490
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    return-void
.end method

.method public onBluetoothDevicesChanged()V
    .locals 0

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .locals 0

    .line 484
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    return-void
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method

.method public onCountdown(J)V
    .locals 4

    .line 800
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenrecord: countdown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStatusBarPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    .line 801
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    .line 802
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_screen_record:I

    .line 803
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 812
    :cond_1
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_screen_record_3:I

    goto :goto_0

    .line 809
    :cond_2
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_screen_record_2:I

    goto :goto_0

    .line 806
    :cond_3
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_screen_record_1:I

    .line 815
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    invoke-interface {p1, v3, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 816
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    invoke-interface {p1, p2, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 818
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconAccessibilityLiveRegion(Ljava/lang/String;I)V

    return-void
.end method

.method public onCountdownEnd()V
    .locals 2

    .line 824
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBarPolicy"

    const-string v1, "screenrecord: hiding icon during countdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$PHI8Z1W8Z96hbvbATx2ZJj0XaZQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$PHI8Z1W8Z96hbvbATx2ZJj0XaZQ;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 827
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$7mFArDgpnanqDUji3ufC10IThZA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$7mFArDgpnanqDUji3ufC10IThZA;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public onHideWLBStatusBarIcon()V
    .locals 2

    .line 923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotWLB:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 0

    .line 681
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    return-void
.end method

.method public onLocationActiveChanged(Z)V
    .locals 1

    .line 746
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateLocation()V

    .line 749
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLocationActiveChanged, update status of location service: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneStatusBarPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecordingEnd()V
    .locals 2

    .line 843
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBarPolicy"

    const-string v1, "screenrecord: hiding icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$lQt3Uj0Z6eUPln3nxKWH-1F6RLQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$lQt3Uj0Z6eUPln3nxKWH-1F6RLQ;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecordingStart()V
    .locals 5

    .line 833
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBarPolicy"

    const-string v1, "screenrecord: showing icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_screen_record:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$string;->screenrecord_ongoing_screen_only:I

    .line 836
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 834
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 837
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$7Gelwg8Ag7IxnHM8BkaPNl8uo3o;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$7Gelwg8Ag7IxnHM8BkaPNl8uo3o;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRotationLockStateChanged(ZZ)V
    .locals 3

    .line 695
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    invoke-static {p2, v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/res/Resources;)Z

    move-result p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 699
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_rotate_portrait:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$string;->accessibility_rotation_lock_on_portrait:I

    .line 700
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-interface {p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 702
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_rotate_landscape:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$string;->accessibility_rotation_lock_on_landscape:I

    .line 703
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-interface {p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 705
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 707
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public onShowWLBStatusBarIcon()V
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotWLB:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public onUserSetupChanged()V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 687
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v1

    .line 686
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isUserSetup(I)Z

    move-result v0

    .line 688
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 689
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    .line 690
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    return-void
.end method

.method public onZenChanged(I)V
    .locals 0

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method
