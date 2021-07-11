.class public Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;
.super Ljava/lang/Object;
.source "OpScreenBurnInProtector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$BIHandler;,
        Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentMove:I

.field private mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDistance:I

.field private mMovingLeft:Z

.field private mStart:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 21
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mMaxDistance:I

    const/16 v0, 0x2ee0

    .line 22
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mDuration:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mCurrentMove:I

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mMovingLeft:Z

    .line 26
    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$BIHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$BIHandler;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$1;)V

    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mHandler:Landroid/os/Handler;

    .line 29
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mStart:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mListeners:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$1;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->moveToNext()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;
    .locals 2

    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mInstance:Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    invoke-direct {v1}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;-><init>()V

    sput-object v1, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mInstance:Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    .line 38
    :cond_0
    sget-object v1, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mInstance:Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private moveToNext()V
    .locals 5

    .line 144
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mCurrentMove:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mMaxDistance:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 145
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mMovingLeft:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mMovingLeft:Z

    .line 147
    :cond_0
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mCurrentMove:I

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mMovingLeft:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mCurrentMove:I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToNext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mCurrentMove:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpScreenBurnInProtector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;

    .line 151
    iget v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mCurrentMove:I

    invoke-interface {v1, v3}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;->onBurnInPreventTrigger(I)V

    goto :goto_1

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mDuration:I

    int-to-long v3, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public registerListener(Landroid/content/Context;Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;)V
    .locals 4

    const-string v0, "OpScreenBurnInProtector"

    if-nez p1, :cond_0

    const-string p0, "context is null"

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 52
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "debug_op_burn_in_time"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 54
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "debug_op_burn_in_distance"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 56
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mDuration:I

    .line 57
    iput v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mMaxDistance:I

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$integer;->op_burn_in_time:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mDuration:I

    .line 60
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$integer;->op_burn_in_distance:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mMaxDistance:I

    .line 62
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init duration "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mDuration:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " distance "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mMaxDistance:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    iget p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mDuration:I

    if-nez p1, :cond_3

    iget p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mMaxDistance:I

    if-nez p1, :cond_3

    return-void

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 69
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 71
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    :cond_4
    iget p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mCurrentMove:I

    invoke-interface {p2, p1}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;->onBurnInPreventTrigger(I)V

    .line 78
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->start()V

    :cond_5
    return-void
.end method

.method public start()V
    .locals 4

    .line 129
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mStart:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mStart:Z

    .line 134
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mDuration:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mStart:Z

    .line 140
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public unregisterListener(Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$OnBurnInPreventListener;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
