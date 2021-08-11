.class public Lcom/oneplus/aod/bg/OpAodLowLightMask;
.super Landroid/view/View;
.source "OpAodLowLightMask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;
    }
.end annotation


# instance fields
.field private mMaskGenerator:Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;

.field private mSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/bg/OpAodLowLightMask;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/bg/OpAodLowLightMask;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask;->mSize:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private stopThreadIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask;->mMaskGenerator:Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask;->mMaskGenerator:Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OpAodLowLightMask"

    const-string v1, "stopGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask;->mMaskGenerator:Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask;->mMaskGenerator:Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;

    :cond_0
    return-void
.end method


# virtual methods
.method public createMask()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpAodLowLightMask;->stopThreadIfNeeded()V

    new-instance v0, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;

    iget-object v1, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask;->mSize:Landroid/graphics/Point;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;-><init>(Lcom/oneplus/aod/bg/OpAodLowLightMask;Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask;->mMaskGenerator:Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onVisibilityChanged: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAodLowLightMask"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpAodLowLightMask;->stopThreadIfNeeded()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
