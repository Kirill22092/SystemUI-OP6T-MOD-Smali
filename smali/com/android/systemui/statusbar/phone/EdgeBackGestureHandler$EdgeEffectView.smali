.class Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;
.super Landroid/widget/ImageView;
.source "EdgeBackGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeEffectView"
.end annotation


# instance fields
.field mEffect:Lcom/oneplus/phone/OPEdgeEffect;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/content/Context;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    .line 622
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 623
    new-instance p1, Lcom/oneplus/phone/OPEdgeEffect;

    invoke-direct {p1, p2}, Lcom/oneplus/phone/OPEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 628
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 629
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/oneplus/phone/OPEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xb4

    .line 634
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$700(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1100(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I

    move-result v1

    :goto_0
    neg-int v1, v1

    .line 640
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I

    move-result v2

    div-int/lit8 v2, v2, 0x12

    neg-int v2, v2

    int-to-float v0, v0

    .line 644
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v0, v1

    int-to-float v1, v2

    .line 645
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 646
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    invoke-virtual {p0, p1}, Lcom/oneplus/phone/OPEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    nop

    :cond_1
    return-void
.end method

.method public onPull(F)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/oneplus/phone/OPEdgeEffect;->onPull(F)V

    .line 652
    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/oneplus/phone/OPEdgeEffect;->onRelease()V

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/oneplus/phone/OPEdgeEffect;->finish()V

    .line 673
    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setSize()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 662
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    .line 663
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/phone/OPEdgeEffect;->setSize(II)V

    return-void
.end method

.method public vibrate()V
    .locals 1

    const/4 v0, 0x1

    .line 678
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    return-void
.end method
