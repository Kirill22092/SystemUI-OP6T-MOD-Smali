.class Lcom/oneplus/anim/OpGraphLight$3;
.super Ljava/lang/Object;
.source "OpGraphLight.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/anim/OpGraphLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/anim/OpGraphLight;


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpGraphLight;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$3;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$3;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight;->access$400(Lcom/oneplus/anim/OpGraphLight;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight$3;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v1}, Lcom/oneplus/anim/OpGraphLight;->access$600(Lcom/oneplus/anim/OpGraphLight;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$3;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight;->access$000(Lcom/oneplus/anim/OpGraphLight;)Landroid/widget/ImageView;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$3;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight;->access$000(Lcom/oneplus/anim/OpGraphLight;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$3;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p0}, Lcom/oneplus/anim/OpGraphLight;->access$000(Lcom/oneplus/anim/OpGraphLight;)Landroid/widget/ImageView;

    move-result-object p0

    check-cast p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$100(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V

    :cond_0
    return-void
.end method
