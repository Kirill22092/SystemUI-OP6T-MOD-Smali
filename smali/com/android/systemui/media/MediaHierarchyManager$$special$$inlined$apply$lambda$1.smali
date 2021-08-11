.class final Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHierarchyManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/systemui/media/MediaHierarchyManager;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator;Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$1;->$this_apply:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$updateTargetState(Lcom/android/systemui/media/MediaHierarchyManager;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getAnimationStartBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {v1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getTargetBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {v3}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getCurrentBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/media/MediaHierarchyManager;->access$interpolateBounds(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getCurrentBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->applyState$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;ZILjava/lang/Object;)V

    return-void
.end method
