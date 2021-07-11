.class public interface abstract Lcom/oneplus/aod/bg/IBgPaint;
.super Ljava/lang/Object;
.source "IBgPaint.java"


# virtual methods
.method public burnInProtect()V
    .locals 0

    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract genAodDisappearAnimation()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public abstract onSizeChanged(II)V
.end method

.method public recover()V
    .locals 0

    return-void
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract setup(Landroid/view/View;)V
.end method

.method public userActivityInAlwaysOn()V
    .locals 0

    return-void
.end method
