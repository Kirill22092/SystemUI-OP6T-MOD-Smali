.class public Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;
.super Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;
.source "OpBurnInAlignController.java"


# instance fields
.field private mLastAlign:I

.field private mMovingAlign:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private movePosition(Landroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 2

    .line 49
    check-cast p1, Lcom/oneplus/aod/views/IOpAodClock;

    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1, p3}, Lcom/oneplus/aod/views/IOpAodClock;->alignforBurnIn(I)V

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    .line 56
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 59
    iput p3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private validateNextAction(Landroid/graphics/Rect;)V
    .locals 4

    .line 66
    iget p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->mMovingAlign:I

    const v0, 0x800005

    const v1, 0x800003

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const-string v3, "align center"

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v2

    goto :goto_1

    .line 68
    :cond_2
    iget p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->mLastAlign:I

    if-ne p1, v1, :cond_3

    .line 69
    iget-object p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    const-string v1, "align end"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    const-string v0, "align start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 86
    :goto_1
    iget p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->mMovingAlign:I

    iput p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->mLastAlign:I

    .line 87
    iput v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->mMovingAlign:I

    return-void
.end method


# virtual methods
.method protected handleOnAlarm(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mBound:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 38
    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->validateNextAction(Landroid/graphics/Rect;)V

    .line 40
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnAlarm: range= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", move from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->mLastAlign:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->mMovingAlign:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->mMovingAlign:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->movePosition(Landroid/view/View;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method protected handleSetup(Lcom/oneplus/aod/controller/IOpClockController;)V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->mLastAlign:I

    iput v0, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInAlignController;->mMovingAlign:I

    return-void
.end method
