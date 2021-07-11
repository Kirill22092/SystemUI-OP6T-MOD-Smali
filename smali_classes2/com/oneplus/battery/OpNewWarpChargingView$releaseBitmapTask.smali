.class Lcom/oneplus/battery/OpNewWarpChargingView$releaseBitmapTask;
.super Ljava/lang/Object;
.source "OpNewWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/battery/OpNewWarpChargingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "releaseBitmapTask"
.end annotation


# instance fields
.field private mBitmap:[Landroid/graphics/Bitmap;

.field private mEndIndex:I

.field private mStartIndex:I


# direct methods
.method public constructor <init>(II[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    iput-object p3, p0, Lcom/oneplus/battery/OpNewWarpChargingView$releaseBitmapTask;->mBitmap:[Landroid/graphics/Bitmap;

    .line 1091
    iput p1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$releaseBitmapTask;->mStartIndex:I

    .line 1092
    iput p2, p0, Lcom/oneplus/battery/OpNewWarpChargingView$releaseBitmapTask;->mEndIndex:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1097
    iget v0, p0, Lcom/oneplus/battery/OpNewWarpChargingView$releaseBitmapTask;->mStartIndex:I

    if-ltz v0, :cond_3

    iget v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$releaseBitmapTask;->mEndIndex:I

    if-ltz v1, :cond_3

    if-lt v1, v0, :cond_3

    iget-object v2, p0, Lcom/oneplus/battery/OpNewWarpChargingView$releaseBitmapTask;->mBitmap:[Landroid/graphics/Bitmap;

    array-length v3, v2

    if-gt v0, v3, :cond_3

    array-length v2, v2

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 1105
    :cond_0
    :goto_0
    iget v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$releaseBitmapTask;->mEndIndex:I

    if-ge v0, v1, :cond_2

    .line 1106
    iget-object v1, p0, Lcom/oneplus/battery/OpNewWarpChargingView$releaseBitmapTask;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 1108
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p0, "OpNewWarpChargingView"

    const-string v0, "Invalid variable"

    .line 1101
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
