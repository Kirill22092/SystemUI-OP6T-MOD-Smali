.class Lcom/oneplus/aod/bg/OpSketchPaint$2;
.super Ljava/lang/Object;
.source "OpSketchPaint.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/bg/OpSketchPaint;->getSketchAnimator()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/bg/OpSketchPaint;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/bg/OpSketchPaint;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 614
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    .line 615
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string p1, "spread end"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 595
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    .line 596
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    iget-object p1, p1, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v0, "spread start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$700(Lcom/oneplus/aod/bg/OpSketchPaint;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$800(Lcom/oneplus/aod/bg/OpSketchPaint;)I

    move-result p1

    if-lez p1, :cond_1

    .line 601
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    .line 602
    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$700(Lcom/oneplus/aod/bg/OpSketchPaint;)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    .line 603
    invoke-static {v1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$800(Lcom/oneplus/aod/bg/OpSketchPaint;)I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 601
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$402(Lcom/oneplus/aod/bg/OpSketchPaint;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 605
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$500(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Canvas;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$400(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 608
    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$900(Lcom/oneplus/aod/bg/OpSketchPaint;)V

    .line 609
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$2;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
