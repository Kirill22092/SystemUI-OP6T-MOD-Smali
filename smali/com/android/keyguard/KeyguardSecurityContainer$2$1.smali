.class Lcom/android/keyguard/KeyguardSecurityContainer$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSecurityContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecurityContainer$2;->onReady(Landroid/view/WindowInsetsAnimationController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$controller:Landroid/view/WindowInsetsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer$2;Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2$1;->val$controller:Landroid/view/WindowInsetsAnimationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2$1;->val$controller:Landroid/view/WindowInsetsAnimationController;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    return-void
.end method
