.class Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;
.super Ljava/lang/Object;
.source "OpGraphLight.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->createLottieDrawable()Lcom/airbnb/lottie/LottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpGraphLight"

    const-string p1, "LottieCancel."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    iget-object p1, p1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-virtual {p1}, Lcom/oneplus/anim/OpGraphLight;->isFrontCameraAnimOn()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LottieEnd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {v1}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1500(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isAnimOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpGraphLight"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1500(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1502(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)Z

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {p0, v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$100(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpGraphLight"

    const-string p1, "LottieRepeat."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpGraphLight"

    const-string p1, "LottieStart."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
