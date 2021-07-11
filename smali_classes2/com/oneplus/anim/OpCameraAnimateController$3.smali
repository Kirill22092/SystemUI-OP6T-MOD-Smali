.class Lcom/oneplus/anim/OpCameraAnimateController$3;
.super Ljava/lang/Object;
.source "OpCameraAnimateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/anim/OpCameraAnimateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/anim/OpCameraAnimateController;


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpCameraAnimateController;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$3;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController$3;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {v0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$500(Lcom/oneplus/anim/OpCameraAnimateController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController$3;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/anim/OpCameraAnimateController;->access$502(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z

    .line 302
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController$3;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$200(Lcom/oneplus/anim/OpCameraAnimateController;)Lcom/oneplus/anim/OpGraphLight;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight;->postShow()V

    :cond_0
    return-void
.end method
