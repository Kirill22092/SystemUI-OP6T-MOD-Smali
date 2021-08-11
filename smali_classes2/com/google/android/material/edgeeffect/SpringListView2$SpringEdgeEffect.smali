.class Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SpringListView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringEdgeEffect"
.end annotation


# instance fields
.field private mReleased:Z

.field private final mVelocityMultiplier:F

.field final synthetic this$0:Lcom/google/android/material/edgeeffect/SpringListView2;


# direct methods
.method public constructor <init>(Lcom/google/android/material/edgeeffect/SpringListView2;Landroid/content/Context;F)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-direct {p0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->mReleased:Z

    iput p3, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->mVelocityMultiplier:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAbsorb(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    int-to-float p1, p1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->mVelocityMultiplier:F

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$300(Lcom/google/android/material/edgeeffect/SpringListView2;F)V

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$402(Lcom/google/android/material/edgeeffect/SpringListView2;F)F

    return-void
.end method

.method public onPull(FF)V
    .locals 3

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$500(Lcom/google/android/material/edgeeffect/SpringListView2;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$500(Lcom/google/android/material/edgeeffect/SpringListView2;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$608(Lcom/google/android/material/edgeeffect/SpringListView2;)I

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p2, p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$700(Lcom/google/android/material/edgeeffect/SpringListView2;Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;)V

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$400(Lcom/google/android/material/edgeeffect/SpringListView2;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->mVelocityMultiplier:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-static {p2, v0}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$402(Lcom/google/android/material/edgeeffect/SpringListView2;F)F

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$400(Lcom/google/android/material/edgeeffect/SpringListView2;)F

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/edgeeffect/SpringListView2;->setDampedScrollShift(F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->mReleased:Z

    return-void
.end method

.method public onRelease()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$402(Lcom/google/android/material/edgeeffect/SpringListView2;F)F

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$602(Lcom/google/android/material/edgeeffect/SpringListView2;I)I

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {v0, v1}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$300(Lcom/google/android/material/edgeeffect/SpringListView2;F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;->mReleased:Z

    return-void
.end method
