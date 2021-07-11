.class public Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
.super Landroid/view/View;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayCutoutView"
.end annotation


# instance fields
.field private final mBoundingPath:Landroid/graphics/Path;

.field private final mBoundingRect:Landroid/graphics/Rect;

.field private final mBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraProtectionProgress:F

.field private mCircleR:F

.field private mCircleX:F

.field private mCircleY:F

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private final mDebugPath:Landroid/graphics/Path;

.field private final mDecorations:Lcom/android/systemui/ScreenDecorations;

.field private mDrawCutoutManually:Z

.field private final mInfo:Landroid/view/DisplayInfo;

.field private mInitialPosition:I

.field private final mLocation:[I

.field private final mOpCutoutPath:Landroid/graphics/Path;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mProtectionPath:Landroid/graphics/Path;

.field private mProtectionPathOrig:Landroid/graphics/Path;

.field private mProtectionRect:Landroid/graphics/RectF;

.field private mProtectionRectOrig:Landroid/graphics/RectF;

.field private mRotation:I

.field private mShowProtection:Z

.field private mTotalBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/ScreenDecorations;)V
    .locals 1

    .line 1330
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1294
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    .line 1295
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    .line 1296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    .line 1297
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    .line 1298
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    .line 1304
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 1306
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mShowProtection:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1308
    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/high16 v0, -0x1000000

    .line 1310
    iput v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1314
    iput v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionProgress:F

    .line 1448
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mDebugPath:Landroid/graphics/Path;

    .line 1470
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mOpCutoutPath:Landroid/graphics/Path;

    .line 1331
    iput p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInitialPosition:I

    .line 1332
    iput-object p3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mDecorations:Lcom/android/systemui/ScreenDecorations;

    .line 1333
    sget p3, Lcom/android/systemui/R$id;->display_cutout:I

    invoke-virtual {p0, p3}, Landroid/view/View;->setId(I)V

    .line 1334
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$900()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1335
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$DisplayCutoutView$2GNvax__nx7i-PkAOEvsPY3xIqs;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$DisplayCutoutView$2GNvax__nx7i-PkAOEvsPY3xIqs;-><init>(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;I)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1339
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    .line 1340
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$1800()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, -0x100

    .line 1341
    iput p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 1344
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$bool;->config_draw_cutout_manually:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mDrawCutoutManually:Z

    if-eqz p2, :cond_2

    .line 1346
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->op_draw_cutout_circle_x:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCircleX:F

    .line 1347
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->op_draw_cutout_circle_y:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCircleY:F

    .line 1348
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_draw_cutout_circle_r:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCircleR:F

    :cond_2
    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)V
    .locals 0

    .line 1289
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->update()V

    return-void
.end method

