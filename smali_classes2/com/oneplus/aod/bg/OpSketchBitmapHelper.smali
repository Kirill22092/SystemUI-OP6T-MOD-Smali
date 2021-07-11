.class public Lcom/oneplus/aod/bg/OpSketchBitmapHelper;
.super Ljava/lang/Object;
.source "OpSketchBitmapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;,
        Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;
    }
.end annotation


# static fields
.field static SPREAD_STROKE_WIDTH:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget p0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_STROKE_WIDTH:I

    const-string p1, "sys.c.aod.width"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_STROKE_WIDTH:I

    const-string p0, "sys.c.aod.length"

    const-string p1, ""

    .line 47
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sys.c.aod.range"

    .line 48
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sys.c.aod.filter"

    .line 49
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 55
    array-length v1, p0

    if-lez v1, :cond_0

    array-length v1, p0

    array-length v2, v0

    if-ne v1, v2, :cond_0

    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    const-string v1, "OpSketchBitmapHelper"

    const-string v2, "override value"

    .line 57
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->convertToIntArray([Ljava/lang/String;)[I

    .line 60
    invoke-static {v0}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->convertToIntArray([Ljava/lang/String;)[I

    .line 61
    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->convertToIntArray([Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "exception happaned"

    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static convertToIntArray([Ljava/lang/String;)[I
    .locals 3

    .line 72
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 73
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 74
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 75
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public genBurninMask(Landroid/graphics/Point;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p0

    if-nez p0, :cond_1

    if-lez p2, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 194
    :goto_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/high16 v2, -0x1000000

    .line 195
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0, v2, v2, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 199
    :goto_1
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genBurninMask: total cost= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, size= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", diameter = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpSketchBitmapHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method
