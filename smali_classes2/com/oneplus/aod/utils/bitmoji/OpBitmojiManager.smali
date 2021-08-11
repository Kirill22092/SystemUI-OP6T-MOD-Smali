.class public Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;
.super Lcom/android/systemui/SystemUI;
.source "OpBitmojiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;
    }
.end annotation


# static fields
.field private static final CASUAL_TRIGGERS_ID:[Ljava/lang/String;

.field private static final USER_TRIGGERS_ID:[Ljava/lang/String;


# instance fields
.field private mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

.field private mHandler:Landroid/os/Handler;

.field private mLastPackId:Ljava/lang/String;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMdmLogger:Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

.field private mTriggers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "time"

    const-string v1, "date"

    const-string v2, "weather"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->CASUAL_TRIGGERS_ID:[Ljava/lang/String;

    const-string v1, "battery"

    const-string v2, "gaming"

    const-string v3, "music"

    const-string v4, "video"

    const-string v5, "camera"

    const-string v6, "messaging"

    const-string v7, "tgif"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->USER_TRIGGERS_ID:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$1;-><init>(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->init(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mMdmLogger:Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->onOwnerClockChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onUserUnlocked()V

    return-void
.end method

.method private canKickOut(Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;)Z
    .locals 0

    instance-of p0, p1, Lcom/oneplus/aod/utils/bitmoji/triggers/MusicTrigger;

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    instance-of p0, p2, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;->isActiveInner()Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    :cond_0
    return p1
.end method

.method private computeCurrentTrigger(Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;)V
    .locals 7

    sget-object v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->CASUAL_TRIGGERS_ID:[Ljava/lang/String;

    sget-object v1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->USER_TRIGGERS_ID:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, "OpBitmojiManager"

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eq v5, p1, :cond_1

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "some user trigger event still active"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v5, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/Date;->getSeconds()I

    move-result p1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr v1, p1

    sget p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->IMAGE_PER_TIME:I

    div-int p1, v1, p1

    array-length v2, v0

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    const-string v5, "weather"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->isActive()Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    sget v3, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->IMAGES_PER_SET:I

    div-int v3, p1, v3

    rem-int/2addr v3, v2

    iget-object v5, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    aget-object v0, v0, v3

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->prepare()V

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "computeCurrentTrigger: current= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", playCount= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", casualListSize= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", triggerIndex= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private synthetic lambda$onImagePackUpdate$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {p0, p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->onImagePackUpdate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onSenerioChangedIfPossible()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getActivePack()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "OpBitmojiManager"

    if-eqz v1, :cond_0

    const-string p0, "onSenerioChangedIfPossible: currentActivePackId is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mLastPackId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSenerioChangedIfPossible: last= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mLastPackId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", current = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mLastPackId:Ljava/lang/String;

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->startDownloadCertainPackIfPossible(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mMdmLogger:Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->logStickerEvent(Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;)V

    :cond_2
    return-void
.end method

.method private onUserUnlocked()V
    .locals 1

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "OpBitmojiManager"

    const-string v0, "onUserUnlocked"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->registerBitmojiObserver()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p3, v0

    array-length v1, p3

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v1, p3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->dynamicConfig([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string v1, "OpBitmojiManager:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "version: 2"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "CurrentTrigger:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2, p3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "-----------------------------------------------"

    if-eqz v1, :cond_3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trigger: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "PRINT ALL TRIGGERS:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public getActivePack()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getCurrentPackId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAodImage()[Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getActivePack()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    const-string v2, "OpBitmojiManager"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    aput-object v1, v0, v3

    goto :goto_0

    :cond_0
    const-string v1, "getAodImage: drawable is null"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "getAodImage: currentTrigger is null"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    aget-object v1, v0, v3

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->op_bitmoji_default:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    aput-object p0, v0, v3

    :cond_2
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public synthetic lambda$onImagePackUpdate$0$OpBitmojiManager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->lambda$onImagePackUpdate$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onBootCompleted()V
    .locals 1

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "OpBitmojiManager"

    const-string v0, "onBootCompleted"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->clearStatusFromStore()V

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->registerBitmojiObserver()V

    return-void
.end method

.method public onImagePackUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImagePackUpdate: triggerId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBitmojiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$A4JjA6S5KQ72hPUIfPUSYu0OJXM;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/aod/utils/bitmoji/-$$Lambda$OpBitmojiManager$A4JjA6S5KQ72hPUIfPUSYu0OJXM;-><init>(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOwnerClockChanged()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpBitmojiManager"

    const-string v1, "onOwnerClockChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mMdmLogger:Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->onOwnerClockChanged()V

    return-void
.end method

.method public onTriggerChanged(Ljava/lang/String;Z)V
    .locals 5

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTriggerChanged: triggerId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", added= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBitmojiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    iget-object v2, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eqz p1, :cond_e

    const/4 v2, 0x1

    if-nez p2, :cond_3

    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eq p1, v3, :cond_2

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_1

    const-string p1, "OpBitmojiManager"

    const-string v0, "onTriggerChanged: not currentTrigger, do nothing"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->computeCurrentTrigger(Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-ne p1, v3, :cond_4

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_8

    const-string p1, "OpBitmojiManager"

    const-string v2, "onTriggerChanged: same as current, do nothing"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getPriority()I

    move-result v3

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getPriority()I

    move-result v4

    if-ge v3, v4, :cond_6

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    const-string v0, "OpBitmojiManager"

    const-string v3, "onTriggerChanged: priority is not bigger than old one"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    instance-of v0, p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->reset()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->canKickOut(Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTriggerChanged: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " can not be kicked out by "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpBitmojiManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->prepare()V

    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onSenerioChangedIfPossible()V

    if-nez v0, :cond_e

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eq v1, p1, :cond_e

    if-eqz p2, :cond_b

    instance-of p1, p1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eq p2, v0, :cond_9

    instance-of v0, p2, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    if-eqz v0, :cond_9

    check-cast p2, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {p2}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->reset()V

    goto :goto_2

    :cond_a
    instance-of p1, v1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    if-eqz p1, :cond_b

    check-cast v1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->reset()V

    :cond_b
    iget-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;

    if-eqz p2, :cond_c

    invoke-interface {p2}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;->onTriggerChanged()V

    goto :goto_3

    :cond_d
    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_e
    :goto_4
    return-void
.end method

.method public refresh()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->complete()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    instance-of v1, v0, Lcom/oneplus/aod/utils/bitmoji/triggers/TimeTrigger;

    const-string v2, "OpBitmojiManager"

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lcom/oneplus/aod/utils/bitmoji/triggers/DateTrigger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    const-string v1, "weather"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->getPriority()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    const-string v0, "refresh: currentTrigger priority is bigger than low, can not automatically switch to other triggers"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    instance-of v1, v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->enableDelay()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/DelayTrigger;->getTriggerId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onTriggerChanged(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->prepare()V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh: complete! switch to= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mCurrentTrigger:Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onSenerioChangedIfPossible()V

    return-void
.end method

.method public removeListener(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public start()V
    .locals 3

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "Trigger:check"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/TimeTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/TimeTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/DateTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/DateTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/WeatherTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "weather"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/MusicTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/MusicTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "music"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/VideoTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "video"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/GameTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "gaming"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/CameraTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "camera"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/PhoneTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "messaging"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/BatteryTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "battery"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oneplus/aod/utils/bitmoji/triggers/TGIFTrigger;-><init>(Landroid/content/Context;Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;)V

    const-string v2, "tgif"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->computeCurrentTrigger(Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;)V

    invoke-direct {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->onSenerioChangedIfPossible()V

    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mTriggers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;

    invoke-virtual {v1}, Lcom/oneplus/aod/utils/bitmoji/triggers/base/Trigger;->init()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->getInstance()Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiHelper;->startPackageListening()V

    return-void
.end method

.method public uploadMdm()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->mMdmLogger:Lcom/oneplus/aod/utils/bitmoji/MdmLogger;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/bitmoji/MdmLogger;->upload()V

    return-void
.end method
