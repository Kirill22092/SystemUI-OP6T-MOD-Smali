.class public Lcom/oneplus/volume/OpOutputChooser;
.super Ljava/lang/Object;
.source "OpOutputChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;,
        Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final mErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothCallbackHandler:Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;

.field protected final mConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHeadSetString:Ljava/lang/String;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mOutputChooserCallback:Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;

.field protected mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSpeakerString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/volume/OpOutputChooser;->DEBUG:Z

    .line 201
    new-instance v0, Lcom/oneplus/volume/OpOutputChooser$1;

    invoke-direct {v0}, Lcom/oneplus/volume/OpOutputChooser$1;-><init>()V

    sput-object v0, Lcom/oneplus/volume/OpOutputChooser;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    .line 209
    new-instance v0, Lcom/oneplus/volume/OpOutputChooser$2;

    invoke-direct {v0}, Lcom/oneplus/volume/OpOutputChooser$2;-><init>()V

    sput-object v0, Lcom/oneplus/volume/OpOutputChooser;->mErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mConnectedDevices:Ljava/util/List;

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mHeadSetString:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mSpeakerString:Ljava/lang/String;

    .line 262
    new-instance v1, Lcom/oneplus/volume/OpOutputChooser$3;

    invoke-direct {v1, p0}, Lcom/oneplus/volume/OpOutputChooser$3;-><init>(Lcom/oneplus/volume/OpOutputChooser;)V

    iput-object v1, p0, Lcom/oneplus/volume/OpOutputChooser;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "OpOutputChooser"

    const-string v2, "new OpOutputChooser"

    .line 149
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mContext:Landroid/content/Context;

    .line 151
    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$string;->quick_settings_footer_audio_headset:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mHeadSetString:Ljava/lang/String;

    .line 152
    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$string;->quick_settings_footer_audio_speaker:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mSpeakerString:Ljava/lang/String;

    .line 154
    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mAudioManager:Landroid/media/AudioManager;

    .line 157
    new-instance p1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/oneplus/volume/-$$Lambda$OpOutputChooser$cO6gGwOhaEUTIDCM4wwaNtdbqS4;

    invoke-direct {v2, p0}, Lcom/oneplus/volume/-$$Lambda$OpOutputChooser$cO6gGwOhaEUTIDCM4wwaNtdbqS4;-><init>(Lcom/oneplus/volume/OpOutputChooser;)V

    invoke-direct {p1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 161
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 162
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "Error getting LocalBluetoothManager."

    .line 164
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :goto_0
    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    const-string p1, "Bluetooth is not supported on this device"

    .line 167
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 171
    :goto_1
    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_1

    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooser;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 175
    new-instance p1, Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;-><init>(Lcom/oneplus/volume/OpOutputChooser;Lcom/oneplus/volume/OpOutputChooser$1;)V

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mBluetoothCallbackHandler:Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;

    .line 176
    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mBluetoothCallbackHandler:Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 179
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 103
    sget-boolean v0, Lcom/oneplus/volume/OpOutputChooser;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/volume/OpOutputChooser;Z)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/oneplus/volume/OpOutputChooser;->updateItems(Z)V

    return-void
.end method

.method private getIconResId(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 383
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_connected:I

    goto :goto_0

    .line 380
    :cond_1
    sget p0, Lcom/android/systemui/R$drawable;->ic_output_chooser_headset:I

    goto :goto_0

    .line 377
    :cond_2
    sget p0, Lcom/android/systemui/R$drawable;->ic_output_chooser_phone:I

    :goto_0
    return p0
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 198
    const-class p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method private updateItems(Z)V
    .locals 0

    const/4 p1, 0x3

    .line 370
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpOutputChooser;->findActiveDevice(I)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;)V
    .locals 2

    const-string v0, "OpOutputChooser"

    const-string v1, "OutputChooserCallback, addCallback"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mOutputChooserCallback:Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;

    const/4 p1, 0x3

    .line 137
    invoke-virtual {p0, p1}, Lcom/oneplus/volume/OpOutputChooser;->findActiveDevice(I)V

    return-void
.end method

.method public destory()V
    .locals 2

    const-string v0, "OpOutputChooser"

    const-string v1, "destory OpOutputChooser"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/volume/OpOutputChooser;->mBluetoothCallbackHandler:Lcom/oneplus/volume/OpOutputChooser$BluetoothCallbackHandler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected findActiveDevice(I)V
    .locals 8

    const/4 v0, 0x3

    const-string v1, "OpOutputChooser"

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 306
    sget-boolean p0, Lcom/oneplus/volume/OpOutputChooser;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "!= STREAM_MUSIC && != STREAM_VOICE_CALL"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0x380

    .line 310
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/volume/OpOutputChooser;->isStreamFromOutputDevice(II)Z

    move-result v2

    const/4 v3, 0x2

    const-string v4, ""

    const-string v5, " type:"

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 311
    iget-object p1, p0, Lcom/oneplus/volume/OpOutputChooser;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StreamFrom output DEVICE_OUT_ALL_A2DP:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getName:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " getAddress:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " getAlias:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " getAliasName:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x70

    .line 325
    invoke-virtual {p0, v6, v0}, Lcom/oneplus/volume/OpOutputChooser;->isStreamFromOutputDevice(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StreamFrom output DEVICE_OUT_ALL_SCO:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v4

    goto :goto_1

    :cond_3
    const/high16 v0, 0x8000000

    .line 330
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/volume/OpOutputChooser;->isStreamFromOutputDevice(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 335
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_4

    .line 337
    iget-object v3, p0, Lcom/oneplus/volume/OpOutputChooser;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StreamFrom output DEVICE_OUT_HEARING_AID:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move-object p1, v4

    move v3, v6

    :goto_1
    if-nez v3, :cond_7

    const-string v0, "StreamFrom no active device"

    .line 348
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 350
    iget-object v4, p0, Lcom/oneplus/volume/OpOutputChooser;->mHeadSetString:Ljava/lang/String;

    const/4 v6, 0x1

    goto :goto_2

    .line 353
    :cond_6
    iget-object v4, p0, Lcom/oneplus/volume/OpOutputChooser;->mSpeakerString:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move v6, v3

    .line 359
    :goto_2
    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mOutputChooserCallback:Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;

    if-eqz v0, :cond_8

    .line 360
    invoke-direct {p0, v6}, Lcom/oneplus/volume/OpOutputChooser;->getIconResId(I)I

    move-result p0

    invoke-virtual {v0, v6, p0, v4, p1}, Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;->onOutputChooserNotifyActiveDeviceChange(IILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method protected isStreamFromOutputDevice(II)Z
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooser;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result p0

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$OpOutputChooser()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooser;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/volume/OpOutputChooser;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method public removeCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/oneplus/volume/OpOutputChooser;->mOutputChooserCallback:Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;

    return-void
.end method
