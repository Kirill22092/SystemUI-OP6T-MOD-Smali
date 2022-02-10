.class public Lcom/oneplus/util/OpBoostUtils;
.super Ljava/lang/Object;
.source "OpBoostUtils.java"


# static fields
.field static final BOOST_GPU:[I

.field public static sIsMainThreadUxEnabled:Z


# instance fields
.field private mBoostFramework:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/util/OpBoostUtils;->BOOST_GPU:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/util/OpBoostUtils;->sIsMainThreadUxEnabled:Z

    return-void

    :array_0
    .array-data 4
        0x4280c000    # 64.375f
        0x24b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/util/OpBoostUtils;->mBoostFramework:Landroid/util/BoostFramework;

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/OpBoostUtils;->mBoostFramework:Landroid/util/BoostFramework;

    return-void
.end method

.method public static setUiThreadToUx(Z)V
    .locals 3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUiThreadToUx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", IS_SUPPORT_UIFIRST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v2, :cond_0

    const-string v2, "ON"

    goto :goto_0

    :cond_0
    const-string v2, "OFF"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemUi"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz p0, :cond_2

    const-string p0, "1"

    invoke-static {v0, v0, p0}, Lcom/oneplus/uifirst/UIFirstUtils;->setUxThread(IILjava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/oneplus/util/OpBoostUtils;->sIsMainThreadUxEnabled:Z

    goto :goto_1

    :cond_1
    sget-boolean p0, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz p0, :cond_2

    const-string p0, "0"

    invoke-static {v0, v0, p0}, Lcom/oneplus/uifirst/UIFirstUtils;->setUxThread(IILjava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/oneplus/util/OpBoostUtils;->sIsMainThreadUxEnabled:Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public aquireGPUBoost()V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/util/OpBoostUtils;->mBoostFramework:Landroid/util/BoostFramework;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/oneplus/util/OpBoostUtils;->BOOST_GPU:[I

    invoke-virtual {p0, v0, v1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    :cond_0
    return-void
.end method

.method public releaseGPUBoost()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/util/OpBoostUtils;->mBoostFramework:Landroid/util/BoostFramework;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/BoostFramework;->perfLockRelease()I

    :cond_0
    return-void
.end method
