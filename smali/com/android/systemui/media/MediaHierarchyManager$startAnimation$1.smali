.class final Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHierarchyManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaHierarchyManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getAnimator$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
