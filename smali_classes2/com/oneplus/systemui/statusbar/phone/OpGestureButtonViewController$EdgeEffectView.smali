.class Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;
.super Landroid/widget/ImageView;
.source "OpGestureButtonViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeEffectView"
.end annotation


# instance fields
.field mEffect:Lcom/oneplus/phone/OPEdgeEffect;

.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/oneplus/phone/OPEdgeEffect;

    invoke-direct {p1, p2}, Lcom/oneplus/phone/OPEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/oneplus/phone/OPEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xb4

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {v1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {v1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)F

    move-result v1

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {v2}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {v1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {v1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    move-result v1

    :goto_0
    neg-int v1, v1

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {v2}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    move-result v2

    div-int/lit8 v2, v2, 0x12

    neg-int v2, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v0, v1

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    invoke-virtual {p0, p1}, Lcom/oneplus/phone/OPEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    nop

    :cond_1
    return-void
.end method

.method public onPull(F)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/oneplus/phone/OPEdgeEffect;->onPull(F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/oneplus/phone/OPEdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/oneplus/phone/OPEdgeEffect;->finish()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setSize()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-static {v1}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->access$500(Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController$EdgeEffectView;->mEffect:Lcom/oneplus/phone/OPEdgeEffect;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/phone/OPEdgeEffect;->setSize(II)V

    return-void
.end method

.method public vibrate()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    return-void
.end method
