.class public final Lcom/android/systemui/media/MediaHierarchyManager$1;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHierarchyManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaHierarchyManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setDozeAnimationRunning$p(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setDozeAnimationRunning$p(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$updateTargetState(Lcom/android/systemui/media/MediaHierarchyManager;)V

    return-void
.end method

.method public onStatePreChange(II)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1, p2}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setStatusbarState$p(Lcom/android/systemui/media/MediaHierarchyManager;I)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZILjava/lang/Object;)V

    return-void
.end method
