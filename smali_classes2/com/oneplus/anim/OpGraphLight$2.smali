.class Lcom/oneplus/anim/OpGraphLight$2;
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

    .line 446
    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$2;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$2;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight;->access$400(Lcom/oneplus/anim/OpGraphLight;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight$2;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v1}, Lcom/oneplus/anim/OpGraphLight;->access$300(Lcom/oneplus/anim/OpGraphLight;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 450
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$2;->this$0:Lcom/oneplus/anim/OpGraphLight;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/anim/OpGraphLight;->access$500(Lcom/oneplus/anim/OpGraphLight;Z)V

    return-void
.end method
