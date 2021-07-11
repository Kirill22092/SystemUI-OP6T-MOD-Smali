.class Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;
.super Ljava/lang/Thread;
.source "OpAodLowLightMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/bg/OpAodLowLightMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskGenerator"
.end annotation


# instance fields
.field private mMaskView:Lcom/oneplus/aod/bg/OpAodLowLightMask;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/bg/OpAodLowLightMask;Landroid/graphics/Point;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;->mMaskView:Lcom/oneplus/aod/bg/OpAodLowLightMask;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;)Lcom/oneplus/aod/bg/OpAodLowLightMask;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;->mMaskView:Lcom/oneplus/aod/bg/OpAodLowLightMask;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 94
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x2

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v3, -0x1000000

    .line 95
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    const/4 v3, 0x0

    .line 96
    invoke-virtual {v2, v3, v3, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    const/4 v4, 0x1

    .line 97
    invoke-virtual {v2, v4, v4, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 99
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_0

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MaskGenerator: total cost= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaskGenerator"

    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;->mMaskView:Lcom/oneplus/aod/bg/OpAodLowLightMask;

    new-instance v1, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator$1;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator$1;-><init>(Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
