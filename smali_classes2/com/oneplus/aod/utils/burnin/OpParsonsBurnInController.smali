.class public Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;
.super Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;
.source "OpParsonsBurnInController.java"


# instance fields
.field private mCenterCount:I

.field private mEndCount:I

.field private mMovingAlign:I

.field private mStartCount:I

.field private mStep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private logAlignment()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mMovingAlign:I

    const v0, 0x800003

    if-ne p0, v0, :cond_0

    const-string p0, "start"

    return-object p0

    :cond_0
    const v0, 0x800005

    if-ne p0, v0, :cond_1

    const-string p0, "end"

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "center horizontal"

    return-object p0

    :cond_2
    const-string p0, "no match"

    return-object p0
.end method

.method private movePosition(Landroid/view/View;Landroid/view/ViewGroup;II)V
    .locals 1

    check-cast p1, Lcom/oneplus/aod/views/IOpAodClock;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3, p4}, Lcom/oneplus/aod/views/IOpAodClock;->alignforBurnIn2(Landroid/view/ViewGroup;II)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private validateNextAction(Landroid/graphics/Rect;)V
    .locals 4

    iget p1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mMovingAlign:I

    const v0, 0x800005

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const v3, 0x800003

    if-eq p1, v3, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStep:I

    iget v0, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mEndCount:I

    if-ge p1, v0, :cond_1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStep:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    const-string v0, "align start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mMovingAlign:I

    iput v1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStep:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStep:I

    iget v0, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStartCount:I

    if-ge p1, v0, :cond_3

    add-int/2addr p1, v2

    iput p1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStep:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    const-string v0, "align center"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mMovingAlign:I

    iput v1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStep:I

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStep:I

    iget v3, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mCenterCount:I

    if-ge p1, v3, :cond_5

    add-int/2addr p1, v2

    iput p1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStep:I

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    const-string v2, "align end"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mMovingAlign:I

    iput v1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStep:I

    :goto_0
    return-void
.end method


# virtual methods
.method protected handleOnAlarm(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mBound:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->validateNextAction(Landroid/graphics/Rect;)V

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnAlarm: range= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", align= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->logAlignment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", step= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStep:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mMovingAlign:I

    iget v1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStep:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->movePosition(Landroid/view/View;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method protected handleSetup(Lcom/oneplus/aod/controller/IOpClockController;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->reset()V

    const/4 p1, 0x7

    iput p1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStartCount:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mCenterCount:I

    iput p1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mEndCount:I

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/aod/utils/burnin/OpBurnInBaseController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setup: start= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStartCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", center= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mCenterCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mEndCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mMovingAlign:I

    iput v0, p0, Lcom/oneplus/aod/utils/burnin/OpParsonsBurnInController;->mStep:I

    return-void
.end method
