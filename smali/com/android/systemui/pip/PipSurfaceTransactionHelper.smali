.class public Lcom/android/systemui/pip/PipSurfaceTransactionHelper;
.super Ljava/lang/Object;
.source "PipSurfaceTransactionHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCornerRadius:I

.field private final mEnableCornerRadius:Z

.field private final mTmpDestinationRect:Landroid/graphics/Rect;

.field private final mTmpDestinationRectF:Landroid/graphics/RectF;

.field private final mTmpFloat9:[F

.field private final mTmpSourceRectF:Landroid/graphics/RectF;

.field private final mTmpTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 44
    iput-object v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mContext:Landroid/content/Context;

    .line 53
    sget p1, Lcom/android/systemui/R$bool;->config_pipEnableRoundCorner:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mEnableCornerRadius:Z

    .line 54
    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method alpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;
    .locals 0

    .line 69
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;
    .locals 2

    .line 79
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    .line 80
    invoke-virtual {p1, p2, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    sget v1, Lcom/android/systemui/R$dimen;->pip_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mCornerRadius:I

    return-void
.end method

.method resetScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;
    .locals 2

    .line 127
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    .line 128
    invoke-virtual {p1, p2, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mEnableCornerRadius:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 139
    iget p3, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mCornerRadius:I

    int-to-float p3, p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    return-object p0
.end method

.method scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 91
    iget-object p3, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    invoke-virtual {p3, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 92
    iget-object p3, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object p4, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p3, p4, v0, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 93
    iget-object p3, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object p4, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget p3, p3, Landroid/graphics/RectF;->top:F

    .line 94
    invoke-virtual {p1, p2, p4, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method scaleAndCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/systemui/pip/PipSurfaceTransactionHelper;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 109
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 110
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    :goto_0
    int-to-float p3, p3

    div-float/2addr v0, p3

    .line 112
    iget p3, p4, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget v1, p5, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr p3, v1

    .line 113
    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    iget p5, p5, Landroid/graphics/Rect;->top:I

    int-to-float p5, p5

    mul-float/2addr p5, v0

    sub-float/2addr p4, p5

    .line 114
    iget-object p5, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    invoke-virtual {p5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 115
    iget-object p5, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    invoke-virtual {p1, p2, p5, v0}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p5, p0, Lcom/android/systemui/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    .line 116
    invoke-virtual {p1, p2, p5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 117
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method
