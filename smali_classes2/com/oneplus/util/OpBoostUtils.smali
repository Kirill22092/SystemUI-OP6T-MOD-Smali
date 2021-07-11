.class public Lcom/oneplus/util/OpBoostUtils;
.super Ljava/lang/Object;
.source "OpBoostUtils.java"


# static fields
.field static final BOOST_GPU:[I


# instance fields
.field private mBoostFramework:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/util/OpBoostUtils;->BOOST_GPU:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4280c000    # 64.375f
        0x24b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/oneplus/util/OpBoostUtils;->mBoostFramework:Landroid/util/BoostFramework;

    .line 13
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/oneplus/util/OpBoostUtils;->mBoostFramework:Landroid/util/BoostFramework;

    return-void
.end method


# virtual methods
.method public aquireGPUBoost()V
    .locals 2

    .line 17
    iget-object p0, p0, Lcom/oneplus/util/OpBoostUtils;->mBoostFramework:Landroid/util/BoostFramework;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 18
    sget-object v1, Lcom/oneplus/util/OpBoostUtils;->BOOST_GPU:[I

    invoke-virtual {p0, v0, v1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    :cond_0
    return-void
.end method

.method public releaseGPUBoost()V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oneplus/util/OpBoostUtils;->mBoostFramework:Landroid/util/BoostFramework;

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/util/BoostFramework;->perfLockRelease()I

    :cond_0
    return-void
.end method
