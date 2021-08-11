.class Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;
.super Ljava/lang/Object;
.source "OpGraphLight.java"

# interfaces
.implements Lcom/airbnb/lottie/OnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->loadAndPlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

.field final synthetic val$showLastFrame:Z


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    iput-boolean p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->val$showLastFrame:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1000(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1000(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1200(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1102(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;I)I

    const-string p1, "debug.frontcamera.alpha"

    const/16 v0, 0x3e7

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-virtual {v0, p1}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->setAlpha(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    iget-object v0, p1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight;->access$1300(Lcom/oneplus/anim/OpGraphLight;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->setAlpha(I)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadAndPlay"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->val$showLastFrame:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " Alpha "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1000(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getAlpha()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpGraphLight"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {p1}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1000(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    iget-boolean p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->val$showLastFrame:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$1000(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    :cond_2
    return-void
.end method
