.class public Lcom/oneplus/aod/bg/OpSketchPaint;
.super Lcom/oneplus/aod/bg/OpBasePaint;
.source "OpSketchPaint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/bg/OpSketchPaint$OnGenBurnInMaskDoneListener;,
        Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;
    }
.end annotation


# static fields
.field private static final BURNIN_DIAMETER:I

.field private static final DRAW_TEST:Z

.field private static final MAX_CIRCLE_RAIDUS:I

.field private static final MIN_CIRCLE_RAIDUS:I

.field private static final SPREAD_DURATION:I


# instance fields
.field private mBgPaint:Landroid/graphics/Paint;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mBlackMaskGenerator:Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;

.field private mBurnInPaint:Landroid/graphics/Paint;

.field private mBurnInStep:I

.field private mBurnInX:I

.field private mBurnInXPath1:[I

.field private mBurnInXPath2:[I

.field private mBurnInY:I

.field private mBurnInYPath1:[I

.field private mBurnInYPath2:[I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mContourPaint:Landroid/graphics/Paint;

.field private mContourPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mContourScaleX:F

.field private mContourScaleY:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mListener:Lcom/oneplus/aod/bg/OpSketchPaint$OnGenBurnInMaskDoneListener;

.field private mMaskPaint:[Landroid/graphics/Paint;

.field private mMaskPath:[Landroid/graphics/Path;

.field private mMoveForward:Z

.field private mPm:Landroid/os/PowerManager;

.field private mScaleFactor:F

.field private mSketchBitmapHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

.field private mSpreadBitmap:Landroid/graphics/Bitmap;

.field private mSpreadScaleX:F

.field private mSpreadScaleY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sys.sketch.sp.duration"

    const/16 v1, 0x12c

    .line 44
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/aod/bg/OpSketchPaint;->SPREAD_DURATION:I

    const-string v0, "sys.sketch.circle.min"

    const/16 v1, 0xf

    .line 46
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/aod/bg/OpSketchPaint;->MIN_CIRCLE_RAIDUS:I

    const-string v0, "sys.sketch.circle.max"

    const/16 v1, 0x73

    .line 48
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/aod/bg/OpSketchPaint;->MAX_CIRCLE_RAIDUS:I

    const-string v0, "sys.sketch.test"

    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/aod/bg/OpSketchPaint;->DRAW_TEST:Z

    const-string v0, "sys.sketch.diameter"

    const/4 v1, 0x2

    .line 53
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/aod/bg/OpSketchPaint;->BURNIN_DIAMETER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 110
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpBasePaint;-><init>()V

    .line 654
    new-instance v0, Lcom/oneplus/aod/bg/OpSketchPaint$4;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/bg/OpSketchPaint$4;-><init>(Lcom/oneplus/aod/bg/OpSketchPaint;)V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mListener:Lcom/oneplus/aod/bg/OpSketchPaint$OnGenBurnInMaskDoneListener;

    .line 112
    new-instance v0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

    sget v1, Lcom/oneplus/aod/bg/OpSketchPaint;->MIN_CIRCLE_RAIDUS:I

    invoke-direct {v0, v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSketchBitmapHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPoints:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    .line 122
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInPaint:Landroid/graphics/Paint;

    .line 126
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x4

    new-array v3, v0, [Landroid/graphics/Paint;

    .line 129
    iput-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    .line 130
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 131
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v5

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 133
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v2, v2, v5

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v3, v2, v1

    .line 136
    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 137
    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v6, v6, v5

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 v6, 0x3

    aput-object v3, v2, v6

    .line 139
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {v2, v7, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 148
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 149
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 150
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 151
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v6

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-array v0, v0, [Landroid/graphics/Path;

    .line 154
    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    .line 155
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v0, v5

    .line 156
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v0, v1

    .line 157
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    aput-object v1, v0, v4

    .line 158
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    aput-object v1, v0, v6

    .line 161
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mCanvas:Landroid/graphics/Canvas;

    const v0, 0x3f8ccccd    # 1.1f

    .line 164
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mScaleFactor:F

    .line 165
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScaleY:F

    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScaleX:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    .line 166
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadScaleY:F

    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadScaleX:F

    .line 169
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->loadBurnInData()V

    .line 171
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->resetInner()V

    .line 173
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "properties: MIN_CIRCLE_RAIDUS= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/aod/bg/OpSketchPaint;->MIN_CIRCLE_RAIDUS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MAX_CIRCLE_RAIDUS= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/aod/bg/OpSketchPaint;->MAX_CIRCLE_RAIDUS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SPREAD_DURATION= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/aod/bg/OpSketchPaint;->SPREAD_DURATION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 42
    sget v0, Lcom/oneplus/aod/bg/OpSketchPaint;->MAX_CIRCLE_RAIDUS:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/aod/bg/OpSketchPaint;)[Landroid/graphics/Paint;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1300()I
    .locals 1

    .line 42
    sget v0, Lcom/oneplus/aod/bg/OpSketchPaint;->BURNIN_DIAMETER:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/bg/OpSketchPaint;)[Landroid/graphics/Path;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/bg/OpSketchPaint;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPoints:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Bitmap;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/oneplus/aod/bg/OpSketchPaint;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Canvas;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/bg/OpSketchPaint;Landroid/graphics/Canvas;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/bg/OpSketchPaint;->drawMaskPoint(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/aod/bg/OpSketchPaint;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/bg/OpSketchPaint;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/aod/bg/OpSketchPaint;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->resetInner()V

    return-void
.end method

.method private clearSpreadData()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 522
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 525
    :cond_0
    iput-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private drawMaskPoint(Landroid/graphics/Canvas;I)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    aget-object v0, v0, p2

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object p0, p0, p2

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getSketchAnimator()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 540
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 541
    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v2, [I

    .line 542
    sget v5, Lcom/oneplus/aod/bg/OpSketchPaint;->MIN_CIRCLE_RAIDUS:I

    aput v5, v4, v0

    sget v5, Lcom/oneplus/aod/bg/OpSketchPaint;->MAX_CIRCLE_RAIDUS:I

    const/4 v6, 0x1

    aput v5, v4, v6

    const-string v5, "radius"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v5, v0

    aput-object v4, v5, v6

    .line 544
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 545
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 546
    sget v0, Lcom/oneplus/aod/bg/OpSketchPaint;->SPREAD_DURATION:I

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 547
    new-instance v0, Lcom/oneplus/aod/bg/OpSketchPaint$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/bg/OpSketchPaint$1;-><init>(Lcom/oneplus/aod/bg/OpSketchPaint;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 592
    new-instance v0, Lcom/oneplus/aod/bg/OpSketchPaint$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/bg/OpSketchPaint$2;-><init>(Lcom/oneplus/aod/bg/OpSketchPaint;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v2, [F

    .line 628
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 629
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x96

    .line 630
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 631
    new-instance v2, Lcom/oneplus/aod/bg/OpSketchPaint$3;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/bg/OpSketchPaint$3;-><init>(Lcom/oneplus/aod/bg/OpSketchPaint;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 648
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 649
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private loadBurnInData()V
    .locals 8

    const-string v0, "sys.sketch.burnin.x.1"

    const-string v1, "0,20,20,-20,-20,40,40,-40,-40,60,60,-60,-60,0"

    .line 181
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sys.sketch.burnin.y.1"

    const-string v3, "0,0,-20,-20,20,20,-40,-40,40,40,-60,-60,60,60"

    .line 182
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "use default burnin data"

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v3, v2

    goto :goto_1

    .line 185
    :cond_1
    :goto_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const-string v0, ","

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->convertToIntArray([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInXPath1:[I

    .line 193
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->convertToIntArray([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInYPath1:[I

    const-string v1, "sys.sketch.burnin.x.2"

    const-string v2, "0,30,30,-30,-30,50,50,-50,-50,0"

    .line 195
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sys.sketch.burnin.y.2"

    const-string v4, "10,10,-30,-30,30,30,-50,-50,50,50"

    .line 196
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v1

    move-object v4, v3

    goto :goto_3

    .line 199
    :cond_4
    :goto_2
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_5

    .line 200
    iget-object v1, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->convertToIntArray([Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInXPath2:[I

    .line 207
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->convertToIntArray([Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInYPath2:[I

    .line 209
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_6

    .line 210
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "burnin path: x1= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInXPath1:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", y1= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInYPath1:[I

    .line 211
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", x2= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInXPath2:[I

    .line 212
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", y2= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInYPath2:[I

    .line 213
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 210
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private makeNextMove()V
    .locals 5

    .line 441
    iget-boolean v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMoveForward:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 442
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInStep:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 444
    iput v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInStep:I

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 445
    iget-object v4, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInXPath1:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 446
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInXPath2:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInStep:I

    .line 447
    iput-boolean v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMoveForward:Z

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 449
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInStep:I

    goto :goto_0

    .line 452
    :cond_2
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInStep:I

    add-int/lit8 v3, v0, -0x1

    if-gez v3, :cond_3

    .line 453
    iput v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInStep:I

    .line 454
    iput-boolean v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMoveForward:Z

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v2

    .line 456
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInStep:I

    .line 460
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMoveForward:Z

    if-eqz v0, :cond_4

    .line 461
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInXPath1:[I

    iget v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInStep:I

    aget v0, v0, v1

    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInX:I

    .line 462
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInYPath1:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInY:I

    goto :goto_1

    .line 464
    :cond_4
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInXPath2:[I

    iget v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInStep:I

    aget v0, v0, v1

    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInX:I

    .line 465
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInYPath2:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInY:I

    .line 468
    :goto_1
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    .line 469
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeNextMove: move forward= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMoveForward:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", step= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", x= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", y= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInY:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private resetInner()V
    .locals 1

    const/4 v0, -0x1

    .line 435
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInStep:I

    const/4 v0, 0x1

    .line 436
    iput-boolean v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMoveForward:Z

    const/4 v0, 0x0

    .line 437
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInY:I

    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInX:I

    return-void
.end method

.method private stopGeneratorIfPossible()V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBlackMaskGenerator:Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBlackMaskGenerator:Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;

    .line 532
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v1, "stopGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBlackMaskGenerator:Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 535
    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBlackMaskGenerator:Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;

    :cond_0
    return-void
.end method


# virtual methods
.method public burnInProtect()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v1, "burnInProtect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v0, "do nothing."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->makeNextMove()V

    .line 415
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public genAodDisappearAnimation()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 402
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->getSketchAnimator()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 285
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->clearSpreadData()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "OpSketchPaint#onDraw"

    .line 307
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/high16 v1, -0x1000000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 329
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaX:F

    neg-float v0, v0

    iget v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaY:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 330
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadScaleX:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadScaleY:F

    mul-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 331
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    .line 335
    :cond_0
    sget-boolean v0, Lcom/oneplus/aod/bg/OpSketchPaint;->DRAW_TEST:Z

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 336
    iget v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 338
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaX:F

    neg-float v0, v0

    iget v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaY:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 339
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadScaleX:F

    iget v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 340
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 341
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 342
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 343
    iget-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;

    .line 344
    invoke-virtual {v2}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;->getDirection()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const v3, -0xff0100

    .line 355
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    const v3, -0xffff01

    .line 349
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    const/16 v3, -0x100

    .line 352
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    const/high16 v3, -0x10000

    .line 346
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    :goto_1
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 360
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 365
    iget v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mWidth:I

    int-to-float v7, v0

    iget v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mHeight:I

    int-to-float v8, v0

    iget-object v9, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 370
    :goto_2
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_7

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 372
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaX:F

    neg-float v0, v0

    iget v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaY:F

    neg-float v1, v1

    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 373
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScaleX:F

    iget v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 374
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapWidth:I

    int-to-float v5, v0

    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapHeight:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 375
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 391
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInStep:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 393
    iget v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 397
    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onSizeChanged(II)V
    .locals 6

    .line 252
    invoke-super {p0, p1, p2}, Lcom/oneplus/aod/bg/OpBasePaint;->onSizeChanged(II)V

    .line 255
    iget v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 256
    iget v2, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 258
    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapWidth:I

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapHeight:I

    if-eqz v3, :cond_0

    int-to-float v4, v0

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v2, v5

    div-float/2addr v4, v2

    .line 259
    iput v4, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScaleX:F

    int-to-float v2, v1

    int-to-float v3, v3

    mul-float/2addr v3, v5

    div-float/2addr v2, v3

    .line 260
    iput v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScaleY:F

    .line 263
    :cond_0
    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScaleX:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadScaleX:F

    .line 264
    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScaleY:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadScaleY:F

    .line 266
    iget v2, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaX:F

    .line 267
    iget v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mHeight:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaY:F

    .line 269
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged: w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", h= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mBitmapWidth= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapWidth:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mBitmapHeight= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapHeight:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mContourScaleX= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScaleX:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mContourScaleY= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScaleY:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mDeltaX= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaX:F

    neg-float p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mDeltaY= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaY:F

    neg-float p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mScaleFactor= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mScaleFactor:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public recover()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v1, "recover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->resetInner()V

    .line 423
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->stopGeneratorIfPossible()V

    .line 221
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 222
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    .line 223
    iget-object v1, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iget-object v0, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBurnInPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    .line 232
    iget-object v1, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 233
    iget-object v0, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->clearSpreadData()V

    return-void
.end method

.method public reset()V
    .locals 6

    .line 291
    invoke-super {p0}, Lcom/oneplus/aod/bg/OpBasePaint;->reset()V

    .line 293
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 296
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 299
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->resetInner()V

    return-void
.end method

.method public setup(Landroid/view/View;)V
    .locals 1

    .line 243
    invoke-super {p0, p1}, Lcom/oneplus/aod/bg/OpBasePaint;->setup(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mPm:Landroid/os/PowerManager;

    :cond_0
    return-void
.end method

.method public setupContour(Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V
    .locals 3

    .line 490
    invoke-virtual {p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapWidth:I

    .line 493
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapHeight:I

    .line 494
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 496
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 498
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spread bitmap width= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapWidth:I

    div-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapHeight:I

    div-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 505
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    invoke-virtual {p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->getScale()F

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mScaleFactor:F

    .line 509
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->stopGeneratorIfPossible()V

    .line 511
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 512
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 513
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 514
    new-instance p1, Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;

    iget-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mListener:Lcom/oneplus/aod/bg/OpSketchPaint$OnGenBurnInMaskDoneListener;

    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSketchBitmapHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

    invoke-direct {p1, v1, v0, v2}, Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;-><init>(Lcom/oneplus/aod/bg/OpSketchPaint$OnGenBurnInMaskDoneListener;Landroid/graphics/Point;Lcom/oneplus/aod/bg/OpSketchBitmapHelper;)V

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBlackMaskGenerator:Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;

    .line 516
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public userActivityInAlwaysOn()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v1, "userActivityInAlwaysOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->resetInner()V

    .line 431
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