.method public static boundsFromDirection(Landroid/content/Context;Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const/4 v0, 0x5

    if-eq p2, v0, :cond_4

    const/16 v0, 0x30

    if-eq p2, v0, :cond_2

    const/16 p0, 0x50

    if-eq p2, p0, :cond_1

    .line 1769
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 1763
    :cond_1
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1747
    :cond_2
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p0, :cond_6

    .line 1751
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$2600()I

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$2700()I

    move-result p0

    if-eqz p0, :cond_6

    :cond_3
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCutoutEmulationEnabled()Z

    move-result p0

    if-nez p0, :cond_6

    .line 1753
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$2600()I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->left:I

    .line 1754
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$2700()I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1766
    :cond_4
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1760
    :cond_5
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 1733
    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/content/Context;Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    return-void
.end method

.method private getGravity(Landroid/view/DisplayCutout;)I
    .locals 2

    .line 1798
    iget p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    const/4 v0, 0x3

    if-nez p0, :cond_0

    .line 1799
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 1803
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/16 p0, 0x30

    return p0

    :cond_1
    if-ne p0, v0, :cond_2

    .line 1807
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/16 p0, 0x50

    return p0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 1811
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private hasCutout()Z
    .locals 4

    .line 1690
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1695
    :cond_0
    iget p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    const/4 v2, 0x1

    if-nez p0, :cond_1

    .line 1696
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_1
    if-ne p0, v2, :cond_2

    .line 1698
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_2
    const/4 v3, 0x3

    if-ne p0, v3, :cond_3

    .line 1700
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_3
    const/4 v3, 0x2

    if-ne p0, v3, :cond_4

    .line 1702
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_4
    return v1
.end method

.method private synthetic lambda$new$0(I)V
    .locals 1

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1336
    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$2800(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " drawn in rot "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenDecorations"

    .line 1335
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private localBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 1774
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1779
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getGravity(Landroid/view/DisplayCutout;)I

    move-result v2

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/content/Context;Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 1782
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_4

    .line 1783
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1784
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1786
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 1790
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;II)Landroid/view/DisplayCutout;

    move-result-object v0

    .line 1791
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    const/16 v1, 0x30

    invoke-static {p0, v0, v1, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/content/Context;Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 1792
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "localBounds height:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenDecorations"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private opUpdateCutoutPath(FFF)V
    .locals 5

    .line 1472
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1473
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1475
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 1480
    :goto_2
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$2000()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1482
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->updateScreenResolutionManually(Landroid/content/Context;)V

    const/16 v2, 0x5a0

    .line 1485
    invoke-static {p1, v2, v0}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportionWithoutRound(FII)F

    move-result p1

    .line 1486
    invoke-static {p2, v2, v0}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportionWithoutRound(FII)F

    move-result p2

    .line 1487
    invoke-static {p3, v2, v0}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportionWithoutRound(FII)F

    move-result p3

    .line 1490
    :cond_4
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$900()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Draw cutout manually circle x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenDecorations"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mOpCutoutPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1496
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mOpCutoutPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, p1, p2, p3, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1497
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1498
    iget-object p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget p2, p2, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {p2, v0, v1, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 1499
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mOpCutoutPath:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    .line 1669
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p2

    .line 1670
    invoke-virtual {p3, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 1673
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    .line 1665
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    int-to-float p1, p2

    .line 1666
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    .line 1661
    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float p0, p1

    .line 1662
    invoke-virtual {p3, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 1658
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    return-void
.end method

.method private update()V
    .locals 2

    .line 1600
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mDecorations:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$2400(Lcom/android/systemui/ScreenDecorations;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mRotation:I

    .line 1606
    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInitialPosition:I

    invoke-static {v1, v0}, Lcom/android/systemui/ScreenDecorations;->access$2500(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPosition:I

    .line 1607
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1608
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1609
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1610
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1611
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1613
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->localBounds(Landroid/graphics/Rect;)V

    .line 1616
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateGravity()V

    .line 1617
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateBoundingPath()V

    .line 1618
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 1623
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1624
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateBoundingPath()V
    .locals 5

    .line 1629
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1630
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1632
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 1637
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/view/DisplayCutout;->pathFromResources(Landroid/content/res/Resources;II)Landroid/graphics/Path;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1639
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v3, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto :goto_3

    .line 1641
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1643
    :goto_3
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1644
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v3, v0, v1, v2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 1645
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1646
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionPathOrig:Landroid/graphics/Path;

    if-eqz v0, :cond_5

    .line 1648
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 1649
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1650
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRectOrig:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    :cond_5
    return-void
.end method

.method private updateDebugPath()V
    .locals 3

    .line 1450
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1451
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1453
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v0, "debug.cutout.display.pathdata"

    const-string v1, ""

    .line 1457
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDebugPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenDecorations"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mDebugPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method private updateGravity()V
    .locals 3

    .line 1678
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1679
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 1680
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1681
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-direct {p0, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getGravity(Landroid/view/DisplayCutout;)I

    move-result v1

    .line 1682
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v2, v1, :cond_0

    .line 1683
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1684
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getInterceptRegion()Landroid/graphics/Region;
    .locals 8

    .line 1830
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1834
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1835
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1836
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    .line 1835
    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;

    move-result-object v1

    .line 1839
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1840
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/4 v2, 0x0

    aget v2, p0, v2

    neg-int v2, v2

    const/4 v3, 0x1

    aget p0, p0, v3

    neg-int p0, p0

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Region;->translate(II)V

    .line 1843
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1844
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v2, v1

    .line 1843
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-object v1
.end method

.method public synthetic lambda$new$0$ScreenDecorations$DisplayCutoutView(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->lambda$new$0(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1366
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1368
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1367
    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1369
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->update()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1374
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1375
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    .line 1524
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f4

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    .line 1526
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCutoutEmulationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x64

    .line 1530
    :cond_1
    new-instance v1, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$1;-><init>(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;I)V

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1380
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1386
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$1900()Z

    move-result v0

    const/16 v2, -0x100

    if-eqz v0, :cond_1

    .line 1387
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->updateDebugPath()V

    .line 1388
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mDebugPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1391
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1392
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mDebugPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    .line 1397
    :cond_1
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "debug.cutout.display.circle.data"

    const-string v4, ""

    .line 1398
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1399
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEBUG_CUTOUT_CIRCLE_DISPLAY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ScreenDecorations"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ","

    .line 1401
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1402
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->opUpdateCutoutPath(FFF)V

    .line 1403
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mOpCutoutPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 1404
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 1405
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1407
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1409
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mOpCutoutPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void

    .line 1416
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mDrawCutoutManually:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCutoutEmulationEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1418
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCircleX:F

    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCircleY:F

    iget v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCircleR:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->opUpdateCutoutPath(FFF)V

    .line 1420
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mOpCutoutPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1421
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1423
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1424
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mOpCutoutPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    return-void

    .line 1432
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1435
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1436
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1438
    :cond_7
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRect:Landroid/graphics/RectF;

    .line 1439
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1440
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mCameraProtectionProgress:F

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRect:Landroid/graphics/RectF;

    .line 1441
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 1440
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1442
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1709
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1710
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    .line 1714
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mShowProtection:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1716
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1717
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mProtectionRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1719
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 1720
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    .line 1721
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 1719
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 1723
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    .line 1724
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    .line 1725
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 1723
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 1355
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 1357
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->access$1800()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, -0x100

    .line 1358
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mColor:I

    .line 1361
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    return-void
.end method

.method public shouldInterceptTouch()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
