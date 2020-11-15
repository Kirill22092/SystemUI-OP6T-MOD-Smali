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
    .line 120
    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    const v5, 0x3e99999a    # 0.3f

    .line 122
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 123
    .local v1, "floatValue":F
    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v3, v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "sb":Ljava/lang/String;
    const-string v3, "OpAodLightEffectContainer"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    .local v0, "alpha":F
    cmpg-float v3, v1, v5

    if-gtz v3, :cond_38

    .line 128
    div-float v0, v1, v5

    .line 132
    :cond_32
    :goto_32
    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v3, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 133
    return-void

    .line 129
    :cond_38
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_32

    .line 130
    const/high16 v3, 0x40000000    # 2.0f

    sub-float v0, v3, v1

    goto :goto_32
.end method
