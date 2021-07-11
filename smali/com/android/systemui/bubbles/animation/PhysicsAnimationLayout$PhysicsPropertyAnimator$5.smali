.class Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhysicsAnimationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->startPathAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

.field final synthetic val$defaultSpringForceX:Landroidx/dynamicanimation/animation/SpringForce;

.field final synthetic val$defaultSpringForceY:Landroidx/dynamicanimation/animation/SpringForce;

.field final synthetic val$updatePhysicsAnims:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Runnable;)V
    .locals 0

    .line 1084
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    iput-object p2, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$defaultSpringForceX:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p3, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$defaultSpringForceY:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p4, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$updatePhysicsAnims:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1112
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$updatePhysicsAnims:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 23

    move-object/from16 v0, p0

    .line 1087
    iget-object v1, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 1089
    invoke-static {v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$500(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 1090
    invoke-static {v4}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$200(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 1091
    invoke-static {v5}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$600(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v5

    .line 1093
    iget-object v6, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v6}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$700(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v6

    const/4 v11, 0x0

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_0

    iget-object v6, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v6}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$700(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v6

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$defaultSpringForceX:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    move-result v6

    :goto_0
    move v8, v6

    .line 1094
    iget-object v6, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v6}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$800(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v6

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_1

    .line 1095
    iget-object v6, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v6}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$800(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v6

    goto :goto_1

    .line 1096
    :cond_1
    iget-object v6, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$defaultSpringForceX:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    move-result v6

    :goto_1
    move v9, v6

    const/4 v12, 0x0

    new-array v10, v12, [Ljava/lang/Runnable;

    const-wide/16 v6, 0x0

    .line 1087
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->animateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;FFJFF[Ljava/lang/Runnable;)V

    .line 1098
    iget-object v13, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    sget-object v14, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 1100
    invoke-static {v13}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$500(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)Landroid/view/View;

    move-result-object v15

    iget-object v1, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 1101
    invoke-static {v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$200(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 1102
    invoke-static {v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$600(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v17

    const-wide/16 v18, 0x0

    .line 1104
    iget-object v2, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$700(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v2

    cmpl-float v2, v2, v11

    if-ltz v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$700(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v2

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$defaultSpringForceY:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    move-result v2

    :goto_2
    move/from16 v20, v2

    .line 1105
    iget-object v2, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$800(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v2

    cmpl-float v2, v2, v11

    if-ltz v2, :cond_3

    .line 1106
    iget-object v0, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    invoke-static {v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->access$800(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)F

    move-result v0

    goto :goto_3

    .line 1107
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$defaultSpringForceY:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    move-result v0

    :goto_3
    move/from16 v21, v0

    new-array v0, v12, [Ljava/lang/Runnable;

    move/from16 v16, v1

    move-object/from16 v22, v0

    .line 1098
    invoke-virtual/range {v13 .. v22}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->animateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;FFJFF[Ljava/lang/Runnable;)V

    return-void
.end method
