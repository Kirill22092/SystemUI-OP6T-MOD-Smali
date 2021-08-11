.class public final Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MediaHierarchyManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHierarchyManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/android/systemui/media/MediaHierarchyManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$2;->cancelled:Z

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setAnimationPending$p(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getRootView$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getStartAnimation$p(Lcom/android/systemui/media/MediaHierarchyManager;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$2;->cancelled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$applyTargetStateIfNotAnimating(Lcom/android/systemui/media/MediaHierarchyManager;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$2;->cancelled:Z

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$$special$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setAnimationPending$p(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    return-void
.end method
