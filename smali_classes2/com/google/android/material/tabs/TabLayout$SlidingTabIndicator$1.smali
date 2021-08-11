.class Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

.field final synthetic val$finalTargetLeft:I

.field final synthetic val$finalTargetRight:I


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->access$1200(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    invoke-static {v1, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->access$1300(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;)I

    move-result v2

    iget p0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    invoke-static {v2, p0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    return-void
.end method
