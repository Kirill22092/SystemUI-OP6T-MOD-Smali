.class public Lcom/android/systemui/statusbar/policy/MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$OpMobilePhoneStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController<",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final LTE_DEFAULT_STATUS:[Z

.field private static SHOW_LTE_OPERATORS:[Ljava/lang/String;


# instance fields
.field private MAX_NOTIFYLISTENER_INTERVAL:I

.field private mCallState:I

.field private mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field private mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

.field private mClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mDataState:I

.field private mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private final mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private mFeatureConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mFiveGStateListener:Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mImsListening:Z

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private final mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

.field mInflateSignalStrengths:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLTEStatus:[Z

.field private mLastUpdateActivityTime:J

.field private mLastUpdateSignalStrengthTime:J

.field private mLastUpdateTime:J

.field private mListening:Z

.field private mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private mMccmnc:Ljava/lang/String;

.field private final mNetworkNameDefault:Ljava/lang/String;

.field private final mNetworkNameSeparator:Ljava/lang/String;

.field final mNetworkToIconLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field mOPMoblileReceiver:Landroid/content/BroadcastReceiver;

.field private final mObserver:Landroid/database/ContentObserver;

.field final mOpPhoneStateListener:Landroid/telephony/OpPhoneStateListener;

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mShowFakeIconSimLoaded:Z

.field private mShowNrX:Z

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private final mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

.field private mWwanAccessNetworkType:I


# direct methods
.method static constructor <clinit>()V
    .locals 42

    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 174
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_DEFAULT_STATUS:[Z

    const-string v1, "310004"

    const-string v2, "310005"

    const-string v3, "310012"

    const-string v4, "311480"

    const-string v5, "311481-9"

    const-string v6, "310026"

    const-string v7, "310160"

    const-string v8, "310170"

    const-string v9, "310200"

    const-string v10, "310210"

    const-string v11, "310220"

    const-string v12, "310230"

    const-string v13, "310240"

    const-string v14, "310250"

    const-string v15, "310260"

    const-string v16, "310270"

    const-string v17, "310280"

    const-string v18, "310290"

    const-string v19, "310310"

    const-string v20, "310330"

    const-string v21, "310490"

    const-string v22, "310580"

    const-string v23, "310660"

    const-string v24, "310800"

    const-string v25, "310090"

    const-string v26, "310150"

    const-string v27, "310380"

    const-string v28, "310410"

    const-string v29, "310560"

    const-string v30, "310680"

    const-string v31, "310980"

    const-string v32, "310990"

    const-string v33, "310120"

    const-string v34, "316010"

    const-string v35, "310020"

    const-string v36, "23203"

    const-string v37, "23207"

    const-string v38, "26002"

    const-string v39, "26201"

    const-string v40, "23001"

    const-string v41, "26006"

    .line 181
    filled-new-array/range {v1 .. v41}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->SHOW_LTE_OPERATORS:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V
    .locals 9

    move-object v6, p0

    move v7, p3

    move-object/from16 v8, p9

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileSignalController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    const/4 v0, 0x0

    .line 121
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 122
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 123
    new-instance v1, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {v1, v0, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 130
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    .line 133
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallState:I

    .line 147
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mWwanAccessNetworkType:I

    const-wide/16 v1, 0x0

    .line 155
    iput-wide v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateActivityTime:J

    .line 160
    iput-wide v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateSignalStrengthTime:J

    const/16 v3, 0x64

    .line 169
    iput v3, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->MAX_NOTIFYLISTENER_INTERVAL:I

    .line 170
    iput-wide v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateTime:J

    .line 175
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_DEFAULT_STATUS:[Z

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLTEStatus:[Z

    .line 239
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mListening:Z

    const-string v1, ""

    .line 242
    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccmnc:Ljava/lang/String;

    .line 250
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsListening:Z

    .line 258
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShowNrX:Z

    .line 2236
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$4;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 2255
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    .line 2297
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

    .line 2604
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOPMoblileReceiver:Landroid/content/BroadcastReceiver;

    .line 2663
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShowFakeIconSimLoaded:Z

    .line 272
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() info.getSubscriptionId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    move-object v0, p2

    .line 275
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-object v0, p4

    .line 276
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p8

    .line 277
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    move-object/from16 v0, p7

    .line 278
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 279
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGStateListener:Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;

    .line 280
    new-instance v1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;-><init>()V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    .line 281
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/systemui/statusbar/policy/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/policy/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Ljava/util/concurrent/Executor;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 283
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$OpMobilePhoneStateListener;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/systemui/statusbar/policy/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/policy/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController$OpMobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Ljava/util/concurrent/Executor;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOpPhoneStateListener:Landroid/telephony/OpPhoneStateListener;

    .line 285
    sget v1, Lcom/android/systemui/R$string;->status_bar_network_name_separator:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    const v1, 0x1040449

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 288
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 292
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;

    invoke-direct {v1, p0, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Looper;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    .line 348
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->customizeIconsMap()V

    .line 352
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 354
    :goto_0
    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v0, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 355
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v0, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 356
    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-object v2, v3

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v7, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 357
    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 362
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getNumLevels(Landroid/content/Context;)I

    .line 391
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Z
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDelaySignalStrengthsUpdateforVoNR(Landroid/telephony/SignalStrength;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/MobileSignalController;J)J
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/CellSignalStrengthNr;)Landroid/telephony/CellSignalStrengthNr;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/TelephonyDisplayInfo;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCellSignalStrengthNrValid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mWwanAccessNetworkType:I

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mWwanAccessNetworkType:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/os/Handler;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsListening:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->onSimStateChanged()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->customizeIconsMap()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShowNrX:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShowNrX:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/MobileSignalController;J)J
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateActivityTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShowFakeIconSimLoaded:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/MobileSignalController;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setListeners()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->removeListeners()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)[Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLTEStatus:[Z

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/MobileSignalController;[Z)[Z
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLTEStatus:[Z

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/SignalStrength;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method private checkDefaultData()V
    .locals 3

    .line 1688
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-eq v1, v2, :cond_0

    .line 1689
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    return-void

    .line 1693
    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isDataControllerDisabled()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    return-void
.end method

.method private cleanLTEStatus()V
    .locals 1

    .line 2547
    sget-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_DEFAULT_STATUS:[Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLTEStatus:[Z

    .line 2548
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v0, "cleanLTEStatus"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private customizeIconsMap()V
    .locals 16

    move-object/from16 v0, p0

    .line 2751
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    return-void

    .line 2756
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccmnc:Ljava/lang/String;

    .line 2758
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsVisMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 2761
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showLTE()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isBouygues()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEESim()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isTurKeySim()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v2, v3

    .line 2762
    :cond_4
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " customizeIconsMap Mccmnc ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccmnc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " CustomizeForCarrierCard="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/16 v7, 0xa

    const/4 v8, 0x3

    const/16 v9, 0xf

    const/16 v10, 0xd

    const/16 v11, 0x13

    if-eqz v2, :cond_8

    .line 2769
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showLTE()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2770
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2771
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2773
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2777
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isBouygues()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2778
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2779
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2780
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2781
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2782
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2783
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2784
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2786
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2788
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2794
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEESim()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2795
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2797
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    :cond_7
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isTurKeySim()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2806
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_FIVE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2807
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_FIVE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v1, :cond_f

    .line 2816
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2817
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-eqz v1, :cond_9

    .line 2818
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2820
    :cond_9
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2822
    :goto_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2825
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2826
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2831
    :cond_a
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShow4GLTE()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2832
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2833
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2835
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2842
    :cond_b
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v1

    const/16 v2, 0x11

    const/16 v6, 0xe

    const/16 v12, 0xc

    const/4 v13, 0x6

    const/4 v14, 0x5

    if-eqz v1, :cond_c

    .line 2844
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v15

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2845
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2846
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2848
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2849
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/4 v9, 0x4

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2851
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/4 v9, 0x7

    invoke-direct {v0, v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2854
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v15, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2856
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2863
    :cond_c
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsVisMode()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2865
    :cond_d
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2866
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2867
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2868
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2869
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2870
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2871
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2872
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2873
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v3, 0xf

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2874
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2876
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v2, 0x12

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2881
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isTurKeySim()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2882
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_FIVE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2883
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_FIVE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private getAlternateLteLevel(Landroid/telephony/SignalStrength;)I
    .locals 3

    .line 1771
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1773
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    .line 1774
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1775
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlternateLteLevel lteRsrp:INVALID  signalStrengthLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1

    :cond_1
    const/16 p1, -0x2c

    const/4 v1, 0x0

    if-le v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, -0x61

    if-lt v0, p1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/16 p1, -0x69

    if-lt v0, p1, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    const/16 p1, -0x71

    if-lt v0, p1, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    const/16 p1, -0x78

    if-lt v0, p1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/16 p1, -0x8c

    .line 1788
    :goto_0
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz p1, :cond_7

    .line 1789
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlternateLteLevel lteRsrp:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rsrpLevel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1
.end method

.method private final getCdmaLevel()I
    .locals 2

    .line 1402
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-class v0, Landroid/telephony/CellSignalStrengthCdma;

    .line 1403
    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 1404
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1405
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method private getDataNetworkType()I
    .locals 2

    .line 1759
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1760
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1762
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsVisMode()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 1764
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mWwanAccessNetworkType:I

    :cond_3
    :goto_1
    return v0
.end method

.method private getDisableDataIcon()I
    .locals 3

    .line 2954
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v0

    .line 2955
    invoke-static {v0, v1}, Lcom/oneplus/signal/OpSignalIcons;->getNetworkClass(J)I

    move-result v0

    .line 2958
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->is5GConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2959
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getFiveGNetworkClass()I

    move-result v0

    .line 2962
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisableDataIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    invoke-static {v0}, Lcom/oneplus/signal/OpSignalIcons;->getDisableDataIcon(I)I

    move-result p0

    return p0
.end method

.method private getEnhancementDataRatIcon()I
    .locals 1

    .line 1935
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataRatIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1937
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1938
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object p0

    goto :goto_0

    .line 1940
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNetworkTypeIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object p0

    .line 1942
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private getFiveGNetworkClass()I
    .locals 2

    .line 2927
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getNrIconType()I

    move-result p0

    const/4 v0, 0x5

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v0
.end method

.method private getIconKey()Ljava/lang/String;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIdleDataIcon()I
    .locals 3

    .line 2914
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v0

    .line 2915
    invoke-static {v0, v1}, Lcom/oneplus/signal/OpSignalIcons;->getNetworkClass(J)I

    move-result v0

    .line 2917
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->is5GConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2918
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getFiveGNetworkClass()I

    move-result v0

    .line 2921
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIdleDataIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    invoke-static {v0}, Lcom/oneplus/signal/OpSignalIcons;->getIdleDataIcon(I)I

    move-result p0

    return p0
.end method

.method private getNetworkTypeIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 2

    .line 1906
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1917
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1911
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    if-nez v0, :cond_2

    .line 1913
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    .line 1915
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1920
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0
.end method

.method private getNrLevel()I
    .locals 0

    .line 1901
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getLevel()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getNumLevels()I
    .locals 0

    .line 853
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz p0, :cond_0

    .line 854
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 856
    :cond_0
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result p0

    return p0
.end method

.method private getUstCombinedServiceState(Landroid/telephony/ServiceState;)I
    .locals 1

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    .line 1655
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1656
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x2

    if-ne v0, p0, :cond_2

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method private getVoiceNetworkType()I
    .locals 0

    .line 1749
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    .line 1750
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getVoiceSignalLevel()I
    .locals 2

    .line 2582
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2591
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showStacked()Z

    move-result v0

    .line 2593
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSmoothSignalLevelAll()[I

    move-result-object p0

    aget p0, p0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    .line 2594
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    if-le p0, v0, :cond_2

    move p0, v0

    :cond_2
    return p0
.end method

.method private getVolteResId()I
    .locals 3

    .line 956
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    .line 957
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    if-nez v2, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    if-eqz v1, :cond_1

    .line 959
    sget p0, Lcom/android/systemui/R$drawable;->ic_volte:I

    goto :goto_0

    .line 960
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 961
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p0

    const/16 v1, 0x13

    if-ne p0, v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 963
    sget p0, Lcom/android/systemui/R$drawable;->ic_volte_no_voice:I

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getVowifiIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 1

    .line 1953
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVowifiAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1954
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->VOWIFI_CALLING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    .line 1955
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVowifiAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1956
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->VOWIFI:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private is5GConnected()Z
    .locals 2

    .line 1860
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1861
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v0, "mFiveGState is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1865
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isConnectedOnSaMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    .line 1867
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isConnectedOnNsaMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataRegisteredOnLteNr()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isBouygues()Z
    .locals 2

    .line 2709
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2712
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccmnc:Ljava/lang/String;

    const-string v0, "20820"

    .line 2713
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private isCallIdle()Z
    .locals 0

    .line 1745
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCarrierNetworkChangeActive()Z
    .locals 0

    .line 1282
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    return p0
.end method

.method private isCdma()Z
    .locals 0

    .line 1241
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCellSignalStrengthNrValid()Z
    .locals 0

    .line 1897
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCellularInService(Landroid/telephony/ServiceState;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1641
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getUstCombinedServiceState(Landroid/telephony/ServiceState;)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private isDataNetworkTypeAvailable()Z
    .locals 4

    .line 1719
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1722
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v0

    .line 1723
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    const/16 v3, 0xe

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v3, 0x13

    if-ne v0, v3, :cond_3

    :cond_1
    const/16 v3, 0x10

    if-eq v2, v3, :cond_2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1732
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallIdle()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 1735
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x12

    if-ne v0, v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private isDataRegisteredOnLteNr()Z
    .locals 1

    .line 1846
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

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

.method private isEESim()Z
    .locals 2

    .line 2722
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2725
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccmnc:Ljava/lang/String;

    const-string v0, "23430"

    .line 2726
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "23433"

    .line 2727
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isInService(Landroid/telephony/ServiceState;)Z
    .locals 3

    .line 1630
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x16a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1633
    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p0

    return p0

    .line 1631
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCellularInService(Landroid/telephony/ServiceState;)Z

    move-result p0

    return p0
.end method

.method private isRoaming()Z
    .locals 5

    .line 1250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_1

    return v1

    .line 1258
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isRoaming iconMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " EriIconIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1259
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isRoaming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1258
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_3
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1263
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 1267
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_8

    .line 1268
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaEriInformation()Landroid/telephony/CdmaEriInformation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CdmaEriInformation;->getEriIconMode()I

    move-result v0

    .line 1269
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCdmaEriInformation()Landroid/telephony/CdmaEriInformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CdmaEriInformation;->getEriIconIndex()I

    move-result v3

    if-eq v3, v2, :cond_7

    if-eqz v0, :cond_6

    if-ne v0, v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1274
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-eqz p0, :cond_7

    move v1, v2

    :cond_7
    return v1

    .line 1277
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    if-eqz p0, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method private isSideCarNsaValid()Z
    .locals 1

    .line 1892
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isNrIconTypeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataRegisteredOnLteNr()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSideCarSaValid()Z
    .locals 2

    .line 1882
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getNrConfigType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    .line 1883
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isNrIconTypeValid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSideCarValid()Z
    .locals 3

    .line 1874
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSideCarSaValid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarSaValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSideCarNsaValid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarNsaValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarSaValid()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarNsaValid()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isTurKeySim()Z
    .locals 2

    .line 2737
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2740
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccmnc:Ljava/lang/String;

    const-string v0, "28601"

    .line 2741
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "28602"

    .line 2742
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "28603"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isVirtualSim()Z
    .locals 1

    .line 2576
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    const-string v0, "ABSENT"

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVolteSwitchOn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isVowifiAvailable()Z
    .locals 2

    .line 1948
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    if-eqz v0, :cond_0

    .line 1949
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result p0

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mapIconSets()V
    .locals 0

    .line 608
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->opMapIconSets()V

    return-void
.end method

.method private mayNotifyListeners()V
    .locals 5

    .line 1046
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1047
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    .line 1048
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x3e8

    .line 1049
    iput v3, v2, Landroid/os/Message;->what:I

    .line 1051
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1053
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->MAX_NOTIFYLISTENER_INTERVAL:I

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    .line 1054
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1056
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private onSimStateChanged()V
    .locals 3

    .line 2665
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged, mCurrentState.simstate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "onSimStateChanged, MSG_START_SHOW_FAKE_ICON_TYPE_DELAYED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private opMapIconSets()V
    .locals 7

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 746
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 785
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 786
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 789
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v2, 0x13

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private queryImsState()V
    .locals 4

    .line 997
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 998
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    .line 999
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoTelephonyAvailable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    .line 1000
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    .line 1001
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryImsState tm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " phone="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " voiceCapable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " videoCapable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " imsResitered="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method private removeListeners()V
    .locals 5

    const-string v0, " from "

    .line 1011
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    const-string/jumbo v2, "slot:"

    if-nez v1, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " removeListeners mImsManager is null"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 1023
    :try_start_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsListening:Z

    .line 1025
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v1, v3}, Lcom/android/ims/ImsManager;->removeCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 1026
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v1, v3}, Lcom/android/ims/ImsManager;->removeRegistrationListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 1034
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " removeCapabilitiesCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " removeRegistrationCallback "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1040
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "unable to remove callback."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setListeners()V
    .locals 5

    const-string v0, " into "

    const-string/jumbo v1, "slot:"

    .line 969
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v2, :cond_0

    .line 970
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "setListeners mImsManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 976
    :try_start_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsListening:Z

    .line 978
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v2, v3}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 979
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v2, v3}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 986
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "addCapabilitiesCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "addRegistrationCallback "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 991
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "unable to addCapabilitiesCallback callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->queryImsState()V

    return-void
.end method

.method private shouldDelaySignalStrengthsUpdateforVoNR(Landroid/telephony/SignalStrength;)Z
    .locals 12

    .line 2025
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2026
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->is5GConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    const-string v5, "ABSENT"

    if-eq v4, v5, :cond_2

    .line 2028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2029
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateSignalStrengthTime:J

    sub-long v8, v4, v6

    cmp-long v6, v6, v2

    const/4 v7, 0x1

    const-wide/16 v10, 0x3e8

    if-nez v6, :cond_0

    .line 2032
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateSignalStrengthTime:J

    move v0, v7

    move-wide v2, v10

    goto :goto_0

    :cond_0
    cmp-long v4, v8, v10

    if-gez v4, :cond_1

    move v0, v7

    move-wide v2, v8

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 2042
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 2043
    iput v1, v4, Landroid/os/Message;->what:I

    .line 2044
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2045
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2046
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrengthsChanged delay "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms  update for VONR"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2050
    :cond_2
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateSignalStrengthTime:J

    :cond_3
    :goto_1
    return v0
.end method

.method private showDataConnectedIconForVzw()Z
    .locals 1

    .line 2948
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataIconForVzw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isWifiConnected:Z

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showDataIconForVzw()Z
    .locals 1

    .line 2943
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showDataRatIcon()Z
    .locals 1

    .line 1925
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->mobileDataEnabled:Z

    if-eqz v0, :cond_1

    .line 1926
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roamingDataEnabled:Z

    if-nez v0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showIdleDataIcon()Z
    .locals 2

    .line 2906
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataIconForVzw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isWifiConnected:Z

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-nez v0, :cond_2

    .line 2910
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showStacked()Z
    .locals 1

    .line 2892
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2893
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2895
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2898
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsVisMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private toDisplayIconKey(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xd

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string/jumbo p0, "unsupported"

    return-object p0

    :cond_0
    const-string p0, "5G_Plus"

    return-object p0

    :cond_1
    const-string p0, "5G"

    return-object p0

    .line 732
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_CA_Plus"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 730
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_CA"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toIconKey(I)Ljava/lang/String;
    .locals 0

    .line 724
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateDataSim()V
    .locals 3

    .line 1321
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getActiveDataSubId()I

    move-result v0

    .line 1322
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1323
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    goto :goto_1

    .line 1332
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    :goto_1
    return-void
.end method

.method private updateInflateSignalStrength()V
    .locals 0

    return-void
.end method

.method private updateLevelFromFiveGState()V
    .locals 3

    .line 1669
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getRsrp()I

    move-result v0

    const/16 v1, -0x8000

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-le v0, v1, :cond_1

    .line 1670
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLevelFromFiveGState 5g level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1677
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShowNrX:Z

    if-eqz v0, :cond_2

    .line 1678
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :cond_2
    return-void
.end method

.method private final updateTelephony()V
    .locals 13

    .line 1416
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1422
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " displayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1417
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->checkDefaultData()V

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v0, :cond_8

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    if-eqz v0, :cond_2

    .line 1435
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCdmaLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    goto/16 :goto_3

    .line 1439
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showStacked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSmoothSignalLevelAll()[I

    move-result-object v1

    aget v1, v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSmoothSignalLevel()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1441
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showRsrpSignalLevelforLTE:Z

    if-eqz v0, :cond_8

    .line 1442
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTelephony CS:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1445
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v5

    .line 1444
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", PS:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1446
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1448
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v4

    .line 1447
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1443
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    const/16 v4, 0x13

    if-ne v0, v4, :cond_5

    goto :goto_2

    :cond_5
    if-nez v0, :cond_8

    .line 1455
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    if-eq v0, v1, :cond_6

    if-ne v0, v4, :cond_8

    .line 1458
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAlternateLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    goto :goto_3

    .line 1453
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAlternateLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1465
    :cond_8
    :goto_3
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_9

    goto :goto_4

    :cond_9
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v5, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    :goto_4
    iput v5, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1470
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIconKey()Ljava/lang/String;

    move-result-object v0

    .line 1472
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 1473
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTelephony iconKey "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1479
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showStacked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1480
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    new-instance v12, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceSignalLevel()I

    move-result v8

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v9, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showLTE()Z

    move-result v11

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;IIIIZZ)V

    iput-object v12, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1481
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " showStacked dataType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " getCurrentPhoneType:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 1482
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " SubscriptionId:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1481
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1484
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_5

    .line 1488
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1491
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_11

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isNrIconTypeValid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1493
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1494
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 1495
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "get 5G SA icon from side-car"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNrLevel()I

    move-result v0

    .line 1499
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v1

    if-le v0, v1, :cond_10

    .line 1500
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1501
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "get 5G SA sinal strength from AOSP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1506
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateLevelFromFiveGState()V

    .line 1511
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 1512
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, "get 5G SA sinal strength from side-car"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_11
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarValid()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1522
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateLevelFromFiveGState()V

    goto :goto_7

    .line 1525
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showStacked()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_7

    .line 1529
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNetworkTypeIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1532
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v4, :cond_14

    goto :goto_8

    :cond_14
    move v2, v3

    :cond_15
    :goto_8
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v0

    .line 1539
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-eq v2, v0, :cond_16

    .line 1540
    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 1541
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->customizeIconsMap()V

    .line 1546
    :cond_16
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephony, isDataDisabled():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1550
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_9

    .line 1551
    :cond_18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-nez v0, :cond_1a

    .line 1553
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1556
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v1

    if-eq v0, v1, :cond_19

    .line 1557
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_9

    .line 1559
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1562
    :cond_1a
    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eq v0, v2, :cond_1b

    .line 1563
    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 1567
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1c

    .line 1568
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1569
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1572
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-eqz v1, :cond_1d

    .line 1574
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 1579
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    if-eqz v0, :cond_22

    .line 1580
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isSideCarValid()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1581
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_b

    .line 1583
    :cond_1e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showStacked()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_b

    .line 1600
    :cond_1f
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1601
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v1, :cond_21

    .line 1602
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataNetworkTypeAvailable()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1603
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIconKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1605
    :cond_20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->toIconKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1608
    :cond_21
    :goto_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1613
    :goto_b
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephony, alwaysShowNetworkTypeIcon iconGroup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->mobileDataEnabled:Z

    .line 1617
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataRoamingEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roamingDataEnabled:Z

    .line 1623
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mayNotifyListeners()V

    return-void
.end method


# virtual methods
.method protected cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    .locals 0

    .line 1237
    new-instance p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1964
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSignalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTelephonyDisplayInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDataState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInflateSignalStrengths="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isDataDisabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFiveGState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentIconId()I
    .locals 4

    .line 861
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v0, v1, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->getCarrierChangeState(I)I

    move-result p0

    return p0

    .line 865
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVirtualSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getOneplusVirtualSimSignalIconId(I)I

    move-result p0

    return p0

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showStacked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 873
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isRemoveRoamingIcon()Z

    move-result v0

    if-nez v0, :cond_2

    .line 875
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getOneplusRoamingSignalIconId(I)I

    move-result p0

    return p0

    .line 878
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v1, :cond_8

    .line 881
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->is5GConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 883
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->is5GConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getRsrp()I

    move-result v1

    const/16 v2, -0x8000

    if-ne v1, v2, :cond_4

    .line 884
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 888
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 892
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 893
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentIconId level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 5GState level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Current level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    if-eqz v1, :cond_7

    .line 910
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSingleSignalIcon:I

    return p0

    .line 912
    :cond_7
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    aget-object p0, v1, p0

    aget p0, p0, v0

    return p0

    .line 915
    :cond_8
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz p0, :cond_9

    .line 918
    sget p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultDataSubId()I
    .locals 1

    .line 2676
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result p0

    .line 2677
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const p0, 0x7fffffff

    :cond_0
    return p0
.end method

.method public getLTEStatus()[Z
    .locals 0

    .line 2543
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLTEStatus:[Z

    return-object p0
.end method

.method public getQsCurrentIconId()I
    .locals 0

    .line 942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result p0

    return p0
.end method

.method public getSimSlotIndex()I
    .locals 3

    .line 2555
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 2556
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2558
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimSlotIndex, slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public getSubId()I
    .locals 3

    .line 2685
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 2686
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2688
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubId, subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 8

    .line 1286
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    .line 1287
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "android.telephony.extra.SHOW_SPN"

    const/4 v1, 0x0

    .line 1288
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "android.telephony.extra.SPN"

    .line 1289
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "android.telephony.extra.DATA_SPN"

    .line 1290
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "android.telephony.extra.SHOW_PLMN"

    .line 1291
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "android.telephony.extra.PLMN"

    .line 1292
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 1288
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1297
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mayNotifyListeners()V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 1299
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 1305
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mayNotifyListeners()V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    .line 1307
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "apnType"

    .line 1308
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    .line 1309
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mms"

    .line 1310
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1311
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBroadcast MMS connection state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1315
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    :cond_3
    :goto_0
    return-void
.end method

.method isDataDisabled()Z
    .locals 2

    .line 1707
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1711
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p0

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

.method public isEmergencyOnly()Z
    .locals 0

    .line 1245
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1064
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mListening:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDemoMode:Z

    if-nez v1, :cond_0

    .line 1065
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v1, " Controller already unregister listener, don\'t notify change"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1070
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->isTargetProduct(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShowFakeIconSimLoaded:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1071
    :goto_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyListeners, showSimLoadedFakeIcon :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 1073
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v2, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1076
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1077
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-eq v6, v7, :cond_3

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v5, v6, :cond_4

    :cond_3
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v3

    .line 1081
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1082
    iget v7, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1088
    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1087
    invoke-static {v7, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v7

    .line 1088
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1089
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    if-nez v8, :cond_5

    .line 1090
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_5
    move-object/from16 v18, v7

    .line 1094
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-nez v7, :cond_7

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v7, v3

    goto :goto_3

    :cond_7
    :goto_2
    move v7, v2

    .line 1095
    :goto_3
    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v10, v9

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v10, :cond_8

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-nez v9, :cond_8

    move v9, v2

    goto :goto_4

    :cond_8
    move v9, v3

    .line 1100
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v10

    invoke-direct {v8, v9, v10, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1107
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v10, v9

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez v10, :cond_a

    if-nez v5, :cond_a

    move-object v10, v9

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->smartlinkEnable:Z

    if-nez v10, :cond_a

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->fakePSIcon:Z

    if-nez v9, :cond_a

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move v1, v3

    goto :goto_6

    :cond_a
    :goto_5
    move v1, v2

    :goto_6
    and-int/2addr v1, v7

    if-eqz v1, :cond_b

    if-eqz v5, :cond_b

    .line 1112
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/util/OpUtils;->isSupportShowDisabledIcon(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_b

    move v1, v3

    .line 1118
    :cond_b
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v9, v7

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v9, :cond_d

    move-object v9, v7

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez v9, :cond_c

    move-object v9, v7

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->smartlinkEnable:Z

    if-nez v9, :cond_c

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->fakePSIcon:Z

    if-eqz v7, :cond_d

    :cond_c
    move v7, v2

    goto :goto_7

    :cond_d
    move v7, v3

    .line 1128
    :goto_7
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_12

    if-nez v1, :cond_f

    .line 1129
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-eqz v9, :cond_e

    goto :goto_8

    :cond_e
    move v9, v3

    goto :goto_9

    :cond_f
    :goto_8
    iget v9, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    .line 1130
    :goto_9
    new-instance v11, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v13, v12

    check-cast v13, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v13, v13, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v13, :cond_10

    check-cast v12, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-nez v12, :cond_10

    move v12, v2

    goto :goto_a

    :cond_10
    move v12, v3

    .line 1131
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getQsCurrentIconId()I

    move-result v13

    invoke-direct {v11, v12, v13, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 1132
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v12, v6

    check-cast v12, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v12, :cond_11

    goto :goto_b

    :cond_11
    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v10, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    :goto_b
    move v12, v9

    move-object/from16 v20, v10

    move-object v10, v11

    goto :goto_c

    :cond_12
    move v12, v3

    move-object/from16 v20, v10

    .line 1134
    :goto_c
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v9, v6

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v9, :cond_13

    move-object v9, v6

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-nez v9, :cond_13

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v6, :cond_13

    move v13, v2

    goto :goto_d

    :cond_13
    move v13, v3

    .line 1137
    :goto_d
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v9, v6

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v9, :cond_14

    move-object v9, v6

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-nez v9, :cond_14

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v6, :cond_14

    move v14, v2

    goto :goto_e

    :cond_14
    move v14, v3

    :goto_e
    if-nez v1, :cond_16

    .line 1145
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v9, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-nez v9, :cond_16

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    if-eqz v6, :cond_15

    goto :goto_f

    :cond_15
    move v6, v3

    goto :goto_10

    .line 1146
    :cond_16
    :goto_f
    iget v6, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 1147
    :goto_10
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->enableRatIconEnhancement:Z

    if-eqz v9, :cond_17

    .line 1148
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getEnhancementDataRatIcon()I

    move-result v6

    .line 1153
    :cond_17
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v9

    if-nez v9, :cond_18

    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsVisMode()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 1154
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataIconForVzw()Z

    move-result v1

    if-eqz v5, :cond_19

    .line 1157
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDisableDataIcon()I

    move-result v5

    :goto_11
    move v6, v5

    goto :goto_13

    .line 1158
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showIdleDataIcon()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIdleDataIcon()I

    move-result v5

    goto :goto_11

    :cond_1a
    if-nez v1, :cond_1c

    .line 1159
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v6, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-nez v6, :cond_1c

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    if-nez v5, :cond_1c

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    .line 1161
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isConnectedOnSaMode()Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_12

    :cond_1b
    move v6, v3

    goto :goto_13

    :cond_1c
    :goto_12
    iget v5, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    goto :goto_11

    .line 1163
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataConnectedIconForVzw()Z

    move-result v5

    if-eqz v5, :cond_1d

    if-lez v6, :cond_1d

    move v7, v2

    goto :goto_14

    :cond_1d
    move v7, v3

    .line 1170
    :cond_1e
    :goto_14
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVolteIcon:Z

    if-eqz v5, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVolteSwitchOn()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVolteResId()I

    move-result v3

    .line 1171
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVowifiIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v5

    .line 1172
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVowifiIcon:Z

    if-eqz v9, :cond_21

    if-eqz v5, :cond_21

    .line 1173
    iget v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 1174
    new-instance v6, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 1175
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v11, v9

    check-cast v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v11, v11, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v11, :cond_20

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-nez v9, :cond_20

    iget v9, v8, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    goto :goto_15

    :cond_20
    const/4 v9, -0x1

    :goto_15
    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    invoke-direct {v6, v2, v9, v8}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    move v11, v5

    move-object v9, v6

    goto :goto_16

    :cond_21
    move v11, v6

    move-object v9, v8

    .line 1178
    :goto_16
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v2, :cond_22

    .line 1179
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyListeners mConfig.alwaysShowNetworkTypeIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  getNetworkType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 1180
    invoke-virtual {v6}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 1181
    invoke-virtual {v8}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " voiceNetType="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " showDataIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mConfig.alwaysShowDataRatIcon="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " icons.mDataType="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mConfig.showVolteIcon="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVolteIcon:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isVolteSwitchOn="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVolteSwitchOn()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " volteIcon="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSubscriptionInfo.getSubscriptionId():"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 1191
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentState.roaming:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " showDataConnectedIcon:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isUST:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUST()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isUSS:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isUsvMode:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isUsvisMode:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsVisMode()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isInService:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1200
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " is5GConnected:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->is5GConnected()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " phoneId:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isWifiConnected:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isWifiConnected:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " showIdleDataIcon:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showIdleDataIcon()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " showDataConnectedIconForVzw:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataConnectedIconForVzw()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " showDataIconForVzw:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataIconForVzw()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1179
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v15, 0x0

    .line 1225
    iget-object v1, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedDataIcon:[I

    move-object/from16 v16, v1

    iget-object v1, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedVoiceIcon:[I

    move-object/from16 v17, v1

    iget-boolean v1, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    move/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 1230
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v22

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    move/from16 v23, v0

    move-object/from16 v8, p1

    move/from16 v24, v7

    .line 1225
    invoke-interface/range {v8 .. v24}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZI[I[ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    return-void
.end method

.method onMobileDataChanged()V
    .locals 0

    .line 1697
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->checkDefaultData()V

    .line 1698
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public registerFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 2

    .line 1818
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 1819
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGStateListener:Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->registerListener(ILcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;)V

    .line 1820
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    return-void
.end method

.method public registerListener()V
    .locals 6

    const/4 v0, 0x1

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v3, 0x5101e1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 481
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOpPhoneStateListener:Landroid/telephony/OpPhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/OpPhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 484
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 492
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 494
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.oem.intent.action.UST_5GX_ICON"

    .line 498
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOPMoblileReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 507
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 508
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 516
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mListening:Z

    .line 520
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 522
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 523
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 525
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 527
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 528
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "org.codeaurora.intent.action.ACTION_ENHANCE_4G_SWITCH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 535
    new-instance v1, Lcom/android/ims/FeatureConnector;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)V

    const-string v4, "?"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/ims/FeatureConnector;-><init>(Landroid/content/Context;ILcom/android/ims/FeatureConnector$Listener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    .line 555
    invoke-virtual {v1}, Lcom/android/ims/FeatureConnector;->connect()V

    return-void
.end method

.method setActivity(I)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1796
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    .line 1798
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    .line 1804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1805
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastUpdateActivityTime:J

    sub-long/2addr v0, v2

    .line 1806
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x66

    .line 1807
    iput v2, p1, Landroid/os/Message;->what:I

    .line 1808
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    .line 1810
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    sub-long/2addr v2, v0

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1812
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mayNotifyListeners()V

    return-void
.end method

.method public setCarrierNetworkChangeMode(Z)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 463
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateInflateSignalStrength()V

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->customizeIconsMap()V

    .line 406
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setFakePSIconEnable(Z)V
    .locals 3

    .line 2979
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->fakePSIcon:Z

    .line 2980
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2981
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFakePSIconEnable: fakePSIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2981
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setSmartlinkEnable(Z)V
    .locals 3

    .line 2969
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->smartlinkEnable:Z

    .line 2970
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2971
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartLinkEnable: smartlinkEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2972
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2971
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mayNotifyListeners()V

    return-void
.end method

.method public setVirtualSimstate([I)V
    .locals 2

    .line 2566
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    .line 2567
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_1

    .line 2568
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    aget p1, p1, v0

    sget v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_DISABLE:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    .line 2569
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    :cond_1
    return-void
.end method

.method public showLTE()Z
    .locals 4

    .line 2696
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2699
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccmnc:Ljava/lang/String;

    move v0, v1

    .line 2700
    :goto_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->SHOW_LTE_OPERATORS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 2701
    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public unregisterFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    .line 1824
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    .line 1825
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->unregisterListener(I)V

    return-void
.end method

.method public unregisterListener()V
    .locals 4

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener mListening: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mListening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " FeatureConnector exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mListening:Z

    if-eqz v0, :cond_3

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOpPhoneStateListener:Landroid/telephony/OpPhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/OpPhoneStateListener;I)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->disconnect()V

    .line 579
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->removeListeners()V

    :cond_1
    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mOPMoblileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 590
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanLTEStatus()V

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v0, :cond_2

    .line 592
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onLTEStatusUpdate()V

    goto :goto_1

    .line 594
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "unregisterListener mNetworkController is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 4

    .line 431
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isWifiConnected:Z

    .line 440
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSubId()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    .line 442
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->isGlobalROM(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    if-eqz v0, :cond_3

    .line 444
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-nez p2, :cond_2

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    goto :goto_2

    .line 446
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput v1, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    .line 457
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mayNotifyListeners()V

    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .line 1341
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNetworkName showSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " showPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierLabel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 1349
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p4, ")"

    const-string p5, "("

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1356
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1360
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1365
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_5

    .line 1370
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_1

    .line 1372
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_8

    if-eqz p3, :cond_8

    .line 1377
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_6

    .line 1378
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1382
    :cond_6
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_7

    .line 1387
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :cond_7
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_9

    .line 1392
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_3

    .line 1394
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    :goto_3
    return-void
.end method
