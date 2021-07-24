.class Lcom/oneplus/aod/OpAodLightEffectContainer$2;
.super Ljava/lang/Object;
.source "OpAodLightEffectContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodLightEffectContainer;->animateNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/aod/OpAodLightEffectContainer;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    const v3, 0x3e99999a    # 0.3f

    .line 176
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 177
    .local v1, "floatValue":F
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v2, v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 178
    const/high16 v0, 0x3f800000    # 1.0f

    .line 179
    .local v0, "alpha":F
    cmpg-float v2, v1, v3

    if-gtz v2, :cond_20

    .line 180
    div-float v0, v1, v3

    .line 185
    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v2, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 186
    return-void

    .line 182
    :cond_20
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1a

    .line 183
    const/high16 v2, 0x40000000    # 2.0f

    sub-float v0, v2, v1

    goto :goto_1a
.end method
