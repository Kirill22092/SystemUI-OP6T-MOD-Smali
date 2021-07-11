.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1$onKeyguardFadingAwayChanged$$inlined$apply$lambda$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationShadeDepthController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;->onKeyguardFadingAwayChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1$onKeyguardFadingAwayChanged$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;

    .line 225
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 227
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1$onKeyguardFadingAwayChanged$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$setKeyguardAnimator$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/animation/Animator;)V

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1$onKeyguardFadingAwayChanged$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    const/4 p1, 0x1

    invoke-static {p0, v0, p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method
