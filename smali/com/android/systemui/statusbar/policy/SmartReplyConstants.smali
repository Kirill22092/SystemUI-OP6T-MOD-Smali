.class public final Lcom/android/systemui/statusbar/policy/SmartReplyConstants;
.super Ljava/lang/Object;
.source "SmartReplyConstants.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultEditChoicesBeforeSending:Z

.field private final mDefaultEnabled:Z

.field private final mDefaultMaxNumActions:I

.field private final mDefaultMaxSqueezeRemeasureAttempts:I

.field private final mDefaultMinNumSystemGeneratedReplies:I

.field private final mDefaultOnClickInitDelay:I

.field private final mDefaultRequiresP:Z

.field private final mDefaultShowInHeadsUp:Z

.field private final mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

.field private volatile mEditChoicesBeforeSending:Z

.field private volatile mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private volatile mMaxNumActions:I

.field private volatile mMaxSqueezeRemeasureAttempts:I

.field private volatile mMinNumSystemGeneratedReplies:I

.field private volatile mOnClickInitDelay:J

.field private final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private volatile mRequiresTargetingP:Z

.field private volatile mShowInHeadsUp:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_smart_replies_in_notifications_enabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultEnabled:Z

    sget p2, Lcom/android/systemui/R$bool;->config_smart_replies_in_notifications_requires_targeting_p:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultRequiresP:Z

    sget p2, Lcom/android/systemui/R$integer;->config_smart_replies_in_notifications_max_squeeze_remeasure_attempts:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMaxSqueezeRemeasureAttempts:I

    sget p2, Lcom/android/systemui/R$bool;->config_smart_replies_in_notifications_edit_choices_before_sending:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultEditChoicesBeforeSending:Z

    sget p2, Lcom/android/systemui/R$bool;->config_smart_replies_in_notifications_show_in_heads_up:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultShowInHeadsUp:Z

    sget p2, Lcom/android/systemui/R$integer;->config_smart_replies_in_notifications_min_num_system_generated_replies:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMinNumSystemGeneratedReplies:I

    sget p2, Lcom/android/systemui/R$integer;->config_smart_replies_in_notifications_max_num_actions:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMaxNumActions:I

    sget p2, Lcom/android/systemui/R$integer;->config_smart_replies_in_notifications_onclick_init_delay:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultOnClickInitDelay:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->registerDeviceConfigListener()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->updateConstants()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->updateConstants()V

    return-void
.end method

.method public static synthetic lambda$6OXW9pAAXeePuUfPuGxYU98bifc(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->postToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postToHandler(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private readDeviceConfigBooleanOrDefaultIfEmpty(Ljava/lang/String;Z)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v0, "systemui"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/util/DeviceConfigProxy;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const-string/jumbo p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p1, "false"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return p2
.end method

.method private registerDeviceConfigListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyConstants$6OXW9pAAXeePuUfPuGxYU98bifc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyConstants$6OXW9pAAXeePuUfPuGxYU98bifc;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v2, "systemui"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method private updateConstants()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ssin_enabled"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->readDeviceConfigBooleanOrDefaultIfEmpty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mEnabled:Z

    const-string/jumbo v0, "ssin_requires_targeting_p"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultRequiresP:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->readDeviceConfigBooleanOrDefaultIfEmpty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mRequiresTargetingP:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v1, "systemui"

    const-string/jumbo v2, "ssin_max_squeeze_remeasure_attempts"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMaxSqueezeRemeasureAttempts:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/DeviceConfigProxy;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMaxSqueezeRemeasureAttempts:I

    const-string/jumbo v0, "ssin_edit_choices_before_sending"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultEditChoicesBeforeSending:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->readDeviceConfigBooleanOrDefaultIfEmpty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mEditChoicesBeforeSending:Z

    const-string/jumbo v0, "ssin_show_in_heads_up"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultShowInHeadsUp:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->readDeviceConfigBooleanOrDefaultIfEmpty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mShowInHeadsUp:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v1, "systemui"

    const-string/jumbo v2, "ssin_min_num_system_generated_replies"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMinNumSystemGeneratedReplies:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/DeviceConfigProxy;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMinNumSystemGeneratedReplies:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v1, "systemui"

    const-string/jumbo v2, "ssin_max_num_actions"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultMaxNumActions:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/DeviceConfigProxy;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMaxNumActions:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v1, "systemui"

    const-string/jumbo v2, "ssin_onclick_init_delay"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mDefaultOnClickInitDelay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/DeviceConfigProxy;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mOnClickInitDelay:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getEffectiveEditChoicesBeforeSending(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mEditChoicesBeforeSending:Z

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getMaxNumActions()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMaxNumActions:I

    return p0
.end method

.method public getMaxSqueezeRemeasureAttempts()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMaxSqueezeRemeasureAttempts:I

    return p0
.end method

.method public getMinNumSystemGeneratedReplies()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mMinNumSystemGeneratedReplies:I

    return p0
.end method

.method public getOnClickInitDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mOnClickInitDelay:J

    return-wide v0
.end method

.method public getShowInHeadsUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mShowInHeadsUp:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mEnabled:Z

    return p0
.end method

.method public requiresTargetingP()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mRequiresTargetingP:Z

    return p0
.end method
