.class public Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;
.super Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;
.source "OpBurnInVerticalController.java"


# instance fields
.field private mMovingDistance:I

.field private mMovingDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private moveDown(Landroid/graphics/Rect;)I
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->getClockViewMarginTop()I

    move-result v0

    .line 71
    iget p0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->mMovingDistance:I

    add-int v1, v0, p0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, p1, :cond_0

    add-int/2addr v0, p0

    return v0

    :cond_0
    return p1
.end method

.method private movePosition(Landroid/view/View;I)V
    .locals 0

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private moveUp(Landroid/graphics/Rect;)I
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->getClockViewMarginTop()I

    move-result v0

    .line 80
    iget p0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->mMovingDistance:I

    sub-int v1, v0, p0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le v1, p1, :cond_0

    sub-int/2addr v0, p0

    return v0

    :cond_0
    return p1
.end method

.method private validateNextAction(Landroid/graphics/Rect;)V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->getClockViewMarginTop()I

    move-result v0

    .line 60
    iget-boolean v1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->mMovingDown:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->mMovingDown:Z

    .line 62
    iget-object p0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    const-string p1, "move up!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->mMovingDown:Z

    if-nez v1, :cond_1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-gt v0, p1, :cond_1

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->mMovingDown:Z

    .line 65
    iget-object p0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    const-string p1, "move down!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected handleOnAlarm(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mBound:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 37
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 38
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 40
    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->validateNextAction(Landroid/graphics/Rect;)V

    .line 41
    iget-boolean p2, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->mMovingDown:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->moveDown(Landroid/graphics/Rect;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->moveUp(Landroid/graphics/Rect;)I

    move-result p2

    .line 43
    :goto_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnAlarm: range= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", moveDown= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->mMovingDown:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", move from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->getClockViewMarginTop()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->movePosition(Landroid/view/View;I)V

    return-void
.end method

.method protected handleSetup(Lcom/oneplus/aod/controller/IOpClockController;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 24
    invoke-interface {p1}, Lcom/oneplus/aod/controller/IOpClockController;->getMovingDistance()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->mMovingDistance:I

    .line 25
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInVerticalController;->mMovingDown:Z

    return-void
.end method
