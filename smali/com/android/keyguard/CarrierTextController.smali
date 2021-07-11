.class public Lcom/android/keyguard/CarrierTextController;
.super Lcom/oneplus/keyguard/OpCarrierTextController;
.source "CarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;,
        Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;,
        Lcom/android/keyguard/CarrierTextController$Builder;,
        Lcom/android/keyguard/CarrierTextController$StatusMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mActiveMobileDataSubscription:I

.field private final mBgHandler:Landroid/os/Handler;

.field protected final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

.field private mContext:Landroid/content/Context;

.field private mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSeparator:Ljava/lang/CharSequence;

.field private mShowAirplaneMode:Z

.field private mShowMissingSim:Z

.field private mSimErrorState:[Z

.field private final mSimSlotsNumber:I

.field private mTelephonyCapable:Z

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/keyguard/CarrierTextController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 1

    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/keyguard/OpCarrierTextController;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    new-instance v0, Lcom/android/keyguard/CarrierTextController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$1;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 112
    new-instance v0, Lcom/android/keyguard/CarrierTextController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$2;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 152
    new-instance v0, Lcom/android/keyguard/CarrierTextController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$3;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 189
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    .line 190
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 192
    iput-boolean p3, p0, Lcom/android/keyguard/CarrierTextController;->mShowAirplaneMode:Z

    .line 193
    iput-boolean p4, p0, Lcom/android/keyguard/CarrierTextController;->mShowMissingSim:Z

    const-string/jumbo p3, "wifi"

    .line 195
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 196
    iput-object p2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    .line 197
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 202
    invoke-static {}, Lcom/oneplus/util/OpUtils;->getSimCount()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    .line 204
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    .line 205
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    .line 206
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mBgHandler:Landroid/os/Handler;

    .line 207
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 208
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mBgHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/keyguard/-$$Lambda$CarrierTextController$LDahO04Jhi3ephJWS_by3x0LKJY;

    invoke-direct {p2, p0}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$LDahO04Jhi3ephJWS_by3x0LKJY;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CarrierTextController;)Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/android/keyguard/CarrierTextController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/CarrierTextController;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/keyguard/CarrierTextController;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/CarrierTextController;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/CarrierTextController;I)Lcom/android/keyguard/CarrierTextController$StatusMode;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->getStatusForIccState(I)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/CarrierTextController;)[Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/keyguard/CarrierTextController;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/keyguard/CarrierTextController;->mActiveMobileDataSubscription:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/CarrierTextController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 623
    invoke-static {p0, p1, p2}, Lcom/oneplus/keyguard/OpCarrierTextController;->opConcatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private get5GNetworkClass(Landroid/telephony/SubscriptionInfo;I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    .line 864
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->data_connection_5g:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 867
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p2

    .line 868
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 870
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    if-nez v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 872
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 874
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 875
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p2

    .line 876
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isNrIconTypeValid()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->isDataRegisteredOnLte(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 877
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->data_connection_5g:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAirplaneModeMessage()Ljava/lang/String;
    .locals 1

    .line 482
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mShowAirplaneMode:Z

    if-eqz v0, :cond_0

    .line 483
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->airplane_mode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 494
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->getStatusForIccState(I)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p1

    .line 495
    sget-object v0, Lcom/android/keyguard/CarrierTextController$4;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object p2, v0

    goto :goto_0

    .line 538
    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_error_message_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 537
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 533
    :pswitch_2
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_puk_locked_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 532
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 527
    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_locked_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 526
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 516
    :pswitch_4
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_permanent_disabled_sim_message_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 515
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 506
    :pswitch_5
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->keyguard_network_locked_message:I

    .line 507
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :pswitch_6
    const-string p2, ""

    :goto_0
    :pswitch_7
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getCustomizeCarrierName(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1

    .line 774
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/CarrierTextController;->getNetworkType(I)I

    move-result v0

    .line 775
    invoke-direct {p0, v0}, Lcom/android/keyguard/CarrierTextController;->networkTypeToString(I)Ljava/lang/String;

    .line 777
    invoke-direct {p0, p2, v0}, Lcom/android/keyguard/CarrierTextController;->get5GNetworkClass(Landroid/telephony/SubscriptionInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 784
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/keyguard/OpCarrierTextController;->opGetCustomizeCarrierName(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMissingSimMessage()Ljava/lang/String;
    .locals 1

    .line 477
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mShowMissingSim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    if-eqz v0, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getNetworkType(I)I
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ServiceState;

    if-eqz p0, :cond_1

    .line 814
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-eqz p1, :cond_0

    .line 815
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p1

    if-nez p1, :cond_1

    .line 816
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p1

    if-nez p1, :cond_2

    .line 818
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1
.end method

.method private getStatusForIccState(I)Lcom/android/keyguard/CarrierTextController$StatusMode;
    .locals 1

    .line 589
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 590
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-eq p1, v0, :cond_1

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 p1, 0x4

    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 616
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 614
    :pswitch_0
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 610
    :pswitch_1
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 602
    :pswitch_2
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 608
    :pswitch_3
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 600
    :pswitch_4
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 606
    :pswitch_5
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 604
    :pswitch_6
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 598
    :pswitch_7
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 612
    :pswitch_8
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 220
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private handleSetListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 2

    .line 277
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 279
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    .line 280
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$Q9wwkxQ080xCMh0FoQlLdgAfhSI;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$Q9wwkxQ080xCMh0FoQlLdgAfhSI;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 284
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 p1, 0x400000

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$oi57qYsuU97hQX_k3GdwhheueLc;

    invoke-direct {v0, p1}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$oi57qYsuU97hQX_k3GdwhheueLc;-><init>(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    .line 294
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$DU9JkyLlu7BQSyhrdUqIiohEMiE;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$DU9JkyLlu7BQSyhrdUqIiohEMiE;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 296
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_0
    return-void
.end method

.method private isDataRegisteredOnLte(I)Z
    .locals 1

    .line 884
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 885
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 886
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result p0

    const/16 p1, 0xd

    if-eq p0, p1, :cond_1

    const/16 p1, 0x13

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 644
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 646
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 648
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 649
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 650
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 652
    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleSetListening$1()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic lambda$handleSetListening$2(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 4

    .line 288
    new-instance v0, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;-><init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[I)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method

.method private synthetic lambda$handleSetListening$3()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    invoke-direct {p0, v0}, Lcom/android/keyguard/CarrierTextController;->handleSetListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$postToCallback$5(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 0

    .line 468
    invoke-interface {p0, p1}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method

.method private synthetic lambda$setListening$4(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 0

    .line 307
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->handleSetListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    return-void
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 556
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/keyguard/OpCarrierTextController;->opMakeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 571
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 572
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 574
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->keyguard_carrier_name_with_sim_locked_template:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    return-object p2

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private networkTypeToString(I)Ljava/lang/String;
    .locals 7

    .line 825
    sget v0, Lcom/android/systemui/R$string;->config_rat_unknown:I

    .line 826
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v1

    const-wide/32 v3, 0x804b

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_0

    .line 828
    sget v0, Lcom/android/systemui/R$string;->config_rat_2g:I

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x16bb4

    and-long/2addr v3, v1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    .line 830
    sget v0, Lcom/android/systemui/R$string;->config_rat_3g:I

    goto :goto_0

    :cond_1
    const-wide/32 v3, 0x61000

    and-long/2addr v1, v3

    cmp-long p1, v1, v5

    if-eqz p1, :cond_2

    .line 832
    sget v0, Lcom/android/systemui/R$string;->config_rat_4g:I

    .line 834
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IZ)Ljava/lang/CharSequence;
    .locals 5

    const/16 v0, 0x8

    const-string v1, ""

    .line 235
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/CarrierTextController;->getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 238
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 239
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x10402e2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    .line 245
    invoke-static {v0, p1, p0}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 249
    :cond_1
    aget v2, p3, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 250
    aget v2, p3, v1

    .line 252
    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_1

    .line 257
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method protected getSubscriptionInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFilteredSubscriptionInfo(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$handleSetListening$1$CarrierTextController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->lambda$handleSetListening$1()V

    return-void
.end method

.method public synthetic lambda$handleSetListening$3$CarrierTextController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->lambda$handleSetListening$3()V

    return-void
.end method

.method public synthetic lambda$new$0$CarrierTextController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$setListening$4$CarrierTextController(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->lambda$setListening$4(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    return-void
.end method

.method protected postToCallback(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    if-eqz v0, :cond_0

    .line 468
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$5nEYjT7ZyAro48Qi-bsR2yyNFwM;

    invoke-direct {v1, v0, p1}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$5nEYjT7ZyAro48Qi-bsR2yyNFwM;-><init>(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$C6go0e-jA3BYgQhMyia20ELR8OQ;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$C6go0e-jA3BYgQhMyia20ELR8OQ;-><init>(Lcom/android/keyguard/CarrierTextController;Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCarrierText()V
    .locals 17

    move-object/from16 v0, p0

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$bool;->config_show_customize_carrier_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getSubscriptionInfo()Ljava/util/List;

    move-result-object v1

    .line 333
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 334
    new-array v7, v2, [I

    .line 342
    iget v3, v0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    new-array v3, v3, [I

    const/4 v5, 0x0

    .line 343
    :goto_0
    iget v6, v0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    if-ge v5, v6, :cond_0

    const/4 v6, -0x1

    .line 344
    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 346
    :cond_0
    new-array v5, v2, [Ljava/lang/CharSequence;

    .line 352
    sget-boolean v6, Lcom/android/keyguard/CarrierTextController;->DEBUG:Z

    const-string v8, "CarrierTextController"

    const/4 v9, 0x1

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateCarrierText() showCustomizeName: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " numSubs: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v10, v9

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_1
    const-string v12, ""

    if-ge v6, v2, :cond_7

    .line 357
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    .line 358
    aput-object v12, v5, v6

    .line 359
    aput v13, v7, v6

    .line 360
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v12}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v12

    aput v6, v3, v12

    .line 361
    iget-object v12, v0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12, v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v12

    .line 362
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v14

    .line 367
    invoke-virtual {v0, v13, v14}, Lcom/oneplus/keyguard/OpCarrierTextController;->opGetCarrierName(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 372
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/SubscriptionInfo;

    invoke-direct {v0, v14, v15}, Lcom/android/keyguard/CarrierTextController;->getCustomizeCarrierName(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v14

    .line 374
    invoke-direct {v0, v12, v14}, Lcom/android/keyguard/CarrierTextController;->getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 375
    sget-boolean v16, Lcom/android/keyguard/CarrierTextController;->DEBUG:Z

    if-eqz v16, :cond_2

    .line 376
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling (subId="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mccmnc="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->isDTMccMnc(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v15, :cond_3

    .line 380
    aput-object v15, v5, v6

    const/4 v10, 0x0

    :cond_3
    const/4 v4, 0x5

    if-ne v12, v4, :cond_6

    .line 383
    iget-object v4, v0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/util/OpUtils;->isDTMccMnc(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 385
    iget-object v4, v0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ServiceState;

    if-eqz v4, :cond_6

    .line 386
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v9

    if-nez v9, :cond_6

    .line 389
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v9

    const/16 v12, 0x12

    if-ne v9, v12, :cond_4

    iget-object v9, v0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 390
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 391
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 392
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 393
    :cond_4
    sget-boolean v9, Lcom/android/keyguard/CarrierTextController;->DEBUG:Z

    if-eqz v9, :cond_5

    .line 394
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM ready and in service: subId="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", ss="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v11, 0x1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    if-eqz v10, :cond_8

    if-nez v11, :cond_8

    if-eqz v2, :cond_9

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 411
    invoke-direct {v0, v2, v1}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 419
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Landroid/content/IntentFilter;

    const-string v9, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-direct {v6, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v1, "android.telephony.extra.SHOW_SPN"

    const/4 v6, 0x0

    .line 425
    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "android.telephony.extra.SPN"

    .line 426
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_a
    move-object v1, v12

    :goto_2
    const-string v4, "android.telephony.extra.SHOW_PLMN"

    .line 428
    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "android.telephony.extra.PLMN"

    .line 429
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 431
    :cond_b
    sget-boolean v2, Lcom/android/keyguard/CarrierTextController;->DEBUG:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting plmn/spn sticky brdcst "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_c
    invoke-static {v12, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v1, v12

    goto :goto_3

    .line 435
    :cond_d
    iget-object v2, v0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v12, v1, v2}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3

    :cond_e
    const/4 v6, 0x0

    .line 438
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 442
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v1, v5}, Lcom/android/keyguard/CarrierTextController;->joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 444
    :cond_f
    invoke-direct {v0, v4, v5, v3, v10}, Lcom/android/keyguard/CarrierTextController;->updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IZ)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v11, :cond_10

    .line 450
    iget-object v2, v0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 451
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getAirplaneModeMessage()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    const/4 v8, 0x1

    goto :goto_5

    :cond_10
    move-object v4, v1

    move v8, v6

    .line 455
    :goto_5
    new-instance v1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    const/4 v2, 0x1

    xor-int/lit8 v6, v10, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;-><init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[IZ)V

    .line 461
    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierTextController;->postToCallback(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method
