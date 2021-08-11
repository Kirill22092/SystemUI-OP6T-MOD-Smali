.class public abstract Lcom/oneplus/aod/bg/OpBasePaint;
.super Ljava/lang/Object;
.source "OpBasePaint.java"

# interfaces
.implements Lcom/oneplus/aod/bg/IBgPaint;


# instance fields
.field protected mHeight:I

.field protected mTag:Ljava/lang/String;

.field protected mView:Landroid/view/View;

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/bg/OpBasePaint;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string p1, "draw: mView is null!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public onSizeChanged(II)V
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mWidth:I

    iput p2, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mHeight:I

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v0, "reset"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setup(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    return-void
.end method
