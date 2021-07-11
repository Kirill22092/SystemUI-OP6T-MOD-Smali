.class Lcom/oneplus/aod/bg/OpSketchPaint$1;
.super Ljava/lang/Object;
.source "OpSketchPaint.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 548
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    const-string v0, "alpha"

    .line 551
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 552
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "radius"

    .line 553
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 554
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$000()I

    move-result p1

    .line 556
    :goto_1
    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    .line 557
    iget-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$100(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$200(Lcom/oneplus/aod/bg/OpSketchPaint;)[Landroid/graphics/Path;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 559
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$300(Lcom/oneplus/aod/bg/OpSketchPaint;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;

    .line 562
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v3}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$200(Lcom/oneplus/aod/bg/OpSketchPaint;)[Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;->getDirection()I

    move-result v4

    aget-object v3, v3, v4

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    int-to-float v5, p1

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_3

    .line 567
    :cond_3
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$400(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p1, "OpSketchPaint#genSpreadBitmap"

    .line 569
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$400(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 571
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$500(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Canvas;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$500(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    int-to-float v6, p1

    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$500(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float v7, p1

    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$100(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 572
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$300(Lcom/oneplus/aod/bg/OpSketchPaint;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 573
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$500(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 574
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$500(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Canvas;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 575
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$500(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$600(Lcom/oneplus/aod/bg/OpSketchPaint;Landroid/graphics/Canvas;I)V

    .line 576
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$500(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Canvas;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$600(Lcom/oneplus/aod/bg/OpSketchPaint;Landroid/graphics/Canvas;I)V

    .line 577
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$500(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Canvas;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$600(Lcom/oneplus/aod/bg/OpSketchPaint;Landroid/graphics/Canvas;I)V

    .line 578
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$500(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Canvas;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$600(Lcom/oneplus/aod/bg/OpSketchPaint;Landroid/graphics/Canvas;I)V

    .line 579
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$500(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 581
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 585
    :cond_5
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_6

    .line 586
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    iget-object p1, p1, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v0, "spread update"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_6
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$1;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
