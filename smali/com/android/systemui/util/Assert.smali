.class public Lcom/android/systemui/util/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# static fields
.field private static final sMainLooper:Landroid/os/Looper;

.field private static sTestLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/Assert;->sMainLooper:Landroid/os/Looper;

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/android/systemui/util/Assert;->sTestLooper:Landroid/os/Looper;

    return-void
.end method

.method public static isMainThread()V
    .locals 3

    .line 36
    sget-object v0, Lcom/android/systemui/util/Assert;->sMainLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/util/Assert;->sTestLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "should be called from the main thread. sMainLooper.threadName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/util/Assert;->sMainLooper:Landroid/os/Looper;

    .line 39
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Thread.currentThread()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTestableLooper(Landroid/os/Looper;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/android/systemui/util/Assert;->sTestLooper:Landroid/os/Looper;

    return-void
.end method
