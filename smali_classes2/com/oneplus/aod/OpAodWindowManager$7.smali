.class Lcom/oneplus/aod/OpAodWindowManager$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpAodWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodWindowManager;->makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodWindowManager;Landroid/view/View;)V
    .locals 0

    .line 619
    iput-object p2, p0, Lcom/oneplus/aod/OpAodWindowManager$7;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 629
    iget-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager$7;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 630
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$7;->val$v:Landroid/view/View;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 622
    iget-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager$7;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 623
    iget-object p1, p0, Lcom/oneplus/aod/OpAodWindowManager$7;->val$v:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 624
    iget-object p0, p0, Lcom/oneplus/aod/OpAodWindowManager$7;->val$v:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->buildLayer()V

    :cond_0
    return-void
.end method
