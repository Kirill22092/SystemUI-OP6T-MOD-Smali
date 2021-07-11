.class Lcom/oneplus/aod/bg/OpSketchPaint$3;
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

    .line 632
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$3;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 635
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 637
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$3;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$1000(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$3;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$1100(Lcom/oneplus/aod/bg/OpSketchPaint;)[Landroid/graphics/Paint;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 639
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
