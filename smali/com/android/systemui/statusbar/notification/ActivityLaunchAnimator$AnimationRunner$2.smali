.class Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivityLaunchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->lambda$onAnimationStart$0([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

.field final synthetic val$iRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->val$iRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$1500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Z)V

    .line 232
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->val$iRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$1600(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
