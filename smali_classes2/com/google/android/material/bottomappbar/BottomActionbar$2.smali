.class Lcom/google/android/material/bottomappbar/BottomActionbar$2;
.super Ljava/lang/Object;
.source "BottomActionbar.java"

# interfaces
.implements Lcom/google/android/material/animation/TransformationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomActionbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/animation/TransformationCallback<",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomActionbar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onScaleChanged(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomActionbar$2;->onScaleChanged(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method public onScaleChanged(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$300(Lcom/google/android/material/bottomappbar/BottomActionbar;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getScaleY()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    return-void
.end method

.method public bridge synthetic onTranslationChanged(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomActionbar$2;->onTranslationChanged(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method public onTranslationChanged(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$400(Lcom/google/android/material/bottomappbar/BottomActionbar;)Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getHorizontalOffset()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$400(Lcom/google/android/material/bottomappbar/BottomActionbar;)Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$300(Lcom/google/android/material/bottomappbar/BottomActionbar;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$400(Lcom/google/android/material/bottomappbar/BottomActionbar;)Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$400(Lcom/google/android/material/bottomappbar/BottomActionbar;)Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$300(Lcom/google/android/material/bottomappbar/BottomActionbar;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$2;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$300(Lcom/google/android/material/bottomappbar/BottomActionbar;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getScaleY()F

    move-result v1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    return-void
.end method
